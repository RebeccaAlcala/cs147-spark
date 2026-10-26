# Spark team site

Team website for **Spark**, our CS 147 project (Designing for Serendipity).

Live at: https://web.stanford.edu/class/cs147/projects/DesigningforSerendipity/spark/

## Start here

- **Site plan:** `docs/PLAN.md` (structure, look and feel, checklist, what we still need)
- **Brand kit:** `brand/README.md`

## How this site works

It is plain HTML, CSS and images. There is **no build step**, so anyone can edit a file and open `index.html` in a browser to preview it.

```
index.html        the whole site (sections: about, how it works, milestones, team)
css/style.css     page layout and motion, built on the brand tokens
js/main.js        scroll-reveal and nav shadow (optional; page works without it)
brand/            the full Spark brand kit (logos, tokens, components, guidelines)
assets/           site images (screenshots, photos)
docs/             PLAN.md (the site plan), plus PDFs, slides and posters as you add them
deploy.sh         uploads the site to the Stanford web space
```

## Course rules to keep in mind

- **Use relative links only** (`docs/report.pdf`, never `/docs/report.pdf` or a full URL to our own files). The staff move the site to hci.stanford.edu at the end of the quarter.
- **All content must be hosted on the Stanford server.** Do not link to files on Google Drive or GitHub Pages for deliverables. Link PDFs stored in `docs/`.
- The site must tell the story of every phase and include reports (PDF), slides, and prototype links.
- Test in more than one browser and on a phone before each deadline.

## Working as a team

1. Clone the repo and make a branch: `git checkout -b add-needfinding`
2. Edit `index.html` (look for `TODO` markers), preview by opening it in a browser.
3. Push and open a pull request. One person merges and runs the deploy.

Adding a milestone: copy one `<li class="milestone">` block in `index.html`. Use `done`, `now`, or no class for status.

## Deploying to the Stanford web space

The site lives on AFS at `/afs/ir/class/cs147/WWW/projects/DesigningforSerendipity/spark`
(team folders are created around week 4). From the repo folder:

```
./deploy.sh your-sunet-id
```

It uses `rsync` over SSH to `myth.stanford.edu` and asks for your Stanford login and Duo. Prefer clicking? The course upload handout also covers Fetch, FileZilla, and the VS Code SFTP plugin. If you are unsure about the folder name, check the URL on the course projects page.
