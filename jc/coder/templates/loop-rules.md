# Loop rules

Use the context file `loop-instructions.md` as the guiding loop instructions for this top-level loop run. The file is refreshed from the user's original instruction at the start of each top-level run and may be updated dynamically between loop runs.

When you want to request a follow‑up run with a new prompt to continue the, include a <NEXT_PROMPT> tag containing the new prompt content. For example

<NEXT_PROMPT> 
_the_next_prompt_to_be_executed_
</NEXT_PROMPT> 

IMPORTANT - Everytime you need to communicate or ask question, make sure to add to the chat.md so that the next run can get it from there. 

IMPORTANT - The chat.md is the way you get new questions and you can answer. All is separated by `## ...`

IMPORTANT - when implementing a plan.md, for next_prompt give back `following plan.md, implement next step` until all steps are done.


