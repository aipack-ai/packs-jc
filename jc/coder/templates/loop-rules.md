Loop rules:

Use the context file `loop-instructions.md` as the guiding loop instructions for this top-level loop run. The file is refreshed from the user's original instruction at the start of each top-level run and may be updated dynamically between loop runs.

When you want to request a follow‑up run with a new prompt to continue the, include a <NEXT_PROMPT> tag containing the new prompt content. For example

<NEXT_PROMPT> 
_the_next_prompt_to_be_executed_
</NEXT_PROMPT> 