<!-- Congratulations on creating a Wishlist! 🎉 -->

<!-- Please fill in the below placeholders -->

**[Insert URL to the wishlist here]**

**[Explain what this list is about and why it should be included here]**

**[Insert pull request review(s) here]**

### By submitting this pull request, I confirm I've read and complied with all requirements 🖖

## Requirements for your pull request

- [ ] This is not a Draft/WIP pull request. All submissions should be complete when submitted.
- [ ] **Don't waste the community's time.** Do a good job, adhere to all the guidelines, and be responsive.
- [ ] **You have reviewed at least 1 other [open proposal](https://github.com/unameit10000000/wishlist/pulls?q=is%3Apr+is%3Aopen).**
    - Prioritize unreviewed PRs
    - Comment on technical feasibility
    - Suggest improvements or alternatives
    - Simply commenting "looks good" does not count
    - Comment here which proposal(s) you reviewed
- [ ] This pull request has a title in the format `Add Name`. Platform wishlists are meant to consist of a collection of features. Domain wishlists  are for collecting domain-related tool wishes.
    - ✅ `Add Swift` (Existing platform list containing related features)
    - ✅ `Add Google Cloud` (Existing platform list containing related features)
    - ✅ `Add Game Development` (Domain list with related tools proposals)
    - ❌ `Update readme.md`
    - ❌ `Add Swift Wishlist`
    - ❌ `add Swift`
    - ❌ `Adding Swift`
- [ ] Your entry should include a clear, objective description. First character uppercase, ending with a period. Describe what it is, not what the list contains.
    - ✅ `- [Swift](…) - General-purpose programming language built using a modern approach to safety and performance.`
    - ✅ `- [Google Cloud](…) - Suite of cloud computing services running on Google's infrastructure.`
    - ❌ `- [Swift](…) - A collection of tools and resources for Swift development.`
    - ❌ `- [Google Cloud](…) - Various GCP features and improvements.`
    - ❌ `- [Google Cloud](…)`
- [ ] Your entry should be added at the bottom of the appropriate category.
- [ ] The title of your entry should be title-cased and the URL to your list should end in `#readme`.
	- Example: `- [Wishlist](https://github.com/unameit10000000/wishlist#readme) - The Pre-Awesome List.`
- [ ] Make the pull request:
    - There are two options:
        1. Copy this whole section into the pull request's description section and fill in the template
        2. Automatically get this template using the url below, and than fill in the template:
        - **Update** 'target-username', 'target-wishlist', 'your-username' in this url and paste it into the browser: `https://github.com/<target-username>/<target-wishlist>/compare/main...<your-username>:<target-wishlist>:main?template=wishlist.md`
- [ ] If possible, label your pull request with `wishlist`
- [ ] The suggested Wishlist complies with the below requirements👇


## Requirements for your Wishlist

### Format & structure

- [ ] The default branch should be named [`main`, not `master`](https://www.zdnet.com/article/github-to-replace-master-with-alternative-term-to-avoid-slavery-references/).
- [ ] **The repo name must strictly follow the lowercase slug format `wishlist-name-of-(platform/domain)`. There are no exceptions. "wishlist" must always come first, and the name must be in lowercase with hyphens.**
- [ ] There are to distinct repository types:
    - Platforms: `wishlist-name-of-platform` (feature proposals)
    - Domains: `wishlist-name-of-domain` (tool proposals)
    - For example:
        - ✅ `wishlist-swift`
        - ❌ `swift-wishlist`
        - ✅ `wishlist-game-development`
        - ❌ `game-development-wishlist`
        - ❌ `wishlist-Swift`
        - ❌ `WishlistGameDev`
- [ ] The repo should have `wishlist` as a [GitHub topic](https://help.github.com/articles/about-topics). I encourage you to add more relevant topics.
- [ ] Has [contribution guidelines](https://github.com/unameit10000000/wishlist/blob/main/manifesto.md#include-contribution-guidelines).
	- The file should be named `contributing.md`. The casing is up to you.
	- It can optionally be linked from the readme in a dedicated section titled `Contributing`, positioned at the top or bottom of the main content.
	- The section should not appear in the Table of Contents.
- [ ] All non-important but necessary content (like extra copyright notices, hyperlinks to sources, pointers to expansive content, etc) should be grouped in a `Footnotes` section at the bottom of the readme. The section should not be present in the Table of Contents.
- [ ] Has consistent formatting and proper spelling/grammar.
**Please review these requirements again from the top.**

### Content

- [ ] The heading title should be in [title case](https://capitalizemytitle.com/) format and include both "Wishlist" and the platform/domain name in the either order. However it is adviced to keep the strict order of the repo name, to keep things clean:
    - ✅ # Wishlist Swift (best)
    - ✅ # Swift Wishlist (not matching order of repo name)
    - ✅ # Wishlist Game Development (best)
    - ✅ # Game Development Wishlist (not matching order of repo name)
    - ❌ # wishlist-swift (Must be in title case)
    - ❌ # SwiftWishlist (No combining words)
- [ ] Includes the [Wishlist badge](https://github.com/unameit10000000/wishlist/blob/main/wishlist.md#wishlist-badge)
	- Should be placed on the right side of the readme heading.
		- Can be placed centered if the list has a centered graphics header
    - Should link back to this list.
- [ ] Includes a succinct description of the platform or domain at the top of the readme:
    - ✅ `Mobile operating system for Apple phones and tablets.`
    - ✅ `Cross-platform cloud infrastructure provider.`
    - ❌ `Collection of feature requests for iOS.`
    - ❌ `Various wishes for cloud platforms.`
- [ ] Not a duplicate. Please search for existing submissions.
- [ ] Does not contain items that are unmaintained, has archived repo, deprecated, or missing docs. If you really need to include such items, they should be in a separate Markdown file.
- [ ] Includes a project logo/illustration whenever possible.
	- Either centered, fullwidth, or placed at the top-right of the readme.
	- The image should link to the project website or any relevant website.
	- **The image should be high-DPI.** Set it to a maximum of half the width of the original image.
	- Don't include both a title saying `Wishlist X` and a logo with `Wishlist X`. You can put the header image in a `#` (Markdown header) or `<h1>`.
- [ ] Entries have a description, unless the title is descriptive enough by itself. It rarely is though.
- [ ] Has a Table of Contents named `Contents`
	- Should be named `Contents`, not `Table of Contents`.
	- Should be the first section in the list.
    - Should only have one level of [nested lists](https://commonmark.org/help/tutorial/10-nestedLists.html), preferably none.
	- Must not feature `Contributing` or `Footnotes` sections.
- [ ] Has appropriate content sections:
    - For Platforms: A 'Features' section for feature wishes categorized by type
    - For Domains: A 'Proposed Tools' section containing:
        - Related subdomain names, linking to domain-related lists
        - Tool wishes categorized by purpose (if possible)
- [ ] Each existing platform entry includes:
    - [ ] Clear title and link to the list (Repo)
- [ ] Each proposed tool entry includes:
    - [ ] Clear title and link to either a list (Repo) or wish (Gist)

### General

- [ ] The wishlist is meant for collecting requested platform features or collecting domains and/or new domain-related tool ideas
- [ ] In case of creating a list of domain-related tools a clear theme or focus area for the collection must be chosen
- [ ] A wishlist is the result of careful consideration and thorough research.
    **If you have not put serious thought into your wishlist, your pull request will be immediately closed.**
- [ ] Has an appropriate license.
	- **We strongly recommend the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/), but any [Creative Commons license](https://creativecommons.org/choose/) will work.**
		- Tip: You can quickly add it to your repo by going to this URL: `https://github.com/<user>/<repo>/community/license/new?branch=main&template=cc0-1.0` (replace `<user>` and `<repo>` accordingly).
	- A code license like MIT, BSD, Apache, GPL, etc, is not acceptable. Neither are WTFPL and [Unlicense](https://unlicense.org).
	- Place a file named `license` or `LICENSE` in the repo root with the license text.
	- **Do not** add the license name, text, or a `Licence` section to the readme. GitHub already shows the license name and link to the full text at the top of the repo.

## Important note

Please review these requirements again from the top.