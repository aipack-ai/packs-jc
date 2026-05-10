# ssite Orchestration

This document defines the configuration and workflow for using `ssite` to orchestrate development and deployment in an `aipack-site` project.

## Overview

`ssite` is the high-level tool that bridges the gap between build artifacts (in `content/`) and the final distributed site (in `_site/`). It handles:
- Static asset management.
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
