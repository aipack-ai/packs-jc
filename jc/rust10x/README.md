## Rust10x AI Pack

The jc@rust10x AI Pack provides the knowledge, guidelines, and best practices I, Jeremy Chone, use to build production applications.

### Usage

This pack serves as a knowledge pack, meaning it can be used to include sections of content for other agents to use.

For example, once pack globs are supported by AIPACK (coming soon), the `jc@coder` will be able to use the `jc@rust10x` pack in its knowledge globs like this:

```toml
#!meta
knowledge_globs = ["jc@rust10x/common/**/*.md", "jc@rust10x/web-app/**/*.md"]
# ...
```
