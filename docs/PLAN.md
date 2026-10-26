# Spark website plan

The plan for the Spark team site. Keep this file updated as decisions change; it lives in the repo so everyone works from the same picture.

Live URL: https://web.stanford.edu/class/cs147/projects/DesigningforSerendipity/spark/

## 1. What the site is for

The course asks for a site that "tells the story of your project's development" and can be understood by someone with no Stanford context. In practice it has three jobs:

1. **Explain Spark in ten seconds** to a stranger: what it is, who it is for, why it exists.
2. **Document every phase** (needfinding through final report) so staff can find each deliverable fast.
3. **Show the product**: screenshots, the concept video, prototype links, the demo.

Readers, in order of who matters most: course staff grading deliverables, classmates and the industry fair audience, and anyone who finds the link later.

## 2. Structure

One scrolling home page with anchored sections (the same pattern as DareDrop from last year), plus optional detail pages for deliverables that need more room.

| Order | Section | Anchor | Purpose |
| --- | --- | --- | --- |
| 1 | Nav | n/a | Logo, then About, How it works, Deliverables, Team. Sticky. |
| 2 | Hero | `#top` | Tagline, one-sentence description, buttons to deliverables and how it works. Sparkle gradient wash. |
| 3 | About | `#about` | The problem, who it is for, our answer, in three short blocks. |
| 4 | How it works | `#how` | Three steps (pick interests, check in, meet someone) with real screenshots once we have them. |
| 5 | Deliverables | `#milestones` | A card per assignment (A1, A2, A4, A5, A6, A8, A9, A10, A11): status, date, two-sentence summary, link chips. |
| 6 | Demo | `#demo` | Embedded demo video plus link to the clickable prototype. Added at A10. |
| 7 | Team | `#team` | Photo, name, role for each person. |
| 8 | Footer | n/a | Logo, course, term. |

Optional detail pages (add only if a deliverable needs more than a card): `deliverables/a1-needfinding.html`, and so on. They reuse the same CSS and link back to `../index.html#milestones`.

Folders: `docs/` for PDFs and slides, `assets/img/` for photos and screenshots, `assets/video/` for downloadable video, `brand/` for the brand kit.

## 3. Deliverable cards

Each card has: code badge (A1), title, status (Done, In progress, Coming up), date, one or two sentences on what we did and the main thing we learned, and link chips.

| Code | Deliverable | Link chips |
| --- | --- | --- |
| A1 | Needfinding | Slides |
| A2 | POVs, HMWs, brainstorming, experience prototypes | Slides |
| A4 | Concept video | YouTube, downloadable video, storyboard, slides |
| A5 | Sketching, low-fi prototype, usability testing | Slides |
| A6 | Interactive medium-fi prototype | Figma prototype, slides, readme |
| A8 | High-fi prototype | Slides, code on GitHub, readme |
| A9 | Heuristic evaluation | Feedback PDF |
| A10 | Poster, pitch and demo video | Poster, pitch slide, demo video |
| A11 | Final report | Report PDF |

This list is copied from last year's DareDrop site. Check it against this term's assignment list and fix any mismatch. Every PDF must be stored in `docs/` (course rule: all content on the Stanford server).

## 4. Look and feel

Everything follows the Spark brand kit in `brand/`. Short version:

- **Stage and voice:** white background, royal blue for the one main action and for links. Sparkle gradient (sky to mint, 135 degrees) for the hero and big moments only.
- **Six colors, no more:** royal, yellow, sky, mint, ink, white. Yellow only for human moments (Say hi, match). No coral, orange, navy or brown.
- **Type:** Inter 400, 500, 600. Headlines 600 with tight tracking. Never 700 or heavier.
- **Shape:** pills for anything clickable, 24px cards with a soft shadow and hairline, no sharp corners.
- **Logo:** `brand/logo/spark-logo-transparent.svg` on white; follow `brand/logo.md` (clear space, 80px minimum, no recoloring).
- **Motion:** gentle and bouncy (ease-out, small overshoot, 200 to 350ms), nothing urgent. The logo only twinkles. Page motion: hero entrance, small sparkles that pop and fade, sections that rise in on scroll (`js/main.js`), card hover lift. All of it turns off for people who prefer reduced motion, and the page is fully readable without JavaScript.
- **Logo placement:** nav, a large card in the hero, a full-width band mid-page, and the footer. Always on white or the soft wash, never over a busy image.
- **Imagery:** real photos of third spaces and real app screenshots. No stock people. The archived star mascot is not used.
- **Icons:** rounded line icons, 2px stroke (Lucide is the stand-in).

Voice for copy: warm, short, a little playful, like a friendly regular at the cafe. Sentence case everywhere, no emoji, no more than one exclamation mark per screen. Lead with the human moment, not the mechanism.

## 5. What we still need from the team

- [ ] Problem statement and a two-line pitch (About section)
- [ ] Names, roles, and a photo for each teammate
- [ ] Dates and a two-sentence summary for each deliverable
- [ ] Concept video (YouTube link plus downloadable file)
- [ ] App screenshots for "How it works"
- [ ] A short alt-text description for every image
- [ ] Final answer on the A-numbers for this term (is there an A7? is the website A3?)

## 6. Technical rules (from the course)

- Static files only, no build step. Third-party site builders are allowed only if the output is copied onto the Stanford server.
- Relative links only, so the site can move to hci.stanford.edu at the end of the term.
- All deliverables are hosted on the Stanford server, not Drive or GitHub Pages.
- Test in at least two browsers and on a phone before each deadline.
- Fonts: Inter is loaded from Google Fonts for now. Before the final deadline, copy the Inter files into `assets/fonts/` and use `@font-face` so nothing depends on an outside host.

## 7. Working together

- `main` is what gets deployed. Make a branch per change, open a pull request, one person merges.
- Edit `index.html` (search for `TODO`), preview by opening it in a browser.
- One person deploys with `./deploy.sh <sunet-id>` after each merge that matters.
- Keep this plan and `brand/` up to date; if a brand rule changes, change `brand/tokens.json` first and regenerate `brand/tokens.css`.

## 8. Quality checklist before each deadline

- [ ] Every deliverable due so far has a card with working links
- [ ] All links are relative and none are broken (click each one)
- [ ] PDFs open from the Stanford URL, not just locally
- [ ] Looks right at phone width and desktop width
- [ ] Text contrast and focus rings visible; every image has alt text
- [ ] Only the six brand colors appear on the page
- [ ] No `TODO` text left on the live page

## 9. Milestones for the site itself

| When | What |
| --- | --- |
| Week 6 studio checkpoint | Basic structure live on the Stanford URL: hero, about, deliverable cards for completed work, team |
| After A4 | Concept video embedded and linked |
| After A6 | Figma prototype link and How it works screenshots |
| Final | Demo section, poster, pitch, final report, fonts hosted locally, full QA pass |

Per the Autumn 2025 assignment, the basic structure was due at the week 6 studio; confirm this term's date.
