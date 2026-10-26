# Spark brand kit

Everything from the Spark brand kit, copied into the repo so the team site and any other deliverable (poster, slides, concept video) use the same files. The kit was developed in a separate design session. **Do not edit these files by hand to change the brand; update the kit and replace the copies.**

Sources:
- Full kit (logo files, components, tokens): https://claude.ai/artifact/UBpgNEqzdb4SniZnKnw3aL
- Logo directions canvas (options A to D, royal blue variations, letter colors): https://claude.ai/artifact/Niz3RpKmeDo4oGyi1rscaK

## What is here

| Path | What it is |
| --- | --- |
| `README-guidelines.md` | The full brand guidelines: six colors, content voice, type, shape, space, imagery, motion, iconography |
| `logo.md` | Which logo file to use, clear space, minimum sizes, misuse |
| `logo/` | Twelve logo SVGs: default, transparent, animated (two), on dark, mono royal, mono ink, mark, mark plain (no face), mark mono, app icon royal, app icon ink |
| `tokens.json` | Source of truth for colors, type, spacing, radius, shadow (light and dark themes) |
| `tokens.css` | CSS custom properties generated from `tokens.json`; the site links this file |
| `components/bundle.css` | Spark component styles (`sp-btn`, `sp-chip`, `sp-badge`, `sp-card`, `sp-pin`, `sp-avatar`, `sp-gradient`, `sp-wash`) |
| `components/*/README.md` and `preview.html` | Usage notes and previews for Button, InterestChip, MatchCard, PlaceCard, Cover |
| `design-system.json` | The kit's manifest |
| `mascot.md` and `mascot-archived/` | The old yellow star sketches. **Archived, not part of the brand.** Reference only. |

## The short rules

- Exactly six colors: royal `#2A4FD6`, yellow `#FFD62E`, sky `#7CC4F8`, mint `#C9F5A8`, ink `#141414`, white `#FFFFFF`. Never add a seventh.
- White is the stage, royal is the voice, the sky-to-mint gradient is the glow.
- Inter only, weights 400, 500, 600.
- Pills for anything clickable. Cards 24px radius, soft shadow plus a hairline.
- Never type a hex value into a screen; use the tokens.
- Text on yellow, sky and mint is ink. White only on royal.

## Notes from the import

- The logo now includes a happy face on the sparkle (updated 2026-10-26). `spark-mark-plain.svg` is the faceless version for the favicon and tiny sizes. The animated logos twinkle the sparkle and its face once every few seconds and stop for reduced motion.
- The logo-directions canvas boards only display correctly inside Claude (their images live in that artifact), so they are not copied here. Open the link above to view them.
- Component previews expect the token variables, so they look right only when `tokens.css` and `components/bundle.css` are loaded.
- Fonts: the kit loads Inter from Google Fonts. For the final submission, host Inter locally (see `docs/PLAN.md`).

## Regenerating `tokens.css`

`tokens.css` is derived from `tokens.json`: each token becomes a `--name` variable, with light values on `:root` and dark values under `[data-theme="dark"]`. If `tokens.json` changes, regenerate it rather than editing the CSS.
