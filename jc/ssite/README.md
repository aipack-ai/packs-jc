# Site Creation Standards

## Overview

This set of documents defines the standards and best practices for creating and maintaining sites `ssite` (rust cli) and other best practices. This architecture is built on a "DOM-first" and "Native-first" philosophy, leveraging modern browser primitives and a high-performance, minimal toolchain such as `rolldown`, `lightningcss`.

### Core Goals

- **Performance**: Minimal overhead using modern bundling tools like `rolldown` and `lightningcss`.
- **Native-first**: Use native Web Components and DOM APIs via `dom-native`.
- **Simplicity**: Clear separation between source, content, and distribution.
- **Maintainability**: Consistent project structure and naming conventions.

## Documentation Map

- **[guide-structure.md](guide-structure.md)**: Project Directory Structure
  Overview of the root layout, the dual role of the `content/` directory, and git management.

- **[guide-toolchain.md](guide-toolchain.md)**: Build Toolchain
  Configuration for `rolldown`, `lightningcss`, and the `scripts/build.js` orchestrator.

- **[guide-dom-native.md](guide-dom-native.md)**: dom-native Integration
  Standards for `BaseHTMLElement`, custom element naming, and event/hub binding.

- **[guide-css.md](guide-css.md)**: CSS Architecture
  Standards for modular CSS, design tokens, and nesting.

- **[guide-ssite.md](guide-ssite.md)**: ssite Orchestration
  Deployment and local development workflows using `ssite.toml`.

- **[guide-cdk.md](guide-cdk.md)**: Infrastructure as Code (AWS CDK)
  Infrastructure provisioning for S3, CloudFront, and Route 53.

## Runtime Requirement

- **Node.js**: 25.9 or higher (required for modern ESM and build features).
