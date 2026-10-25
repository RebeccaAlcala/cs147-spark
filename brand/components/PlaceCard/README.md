A recommended third space with its distance and one action: check in.

**Parts**
- A `sky` pin (`sp-pin`) with an ink outline icon, marking "where".
- Title in `heading-2` and a `caption` line for distance, type and hours.
- Optional chips for what the place suits, from the user's interests.
- One royal "I'm here" button; after check-in, the card turns `mint` (`sp-card--here`) with the `sp-badge--here` badge and a short waiting note.

**You provide**
- Place name, distance, category, optional hours, and 0 to 3 interest chips.
- The checked-in state from the app; the card does not manage it.

**Do**
- Show only places where people are likely to meet, never homes or private addresses.
- Keep the card to one action. The map handles everything else.

**Don't**
- Don't show how many specific people are inside before the user checks in; a general "busy" hint is enough.
- Don't use yellow here; it is reserved for matches.
