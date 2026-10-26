# Instructions for AI agents working on the Spark site

This is the team website for Spark, a Stanford CS 147 project. Read `README.md` for how to preview and what each file is for, and `docs/PLAN.md` for the plan. Then follow these rules.

## Stack and constraints

- Plain static HTML, CSS and a little vanilla JavaScript. **No frameworks, no build step, no npm dependencies.** The site is uploaded as-is to Stanford's AFS web server.
- **Relative links only** (`docs/x.pdf`, `assets/img/y.png`). Never a leading slash and never a full URL to our own site. Everything graded must be hosted on the Stanford server, not Drive or GitHub Pages.
- Preview with `python3 -m http.server 8000` from the repo folder, then open http://localhost:8000.
- Before finishing, run `python3 scripts/check_links.py` and fix any problem it reports.

## Where to make changes

- Content: `index.html` (search for `TODO`). Deliverable cards are `<li class="milestone">` blocks in `#milestones`; copy an existing block to add one. Done cards use class `done` and `<span class="badge done">Done</span>`; the current one uses `now`. A finished link chip is `class="chip" href="docs/file.pdf"`; an unfinished one is `class="chip soon"`.
- Layout and motion: `css/style.css`. Scroll behavior: `js/main.js`.
- New PDFs and slides go in `docs/`. New images go in `assets/img/`, with meaningful `alt` text.
- **Do not hand-edit `brand/`.** It is a copy of the Spark brand kit. If a brand change is needed, tell the user.

## Brand rules (from `brand/README-guidelines.md`)

- Exactly six colors: royal `#2A4FD6`, yellow `#FFD62E`, sky `#7CC4F8`, mint `#C9F5A8`, ink `#141414`, white `#FFFFFF`. Use the CSS variables from `brand/tokens.css` (`var(--royal)`, `var(--primary)`, `var(--text)`), not new hex values. No coral, orange, navy or brown.
- White is the stage and royal is the voice. Yellow is only for human moments (Say hi, match). The sky-to-mint gradient is for hero and wash moments.
- Font: Inter 400, 500, 600 only (hosted in `assets/fonts/`). Never 700 or heavier, no second font family.
- Anything clickable is a pill (`radius-pill`). Cards use the 24px radius with a soft shadow and hairline. No sharp corners.
- Use the logo files in `brand/logo/` as supplied: never recolor, stretch, outline, add shadows, or retype it. Put it on white or the soft wash. The old yellow star mascot is archived and not used.
- Motion is gentle and bouncy (ease-out, small overshoot, 200 to 350ms). Every animation must be disabled under `prefers-reduced-motion`, and the page must stay fully readable without JavaScript.

## Copy rules

- Voice: warm, short, a little playful, like a friendly regular at the cafe. Second person.
- Sentence case everywhere. No emoji. At most one exclamation mark per screen.
- Lead with the human moment, not the mechanism. No scores, rankings or percentages.
- **Product facts to keep accurate:** people answer an interest questionnaire, get pointed to nearby third spaces, and check in. Someone checked in at the same spot is matched by shared interests. Only interests and an age range are shared before both say hi. **There is no messaging**: if both say hi, they meet right where they are, right away.
- Do not invent facts, dates, names, links or screenshots. If something is unknown, leave the `TODO` and tell the user what you need.

## Git

Work on a branch, keep commits small, and describe changes plainly. Don't push to `main` unless the user asks.
