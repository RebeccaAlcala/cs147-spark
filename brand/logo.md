# Logo

The Spark logo is the word "spark" in tightly spaced Inter Display SemiBold, with a four-point sparkle in place of the "a". The letters are royal blue; the sparkle is filled with the sky-to-mint gradient, tilted 14 degrees to the right, and wears a small happy face (closed smiling eyes and an open smile) so it reads as a friendly character and not a generic sparkle icon. It is designed to sit on white. Files live in `assets/Logo/`.

## Which file to use

| Use | File |
| --- | --- |
| Default: on white (white background included) | `spark-logo.svg` |
| Same logo with a transparent background, to place on any white or light surface | `spark-logo-transparent.svg` |
| Animated: the sparkle twinkles every few seconds; for splash, loading and the concept video | `spark-logo-animated.svg` |
| On `ink` or dark photography | `spark-logo-on-dark.svg` (white letters on an ink backing; delete the first `<rect>` for transparent) |
| One-color print, stamps, embossing, single-ink jobs | `spark-logo-mono-royal.svg` or `spark-logo-mono-ink.svg` |
| Avatar, sticker, anywhere the word will not fit | `spark-mark.svg` (or `spark-mark-mono-ink.svg`) |
| Favicon and anything under 32px, where the face would blur | `spark-mark-plain.svg` (the sparkle without a face) |
| App icon | `spark-app-icon-royal.svg` (primary) or `spark-app-icon-ink.svg` |

## Rules

- Clear space: keep at least the height of the "k" free on every side.
- Minimum sizes: logo 100px wide on screen (25mm in print); mark with face 32px. Below those, use `spark-mark-plain.svg`.
- Colors: letters royal `#2A4FD6`; sparkle gradient from sky `#7CC4F8` (top left) to mint `#C9F5A8` (bottom right); face in ink `#141414`. On dark, letters white. In one color, everything royal or everything ink and the face is knocked out in white. Nothing else.
- Place it on white first. On photos, use the on-dark version over a dark area; never over a busy or light photo.
- Do not recolor the letters or the gradient, outline the sparkle, add shadows, stretch, rotate the lockup, or retype "spark" in a font.
- Keep the sparkle in the "a" position, tilted as supplied, with the face upright; do not rebuild the lockup, move the face, or change the expression.
- Use `spark-mark.svg` on its own only where the word appears elsewhere on the screen or the space is too small.
- Animation is one gentle twinkle (a small scale and turn of the sparkle and its face) every few seconds. Do not speed it up or add other motion. It stops for people who prefer reduced motion.

## Notes on how it was drawn

The lettering is outlined from Inter Display SemiBold (an open-source typeface), so the SVGs do not depend on an installed font. The sparkle is a custom four-point shape with softly pinched sides, sized so its points just reach the neighboring letters. The face is two arched eyes and an open smile in a 5px stroke, kept small so it feels mature. Letter spacing is tightened (-3.5%) around the sparkle; a type designer should check optical spacing before the identity is final.
