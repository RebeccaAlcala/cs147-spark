A pill that shows one interest; selectable in the questionnaire and read-only on a match.

**States**
- Unselected: `surface-raised` fill with a `line-strong` outline.
- Selected (`aria-pressed="true"` or `sp-chip--selected`): `primary` fill, `on-primary` text.
- Display only (`sp-chip--static`): no pointer, used on match cards.

**You provide**
- An interest label, 1 to 3 words, sentence case ("Board games").
- `aria-pressed` toggled by your code when the chip is a button.

**Do**
- Wrap chips in a flex row with `space-2` gap; let them break onto new lines.
- Show a short list on matches (3 to 5 interests) so the match feels personal without revealing too much.

**Don't**
- Don't show names, photos or exact ages anywhere a chip is displayed; only interests and an age range are shared before both people accept.
