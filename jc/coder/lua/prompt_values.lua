local prompt_template = [[
```toml
#!meta - parametric agent block

# knowledge_globs = ["/some/path/to/knowledge.md"]

# base_dir = "src"

# context_globs = ["**/*.rs", "**/*.html", "**/*.js", "**/*.css"] # By default most language extension

# working_globs       = ["**/mod.rs"]
# working_concurrency = true
# input_concurrency   = 6

model_aliases = {pro = "claude-3-7-sonnet-latest", high = "o3-mini-high", low = "o3-mini-low", cheap = "gpt-4o-mini", fast = "gemini-2.0-flash"}

# If not set, will use config.toml defined model
# model = "pro"

# To see doc, type "Show Doc" and then press `r` in the aip terminal
```



====
> Ask your coding questions above the `====` delimiter, and press `r` in the terminal to replay.
>
> `coder` Agent parameters supported for this `coder` agent:
>
> `knowledge_globs`     - Allows you to add knowledge files to the context. These can be absolute or even refer to other packs, 
>                         e.g., `["my-coding-guideline/**/*.md", "jc@rust10x/common/**/*.md"]`
>
> `base_dir`            - If activated in the TOML parameter section above, the AI will read and update the appropriate file.
>
> `context_globs`       - Customize your context globs relative to `base_dir` to decide which files are added to the context.
>                         If not defined, and `base_dir` is defined, the defaults are shown above.
>                         These files will be described to the AI as `User's context files`.
>                         Narrowing the scope is better (cost- and quality-wise, as it allows the model to focus on what matters).
>
> `working_globs`       - Customize your working globs that represent the working files. 
>                         When this is set, this allows the context_globs files to be explicitly cached (with Claude)
>                         and gives another opportunity to focus the AI on these files and treat the context_globs as just context.
>
> `working_concurrency` - When set to `true` and `working_globs` is defined, this will work on each working file concurrently, 
>                         following the `input_concurrency` set in this section or in the workspace or aipack-base config.toml.
>
> `model_aliases`       - You can create your own alias names (which will override those defined in `.aipack/config.toml`).
>                         Top coder: "o3-mini-high" (aliased to 'high'), Fastest/~Cheapest: "gemini-2.0-flash-001".
>
> `model`               - Provide a direct model name or a model alias to specify which model this coder agent should use.
>
> Lines starting with `>` above the `====` or in the first lines just below the `====` will be ignored in the AI conversation.
> Here, give your instructions, questions, and more. By default, the code will be below.
>
> Feel free to remove these `> ` lines, as they are just for initial documentation and have no impact on AI instructions.
>
> You can ask, "Can you explain the coder agent parameters?" to get some documentation about it.
>
> Happy coding!
]]

return {
  prompt_template = prompt_template
}