<!-- Congratulations on submitting a Wish! 🎉 -->

<!-- Please fill in the below placeholders -->

**[Insert URL to the wish here]**

**[Explain what this wish proposes and its potential impact]**

**[Insert pull request review(s) here]**

### By submitting this pull request, I confirm I've read and complied with all requirements 🖖

## Requirements for your pull request

- [ ] This is not a Draft/WIP pull request. All wishes should be well-defined when submitted.
- [ ] **Don't waste the community's time.** Do a good job, adhere to all the guidelines, and be responsive.
- [ ] **You have reviewed at least 1 other [open wish proposal](https://github.com/unameit10000000/wishlist/pulls?q=is%3Apr+is%3Aopen).**
	- Prioritize unreviewed PRs.
    - Focus on technical feasibility.
    - Suggest improvements or alternatives.
    - Simply commenting "looks good" does not count.
    - Comment here which wish(es) you reviewed.
- [ ] This pull request has a title in the format `Add Name of feature/tool`. It should not contain the word `Wish`.
    - ✅ `Add Cross-Platform Package Manager`
    - ✅ `Add Universal Code Translator`
    - ❌ `Add Cross-Platform Package Manager Wish`
    - ❌ `Add: Universal Code Translator`
    - ❌ `add Universal Code Translator`
    - ❌ `Propose Universal Code Translator`
    - ❌ `New feature idea`
    - ❌ `Update readme.md`
- [ ] Your wish entry should include:
    - A [funding indicator](#funding-status) badge.
    - A title matching the `Name of feature/tool` of both your PR title and _wish.md heading.
    - A clear, objective description. First character uppercase, ending with a period. Describe what it proposes, not vague aspirations.
    - ✅ `- 🏆 [Universal Package Manager](…) - Cross-platform tool for managing dependencies across different programming languages.`
    - ✅ `- 💰 [Code Translator](…) - Tool that automatically converts code between programming languages while preserving functionality.`
    - ❌ `- [Universal Package Manager](…) - A collection of ideas to make package management better.`
    - ❌ `- [Code Translator](…) - Various translation features and improvements.`
    - ❌ `- [Code Translator](…)`

- [ ] Your wish entry should be added at the bottom of the appropriate category.
- [ ] The title of your wish should be title-cased and the URL to your wish should link to the correct gist file.
	- Example: `- [Universal Package Manager](https://gist.github.com/username/gistid) - Cross-platform tool for managing dependencies across different programming languages.`
- [ ] Make the pull request.
    - There are two options:
        1. Copy this whole section into the pull request's description section and fill in the template
        2. Automatically get this template using the url below, and than fill in the template:
            - **Update** 'target-username', 'target-wishlist', 'your-username' in this url and paste it into the browser: `https://github.com/<target-username>/<target-wishlist>/compare/main...<your-username>:<target-wishlist>:main?template=wish.md`.
- [ ] If possible, label your pull request with `wish`.
- [ ] The suggested Wish complies with the below requirements👇

## Requirements for your Wish

### The _wish.md file

- [ ] Has the filename `_wish-title-of-wish.md`.
    - ✅ `_wish-awesome-ai-agent.md`
    - ✅ `_wish-improved-debugging.md`
    - ❌ `_Wish-Awesome-AI-Agent.md`
    - ❌ `_Wish-Improved-Debugging.md`
    - ❌ `_WishAwesomeAIAgent.md`
    - ❌ `_WishImprovedDebugging.md`
    - ❌ `wish-awesome-ai-agent.md`
    - ❌ `wish-improved-debugging.md`
- [ ] The heading title should be in [title case](https://capitalizemytitle.com/) format: # Wish Feature/Tool Name.
    - ✅ # Wish Awesome AI Agent
    - ✅ # Wish Improved Debugging
    - ❌ # Improved Debugging Wish
    - ❌ # wish improved debugging
    - ❌ # wish-improved-debugging
    - ❌ # WishImprovedDebugging
- [ ] Includes the [Wishlist badge](https://github.com/unameit10000000/wishlist/blob/main/wishlist.md#wishlist-badge).
- [ ] Uses an appropriate [status indicators](#status-indicators) badge.
- [ ] Specifies the type feature or tool and uses the correct template:
    - [`wish-propose-feature.md`] (Enhancement for existing platform).
    - [`wish-propose-tool.md`] (New standalone tool).
- [ ] Links to the relevant wish proposal file.
- [ ] Mentions related projects that are being developed as a result of the wish (if any). This can be updated later on.
- [ ] Include the author and maintainer of the Wish. Not to confuse with the authors and maintainers of related projects.
- [ ] Has a funding status (🏆💰💎🎁🌱⭐). See the [funding indicators](#funding-status) section.
- [ ] Specifies details about the funding status using the following formatting tips:

### The wish-propose-(feature/tool).md file

- [ ] **The wish propose filename must strictly follow the lowercase slug format `wish-propose-(feature/tool).md`. There are no exceptions. "wish" must always come first, and the name must be in lowercase with hyphens.**
    - ✅ `wish-propose-tool.md`
    - ✅ `wish-propose-feature.md`
    - ❌ `Wish-Propose-Feature.md`
    - ❌ `WishProposeFeature.md`
    - ❌ `_wish-propose-feature.md`
- [ ] Both feature and tool proposals include:
    - [ ] Summary.
    - [ ] Motivation.
        - A clear problem statement.
        - A clear desciption of usecases.
        - The expected outcome or goal.
    - [ ] Technical details (design/architecture).
    - [ ] Implementation details.
    - [ ] Advice for documentation.
    - [ ] Drawbacks explaining why we should not do this.
    - [ ] Alternatives or similar solutions (if any).
    - [ ] Unresolved Questions.

### General

- [ ] All wish files are gists and are not contained in a standard repository.
- [ ] Comments are enabled for all files.
- [ ] A Wish consists of at least the following 3 files:
    - `_wish.md`
    - `wish-propose-feature.md` OR `wish-propose-tool.md`
    - `licence`
- [ ] Has an appropriate license.
	- **We strongly recommend the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/), but any [Creative Commons license](https://creativecommons.org/choose/) will work.**
	- A code license like MIT, BSD, Apache, GPL, etc, is not acceptable. Neither are WTFPL and [Unlicense](https://unlicense.org).
	- Place or update a file named `license` or `LICENSE` in the gist root.
	- **Do not** add the license name, text, or a `Licence` section to the _wish.md file or other files.
- [ ] Has consistent formatting and proper spelling/grammar.
     
## Status Indicators

Each wish uses one of the status badges below.

| Badge | Description |
|:------|:------------|
| [![Status](https://img.shields.io/badge/Status-Concept-lightgrey)](https://github.com/project-user/project-name) | Just an idea, needs discussion |
| [![Status](https://img.shields.io/badge/Status-Discussion-white)](https://github.com/project-user/project-name) | Being reviewed by community |
| [![Status](https://img.shields.io/badge/Status-Accepted-lightblue)](https://github.com/project-user/project-name) | Ready for development |
| [![Status](https://img.shields.io/badge/Status-Development-blue)](https://github.com/project-user/project-name) | Actively being built |
| [![Status](https://img.shields.io/badge/Status-Partial-teal)](https://github.com/project-user/project-name) | Basic version working |
| [![Status](https://img.shields.io/badge/Status-Implemented-green)](https://github.com/project-user/project-name) | feature/tool is ready to use |
| [![Status](https://img.shields.io/badge/Status-On%20Hold-yellow)](https://github.com/project-user/project-name) | Temporarily paused |
| [![Status](https://img.shields.io/badge/Status-Stopped-red)](https://github.com/project-user/project-name) | Development discontinued |
| [![Status](https://img.shields.io/badge/Status-Rejected-orange)](https://github.com/project-user/project-name) | Not feasible or unwanted |

## Funding Indicators

Each wish includes one of the funding status badges below.

| Icon | Type | Description |
|:-----|:-----|:------------|
| 🏆 | Grants | "Available via [Provider - Grant Name/ID](link)" |
| 💰 | Bounties | "Available on [Platform](link) for [specific issues/features]" |
| 💎 | Sponsorship | "Sponsored by [Company/Organization](link)" |
| 🎁 | Donations | "Support us via [Platform1](link), [Platform2](link)" |
| 🌱 | Seeking Funding | "Looking for [type of funding] to support [specific goal]" |
| ⭐ | No Funds Needed | Leave empty if no funds are needed |

## Important note

Please review these requirements again from the top.

**Tip**: While checking off the requirements above, fork the [_wish.md](https://gist.github.com/unameit10000000/a660a242dcbef241f7b04e507d7c8431) template and start filling in the file. Choose a wish type (feature/tool) and fill in the corresponding template file. Update the names of these files accordingly and create a pull request!🚀
