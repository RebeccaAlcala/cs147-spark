Pill-shaped buttons for every tappable action; the royal-blue primary is the one main action on a screen.

**Variants**
- `sp-btn` (`primary`: `royal` with a white label in light, `sky` with an ink label in dark): the primary action, such as "I'm here" or "Check in". One per screen.
- `sp-btn sp-btn--accept` (yellow `spark`, ink label): accepting a match ("Say hi"). Only used in the match flow.
- `sp-btn sp-btn--secondary`: outlined, for "Not now" and other lower-priority choices. Its border is `line-strong`.
- `sp-btn--small`: 40px tall, for inline and card actions.

**You provide**
- Label text in sentence case, 1 to 3 words. Labels use `on-primary` on the primary button and `on-color` (ink) on yellow.
- A `disabled` attribute while the action is unavailable (for example, waiting for a match).

**Do**
- Keep the label short and human: "I'm here", "Say hi", "Not now".
- Let the pressed state show: the button darkens slightly and squashes.

**Don't**
- Don't put a royal button on a blue or dark-blue surface; place it on `surface`, `surface-raised` or `mint`.
- Don't use yellow for anything other than accepting a match and small delights.
- Don't use white text on yellow, sky or mint fills.
