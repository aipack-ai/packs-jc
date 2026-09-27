# List of all items

Crate: [refinr](../refinr/index.html), version 0.0.1

## Structs

- [ContentMap](struct.ContentMap.html)
- [ContentMapDocument](struct.ContentMapDocument.html)
- [FileMapEntry](struct.FileMapEntry.html)
- [FileMapMetadata](struct.FileMapMetadata.html)
- [FinalStats](struct.FinalStats.html)
- [FolderMapEntry](struct.FolderMapEntry.html)
- [GenaiAiClient](struct.GenaiAiClient.html)
- [ItemId](struct.ItemId.html)
- [ItemStageState](struct.ItemStageState.html)
- [ItemState](struct.ItemState.html)
- [JournalAppender](struct.JournalAppender.html)
- [JournalFileRecord](struct.JournalFileRecord.html)
- [JournalFolderRecord](struct.JournalFolderRecord.html)
- [JournalHeader](struct.JournalHeader.html)
- [JournalReuseIndex](struct.JournalReuseIndex.html)
- [LocalContentSource](struct.LocalContentSource.html)
- [MaprAiResponse](struct.MaprAiResponse.html)
- [ProcessContentHandle](struct.ProcessContentHandle.html)
- [ProcessContentOptions](struct.ProcessContentOptions.html)
- [ProcessContentOutput](struct.ProcessContentOutput.html)
- [ProcessQuery](struct.ProcessQuery.html)
- [ProcessStateSnapshot](struct.ProcessStateSnapshot.html)
- [ProgressRx](struct.ProgressRx.html)
- [ProgressStats](struct.ProgressStats.html)
- [ProgressUpdate](struct.ProgressUpdate.html)
- [StageFinal](struct.StageFinal.html)
- [StageProgress](struct.StageProgress.html)
- [StubAiClient](struct.StubAiClient.html)
- [WebContentSource](struct.WebContentSource.html)

## Enums

- [ContentSource](enum.ContentSource.html)
- [Error](enum.Error.html)
- [FetchFormat](enum.FetchFormat.html)
- [ItemStatus](enum.ItemStatus.html)
- [JournalRecord](enum.JournalRecord.html)
- [JournalRecordStatus](enum.JournalRecordStatus.html)
- [MaprAiSelector](enum.MaprAiSelector.html)
- [ProcessStage](enum.ProcessStage.html)
- [ProgressEvent](enum.ProgressEvent.html)
- [SanitizePrompt](enum.SanitizePrompt.html)
- [StageStatus](enum.StageStatus.html)

## Traits

- [MaprAiClient](trait.MaprAiClient.html)

## Functions

- [compute_journal_fingerprint](fn.compute_journal_fingerprint.html)
- [derive_folders](fn.derive_folders.html)
- [empty_journal](fn.empty_journal.html)
- [get_active_ai_selector](fn.get_active_ai_selector.html)
- [hash_file_bytes](fn.hash_file_bytes.html)
- [hash_folder](fn.hash_folder.html)
- [init_or_load_journal](fn.init_or_load_journal.html)
- [is_text_mappable](fn.is_text_mappable.html)
- [load_journal](fn.load_journal.html)
- [parse_file_info](fn.parse_file_info.html)
- [process_content](fn.process_content.html)
- [publish_content_map](fn.publish_content_map.html)
- [remove_journal](fn.remove_journal.html)
- [render_file_prompt](fn.render_file_prompt.html)
- [select_active_ai_client](fn.select_active_ai_client.html)
- [select_ai_client](fn.select_ai_client.html)
- [set_active_ai_selector](fn.set_active_ai_selector.html)

## Type Aliases

- [BoxFuture](type.BoxFuture.html)
- [Result](type.Result.html)

## Constants

- [CURRENT_JOURNAL_VERSION](constant.CURRENT_JOURNAL_VERSION.html)
- [PROMPT_VERSION](constant.PROMPT_VERSION.html)
