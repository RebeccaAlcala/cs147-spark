# Spark team site

Team website for **Spark**, our CS 147 project (Designing for Serendipity).

Live at: https://web.stanford.edu/class/cs147/projects/DesigningforSerendipity/spark/

## Start here

- **Site plan:** `docs/PLAN.md` (structure, look and feel, checklist, what we still need)
- **Brand kit:** `brand/README.md`
- **Using an AI agent?** Point it at `AGENTS.md` (the rules) and give it a task from the table below.

## Preview the site on your computer

The site is plain HTML, CSS and a little JavaScript. There is no build step and nothing to install except Python, which most computers already have.

1. Get the files: `git clone https://github.com/RebeccaAlcala/cs147-spark` (or download the ZIP from GitHub and unzip it).
2. Open a terminal **in the repo folder** (the one that contains `index.html`).
3. Start a local server:

   ```
   python3 -m http.server 8000
   ```

   On Windows, use `py -m http.server 8000` (or `python -m http.server 8000`).
4. Open **http://localhost:8000** in your browser.
5. Edit a file, save, and refresh the browser (hard refresh with Cmd+Shift+R on Mac or Ctrl+Shift+R on Windows if you don't see the change).
6. Stop the server with **Ctrl+C**.

If the port is busy, pick another number (`python3 -m http.server 8080`) and open that port instead. You can also just double-click `index.html`; the server is only needed if something looks different from the live site.

Before you push, check your links:

```
python3 scripts/check_links.py
```

It reports any link that points to a missing file, any absolute path, and any full URL to our own site.

## What to change

Almost everything is in `index.html`. Search for `TODO` to find each spot that still needs real content.

| I want to change... | File | What to look for |
| --- | --- | --- |
| Headline, tagline, hero buttons | `index.html` | `<!-- Hero -->`, the `<h1>` and the paragraph under it |
| About text | `index.html` | `<section id="about">` |
| The three "How it works" steps | `index.html` | `<section id="how">`, three `.card` blocks |
| A deliverable (date, summary, status, links) | `index.html` | `<section id="milestones">`, one `<li class="milestone ...">` per assignment (A1, A2, A4, ...) |
| Mark a deliverable done | `index.html` | In its `<li>`, set class `done`, set the badge to `<span class="badge done">Done</span>` |
| Mark a deliverable in progress | `index.html` | Class `now` and `<span class="badge now">In progress</span>` |
| Link a PDF, video or prototype | `index.html` | In that deliverable's `.links`, change `class="chip soon" href="#milestones"` to `class="chip" href="docs/your-file.pdf"` (or the full `https://` link for YouTube or Figma) |
| Team names, roles, photos | `index.html` | `<section id="team">`, one `.person` card each. For a photo, put the image in `assets/img/` and use `<img src="assets/img/name.jpg" alt="Name">` inside `.avatar` |
| The big logo band | `index.html` | `<section class="logo-band ...">` |
| Spacing, layout, animation timing | `css/style.css` | Search for the class name |
| Scroll animation behavior | `js/main.js` | Short file, commented |
| Add PDFs, slides, posters | `docs/` | Drop the file in, link it with `docs/name.pdf` |
| Add screenshots or photos | `assets/img/` | Drop the file in, link it with `assets/img/name.png` and always add `alt` text |
| Brand colors, logo, components | `brand/` | **Don't edit by hand.** Change the brand kit and replace the copies. |

To add a new deliverable card, copy a whole `<li class="milestone">...</li>` block, paste it in the right order, and change the code, title, badge, date, text and links.

## Rules (course and brand)

- **Relative links only.** Write `docs/report.pdf`, never `/docs/report.pdf` or a full URL to our own files. Staff move the site to hci.stanford.edu at the end of the quarter.
- **Everything is hosted on the Stanford server.** Don't link deliverables on Google Drive or GitHub Pages. Store PDFs in `docs/`. Outside links (YouTube, Figma) are fine for videos and prototypes.
- **Six brand colors only** (royal, yellow, sky, mint, ink, white), used through the tokens in `brand/tokens.css`. Don't type new hex colors.
- **Inter font, weights 400, 500, 600.** It is hosted in `assets/fonts/`.
- **Voice:** warm, short, a little playful. Sentence case, no emoji, at most one exclamation mark per screen.
- **Product facts:** Spark has no messaging. If two people both say hi, they meet right where they are, right away. Only interests and an age range are shared before that.
- Every image needs `alt` text. Keep animation gentle, and keep it switched off for people who prefer reduced motion.

## Workflow

1. Make a branch for your change: `git checkout -b add-needfinding`
2. Edit, preview, run `python3 scripts/check_links.py`.
3. Commit and push, then open a pull request on GitHub. One person merges.
4. After merging, one person deploys (below).

If you don't use git, you can edit a file directly on GitHub (open it, click the pencil icon, commit).

## Deploying to the Stanford web space

The site lives on AFS at `/afs/ir/class/cs147/WWW/projects/DesigningforSerendipity/spark` (team folders are created around week 4). From the repo folder:

```
./deploy.sh your-sunet-id
```

It uses `rsync` over SSH to `myth.stanford.edu` and asks for your Stanford login and Duo. The course upload handout also covers Fetch, FileZilla and the VS Code SFTP plugin. Confirm the folder name against the project URL on the course projects page.

## Files

```
index.html        the whole site (sections: about, how it works, deliverables, team)
css/style.css     page layout and motion, built on the brand tokens
js/main.js        scroll reveal and nav shadow (optional; the page works without it)
scripts/          check_links.py
brand/            the full Spark brand kit (logos, tokens, components, guidelines)
assets/           fonts and site images
docs/             PLAN.md, plus PDFs, slides and posters as you add them
deploy.sh         uploads the site to the Stanford web space
AGENTS.md         instructions for AI coding agents
```
