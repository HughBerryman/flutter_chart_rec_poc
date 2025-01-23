# prompt

- We use an internal design system called MDS (Mineral Design System). It is built upon M3 (Google's Material Design System) and we aim to default to the Foundational Flutter Widget Classes. If we cannot find what we need for the above, we also use SyncFusion Flutter Library as well.
- Flutter setting

# pros

- simple vscode <> figma integration even with private SSO figma repos

# cons

- code doesn't compile right away and a number of code arch tweaks are needed to get it to compile
- saves pre-prompt in code base folder but doesn't have codebase to codebase pre-prompt snippet.
- slow figma file to code generation and even after waiting, times out for me a few times.
- discord channel doesn't seem active with only 2 channels.
- when generating a component with multiple variants, doesn't know to have as one single file variant
- if the component has MDS components, it doesn't make note of those and just generates a new component each time. -> maybe this will do better if we add in a new prompt.
  - If you open the file exporer or another vscode side tab nav while it is generating your design, it'll error.

# example error:

- "CodeParrot
  - From the design, lets create the following components:
  - LotCard: A card component displaying lot information including lot number, location, bag count, and element assays. Contains a.
  - Error generating response. Please try again."
