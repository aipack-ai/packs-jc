# zmapr

`zmapr` is a Rust library for turning local or web content into AI-oriented context. Its main entry point, [`process_content`](fn.process_content.html), accepts [`ProcessContentOptions`](struct.ProcessContentOptions.html) and starts an asynchronous workflow. The returned [`ProcessContentHandle`](struct.ProcessContentHandle.html) lets callers observe progress and live state, then collect a [`ProcessContentOutput`](struct.ProcessContentOutput.html) with artifact paths, item states, and statistics.

Configure local or web sources, fetch formats and selection filters, web crawl depth, stage-specific models, and resume or concurrency behavior through the options API. Stages run in a fixed order: Fetch, Sanitize, then Map.

## Stages

- **Fetch** retrieves content from a local path or an HTTP(S) source. It supports file selection, HTML conversion, and web crawling options such as maximum depth and `llms.txt` discovery.
- **Sanitize** optionally applies AI-based sanitization to fetched content, using the configured model and either built-in instructions or a custom prompt.
- **Map** optionally analyzes processed content with AI and creates a structured [`ContentMap`](struct.ContentMap.html) with file and folder guidance.

Stages can be combined or run individually. A disabled stage passes the current artifacts through unchanged. If Fetch is disabled while a later stage is enabled, the workflow uses a valid prior Fetch cache.

## Workflow

Use [`process_content`](fn.process_content.html) to start the workflow. Sources are represented by [`ContentSource`](enum.ContentSource.html), and [`FetchFormat`](enum.FetchFormat.html) configures how fetched HTML is stored. The workflow handle provides progress notifications, read-only access to live state, and the final output after processing completes.

The returned [`ProcessContentHandle`](struct.ProcessContentHandle.html) exposes:

- Progress through [`ProgressRx`](struct.ProgressRx.html)
- Live state through [`ProcessQuery`](struct.ProcessQuery.html)
- Final results through [`ProcessContentHandle::wait_output`](struct.ProcessContentHandle.html#method.wait_output)

Use [`ProcessStateSnapshot`](struct.ProcessStateSnapshot.html) for a point-in-time view.

## Example

This example fetches local Rust source files and waits for the workflow output. Optional Sanitize and Map stages are disabled by default.

```rust
use zmapr::{process_content, ProcessContentOptions};

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Configure the workflow.
    let options = ProcessContentOptions::new("target/zmapr").with_source("src");

    // Start the workflow.
    let handle = process_content(options).await?;

    // Read current query statistics.
    let query = handle.query();
    let stats_task = tokio::spawn(async move {
        tokio::time::sleep(std::time::Duration::from_millis(100)).await;
        let stats = query.stats();
        println!(
            "Fetch: {} of {} registered items completed",
            stats.fetch.completed,
            stats.fetch.registered_items()
        );
    });

    // Wait for completion.
    let output = handle.wait_output().await?;
    stats_task.await?;
    println!("Fetched content into {}", output.content_root);

    Ok(())
}
```

To enable both AI stages, configure a model along with the source:

```rust
let options = ProcessContentOptions::new("target/zmapr")
    .with_source("src")
    .with_sanitize(true)
    .with_map(true)
    .with_model("gpt-6-luna");
```

## Mapping

Mapped content is represented by [`ContentMap`](struct.ContentMap.html). The mapping API also provides AI client selection through [`MaprAiClient`](trait.MaprAiClient.html) and [`MaprAiSelector`](enum.MaprAiSelector.html), prompt construction, and journal support. Use [`set_active_ai_selector`](fn.set_active_ai_selector.html) to choose the active client selector.

## Errors

Fallible public APIs use the crate’s [`Result`](type.Result.html) alias and [`Error`](enum.Error.html) type.

## API reference

The source content lists the following public API items. Individual Rust signatures are not included in the provided content.

### Structs

- [`ContentMap`](struct.ContentMap.html) — In-memory guidance for source files and directories.
- [`ContentMapDocument`](struct.ContentMapDocument.html) — Serialized document written to `content-map.json`, carrying provenance metadata.
- [`FileMapEntry`](struct.FileMapEntry.html) — Guidance generated for an individual source file.
- [`FileMapMetadata`](struct.FileMapMetadata.html) — Provenance information associated with a mapped source file.
- [`FinalStats`](struct.FinalStats.html)
- [`FolderMapEntry`](struct.FolderMapEntry.html) — Guidance generated for a source directory.
- [`GenaiAiClient`](struct.GenaiAiClient.html) — Real genai-backed AI client placeholder.
- [`ItemId`](struct.ItemId.html) — Identifies an item registered in a process run.
- [`ItemStageState`](struct.ItemStageState.html) — Recorded status and output details for one item stage.
- [`ItemState`](struct.ItemState.html) — Identity, source information, and stage states for one process item.
- [`JournalAppender`](struct.JournalAppender.html) — Append-only writer for journal records.
- [`JournalFileRecord`](struct.JournalFileRecord.html) — Journal record for the mapping result of one file.
- [`JournalFolderRecord`](struct.JournalFolderRecord.html) — Journal record for the mapping result of one folder.
- [`JournalHeader`](struct.JournalHeader.html) — Identifies the model, prompt, and artifact root used for a journal.
- [`JournalReuseIndex`](struct.JournalReuseIndex.html) — Successful file and folder entries recovered from a compatible journal.
- [`LocalContentSource`](struct.LocalContentSource.html) — A local file or directory from which Fetch selects content.
- [`MaprAiResponse`](struct.MaprAiResponse.html) — Result of an AI completion call containing the generated text and optional token usage.
- [`ProcessContentHandle`](struct.ProcessContentHandle.html) — Provides progress observation and final output for a running workflow.
- [`ProcessContentOptions`](struct.ProcessContentOptions.html) — Configures the Fetch, Sanitize, and Map stages of a content-processing workflow. The stages run in that order. A disabled stage passes the current artifacts through unchanged.
- [`ProcessContentOutput`](struct.ProcessContentOutput.html) — The successful result of a completed content-processing workflow.
- [`ProcessQuery`](struct.ProcessQuery.html) — Provides read-only access to authoritative in-memory workflow state.
- [`ProcessStateSnapshot`](struct.ProcessStateSnapshot.html) — A point-in-time copy of workflow state and retained progress history.
- [`ProgressRx`](struct.ProgressRx.html) — Receives progress notifications from one running workflow.
- [`ProgressStats`](struct.ProgressStats.html)
- [`ProgressUpdate`](struct.ProgressUpdate.html) — A progress event and its associated workflow statistics snapshot.
- [`StageFinal`](struct.StageFinal.html)
- [`StageProgress`](struct.StageProgress.html)
- [`StubAiClient`](struct.StubAiClient.html) — Deterministic stub AI client for offline testing.
- [`WebContentSource`](struct.WebContentSource.html) — A web location at which Fetch begins crawling.

### Enums

- [`ContentSource`](enum.ContentSource.html) — A typed description of a local or web source for Fetch.
- [`Error`](enum.Error.html) — Error handling.
- [`FetchFormat`](enum.FetchFormat.html) — Selects the representation used for fetched content. Serde serializes and deserializes variants using snake_case names.
- [`ItemStatus`](enum.ItemStatus.html) — Lifecycle status of a processing stage for an item.
- [`JournalRecord`](enum.JournalRecord.html) — A header or result record in the newline-delimited journal format.
- [`JournalRecordStatus`](enum.JournalRecordStatus.html) — Indicates whether a journal operation produced a reusable entry.
- [`MaprAiSelector`](enum.MaprAiSelector.html) — Selector determining which AI client implementation to instantiate.
- [`ProcessStage`](enum.ProcessStage.html)
- [`ProgressEvent`](enum.ProgressEvent.html) — A notification describing a workflow or stage progress event.
- [`SanitizePrompt`](enum.SanitizePrompt.html) — Sanitize prompt.
- [`StageStatus`](enum.StageStatus.html)

### Constants

- [`CURRENT_JOURNAL_VERSION`](constant.CURRENT_JOURNAL_VERSION.html) — Version number written in newly created journal headers.
- [`PROMPT_VERSION`](constant.PROMPT_VERSION.html) — Version of the embedded content-map prompt.

### Traits

- [`MaprAiClient`](trait.MaprAiClient.html) — Trait abstracting AI completion calls for content mapping.

### Functions

- [`compute_journal_fingerprint`](fn.compute_journal_fingerprint.html) — Computes the journal fingerprint for a model, prompt version, and artifact root.
- [`derive_folders`](fn.derive_folders.html)
- [`empty_journal`](fn.empty_journal.html) — Truncates an existing journal file without removing it.
- [`get_active_ai_selector`](fn.get_active_ai_selector.html) — Returns the process-wide selector, or the default real-client selector.
- [`hash_file_bytes`](fn.hash_file_bytes.html)
- [`hash_folder`](fn.hash_folder.html)
- [`init_or_load_journal`](fn.init_or_load_journal.html) — Loads a compatible journal and opens its appender, creating a fresh journal when needed.
- [`is_text_mappable`](fn.is_text_mappable.html)
- [`load_journal`](fn.load_journal.html) — Loads reusable entries when the journal matches the expected fingerprint and version.
- [`parse_file_info`](fn.parse_file_info.html) — Parses the first fenced block into a content-map entry.
- [`process_content`](fn.process_content.html) — Runs a content-processing workflow configured by [`ProcessContentOptions`](struct.ProcessContentOptions.html) and returns a handle for observing progress and collecting the result.
- [`publish_content_map`](fn.publish_content_map.html)
- [`remove_journal`](fn.remove_journal.html) — Removes a journal file if it exists.
- [`render_file_prompt`](fn.render_file_prompt.html) — Renders the content-map prompt for a source file.
- [`select_active_ai_client`](fn.select_active_ai_client.html) — Selects a client using the active process-wide selector.
- [`select_ai_client`](fn.select_ai_client.html) — Selects a client using `selector`, or the active process-wide selector when absent.
- [`set_active_ai_selector`](fn.set_active_ai_selector.html) — Sets or clears the process-wide selector used by default client selection.

### Type aliases

- [`BoxFuture`](type.BoxFuture.html) — Sendable boxed future returned by AI completion clients.
- [`Result`](type.Result.html) — Result type returned by fallible crate operations.
