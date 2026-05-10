# ssite Orchestration

This document defines the configuration and workflow for using `ssite` to orchestrate development and deployment in an `aipack-site` project.

## Overview

`ssite` is the high-level tool that bridges the gap between build artifacts (in `content/`) and the final distributed site (in `_site/`). It handles:
- Static asset management.
- Page framing with `_frame.html` templates.
- Reusable `part/` fragments for shared page sections.
- Development runner orchestration (watchers, servers).
- Deployment to cloud storage (e.g., S3).

## Configuration (ssite.toml)

The `ssite.toml` file at the project root defines the source, destination, and execution environment.

The project root must also contain the build wiring used by the runner:

- `package.json` with `build` and `watch` scripts.
- `scripts/build.js` as the build orchestrator.
- `lightningcss.config.js` at the project root, not under `css/` or `scripts/`.

The CSS runner should invoke the package script. The package script should invoke `scripts/build.js -w`, and `scripts/build.js` should invoke the root `lightningcss.config.js`.

### Source and Distribution

The `[source]` section defines where `ssite` looks for input and where it writes the final output.

```toml
[source]
content_dir = "content/"
dist_dir = "_site"
```

### Page Framing with `_frame.html`

`ssite` supports a frame model for pages that are authored as Markdown or HTML fragments. A frame is an `_frame.html` file that acts as the template for nearby content.

#### Eligible Pages

The following files are wrapped by a frame:

- `.md` files, after they are rendered to HTML.
- `.html` files that do not start with a top `<!doctype html>`.

An `.html` file that starts with `<!doctype html>` is treated as a complete standalone HTML document, so it is not wrapped by `_frame.html`.

#### Closest Frame Lookup

When a page needs a frame, `ssite` looks for the closest `_frame.html` file, starting in the page directory and then walking up parent directories inside `content_dir`.

For example:

```text
content/
  _frame.html
  index.md
  docs/
    _frame.html
    guide.md
```

In this structure:

- `content/index.md` is wrapped by `content/_frame.html`.
- `content/docs/guide.md` is first wrapped by `content/docs/_frame.html`.

This allows each section of a site to define its own local template while still sharing a broader site frame.

#### Cascading Frames

Frames can be cascaded. If an `_frame.html` file does not start with `<!doctype html>`, that frame is itself treated as an HTML fragment and is wrapped by the closest parent `_frame.html`.

For example:

```text
content/
  _frame.html
  docs/
    _frame.html
    guide.md
```

If `content/docs/_frame.html` does not start with `<!doctype html>`, the final output for `content/docs/guide.md` is built in this order:

1. Render `guide.md` to HTML.
2. Wrap the rendered page with `content/docs/_frame.html`.
3. Wrap that result with `content/_frame.html`.

The top-level site frame should usually start with `<!doctype html>` so the cascade ends in a complete HTML document.

#### Parts with `part/`

The `part/` pattern is used for reusable HTML fragments, commonly headers, footers, nav blocks, and other shared page sections. These fragments are intended to be pulled into frames so that common layout pieces are maintained in one place.

A typical structure is:

```text
content/
  _frame.html
  part/
    header.html
    footer.html
  docs/
    _frame.html
    guide.md
```

The root `_frame.html` can use shared parts such as `part/header.html` and `part/footer.html` to provide the site shell. Section frames, such as `content/docs/_frame.html`, can then add section-specific layout while still being wrapped by the parent frame.

Use these conventions for parts:

- Keep `part/` files as fragments, not complete HTML documents.
- Do not start shared parts with `<!doctype html>` unless the file is intentionally meant to be a standalone document.
- Put global parts under the root `content/part/`.
- Put section-specific parts next to the frame that owns them when a section needs different header, footer, nav, or sidebar content.
- Prefer frames plus parts for shared layout instead of duplicating headers and footers across pages.

Together, cascading `_frame.html` files and `part/` fragments provide a lightweight template system:

- Pages provide the unique content.
- Local frames provide section layout.
- Parent frames provide the full document shell.
- Parts provide reusable header, footer, and shared UI fragments.

### Development Runners

Runners allow `ssite` to manage background processes for development.

- **CSS Runner**: Runs `npm run watch`, which starts the root `scripts/build.js -w` orchestrator. That orchestrator must call the root `lightningcss.config.js` for CSS builds.
- **WebDev Runner**: Serves the distribution directory locally.

```toml
[runner.css]
cmd = "npm"
watch_args = ["run", "watch"]

[runner.webhere]
run_on = ["Dev"]
cwd = "./_site"
cmd = "webdev"
args = ["-l", "--public"]
```

Do not point the CSS runner directly at Lightning CSS. Keep the watcher and build sequencing in `scripts/build.js` so the same wiring is used by `npm run build` and `npm run watch`.

### Deployment (Publish)

The `[publish]` section contains the credentials and target for deployment.

```toml
[publish]
bucket_type = "s3"
bucket_name = "jc-site-aipack-ai"
bucket_cred_type = "profile"
bucket_cred_profile = "jc-user"
```

## Development Workflow

1. **Start Watch Mode**: Run the development command (e.g., `ssite dev`).
2. `ssite` starts the defined runners.
3. The CSS runner starts `npm run watch`, which maps to the root `scripts/build.js -w`.
4. The build script delegates JS/TS watching to Rolldown and rebuilds CSS by running the root `lightningcss.config.js`.
5. The web runner serves the `_site/` directory.
6. As files change in `src/` or `css/`, they are built into `content/`.
7. `ssite` detects changes in `content/` and updates `_site/`.

## Deployment Workflow

1. **Production Build**: Execute `npm run build` so `scripts/build.js` runs Rolldown and the root `lightningcss.config.js`, ensuring all artifacts in `content/` are up to date.
2. **Publish**: Run `ssite publish`.
3. `ssite` synchronizes the `_site/` directory with the configured cloud bucket.
