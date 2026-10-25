Spark helps strangers who are already in the same place find each other. People answer a short interest questionnaire, get pointed to nearby third spaces (cafes, climbing gyms, game stores, parks), check in when they arrive, and are matched with someone checked in at the same spot. They see only interests and an age range, both accept, then chat just long enough to find each other in person. The brand should feel like a friendly nudge, never a pressure to perform.

Read `logo.md` before placing any logo and `mascot.md` before using the star character from the early sketches. Use the tokens in `tokens.json`; never type a hex value into a screen.

## The six colors

Spark has exactly six brand colors. Do not add a seventh.

| Color | Token | Job |
| --- | --- | --- |
| Royal blue `#2A4FD6` | `royal` | The logo lettering, the primary action on each screen, selected chips, links |
| Yellow `#FFD62E` | `spark` | The human moment: the Say hi button and the match badge |
| Sky blue `#7CC4F8` | `sky` | Nearby: place pins and the "You're here" badge; first half of the sparkle gradient |
| Mint `#C9F5A8` | `mint` | Second half of the sparkle gradient, soft washes, the checked-in card, success states |
| Ink `#141414` | `ink` | All body text, the dark theme, text on yellow, sky and mint fills |
| White `#FFFFFF` | `white` | Backgrounds, cards, text on royal |

The signature is the **sparkle gradient**: sky to mint at 135 degrees, used inside the logo sparkle, the splash and match washes, and hero moments (`sp-gradient`, `sp-wash`). Royal blue is the voice; the gradient is the glow.

Everything else (muted text, hairlines, wells) is a see-through tint of ink or white, so the palette stays six. There is no coral, brown, cream, orange or navy. The old yellow star mascot is no longer part of the brand system (see `mascot.md`).

## Content fundamentals

- Write like a friendly regular at the cafe: warm, short, a little playful. Second person ("you"), first person plural for the app ("we only share interests and an age range").
- Sentence case everywhere, including buttons and titles. Uppercase only for `label` overlines and badges like NEARBY.
- Lead with the human moment, not the mechanism. Say "Someone here likes ramen and board games too", not "Match found: 87% compatibility".
- Never show scores, rankings or percentages. Matches are introductions, not ratings.
- Reassure on privacy at the moment it matters. Before a match is accepted, copy repeats that only interests and an age range are shared.
- No emoji. One exclamation mark per screen, max.
- Real examples to copy the tone from:
  - Check-in button: "I'm here"
  - After check-in: "You're here! Looking for someone friendly nearby."
  - Match intro: "Someone at Mochi Corner shares your love of ramen and bouldering."
  - Accept: "Say hi" · Decline: "Not now"
  - Empty state: "Quiet right now. We'll nudge you if someone checks in."
  - Safety line: "You decide when to meet. Always pick the public spot."

## Visual foundations

**Color.** White is the stage and royal blue is the voice. Set every screen on `surface` (white); use `primary` (royal) for the one main action per screen and for selected states. Use `sky` for where, `spark` (yellow) for who (the match and Say hi), and `mint` for soft washes and the checked-in state. Mint is pale: pair it with a hairline or shadow on white, and put ink on it. Put text on yellow, sky and mint fills in `on-color` (ink), and white on royal; never white on yellow, sky or mint. Body text is `text` (ink) or `text-muted`; the only colored text is a link: `link` (royal), semibold, underlined. Yellow is never the only edge of a control, so yellow buttons always carry an ink label. The dark theme swaps the ground to `ink` and text to white, and the primary fill becomes `sky` with an ink label because royal is too dark on ink.

**Type.** One family, Inter, the same face as the logo lettering. Headlines at semibold 600 with slightly tight tracking (`display-xl` to `heading-3`), everything else at 400 with 600 for emphasis. Do not use 700 or heavier, and do not add a second family. Load Inter 400, 500 and 600 from Google Fonts.

**Shape.** Everything tappable is a pill (`radius-pill`). Cards use `radius-lg` (`radius-xl` for the match reveal). Sparkle shapes keep soft, slightly pinched points. Corners are never sharp.

**Space and depth.** Screen side margin `space-4`; gap between cards `space-5`. White cards sit on white, so give them `shadow-soft` plus a `line` hairline. `shadow-lift` is only for the match reveal and a pressed check-in button.

**Imagery.** Photography of real third spaces: bright, natural light, people mid-conversation, never posed stock. For splash and match screens, use the soft sky-and-mint wash (`sp-wash`) or the full gradient (`sp-gradient`) behind content. Delight comes from the logo sparkle: small sparkles may pop in and fade, drawn with the same rounded four-point shape.

**Motion** (concept video and app). Gentle and bouncy: ease-out with a small overshoot, 200 to 350ms. The logo sparkle twinkles (a small scale and turn) every few seconds; the check-in button squashes slightly on press. Avoid fast slides or anything urgent.

**Focus and states.** Focus ring is `focus` (royal in light, white in dark), 2px, 2px offset. Pressed buttons darken slightly. Disabled controls use `text-muted` on `surface-sunken`.

## Iconography

No icon set was supplied. Use rounded line icons with 2px strokes and round caps and joins, on a 24px grid, drawn in `text` (or `on-color` on yellow, sky and mint fills). Lucide with its default round caps is the closest ready-made match; treat it as a stand-in until Spark has its own set. Pins and badges may be filled `sky` or `spark` shapes.
