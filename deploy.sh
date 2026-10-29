#!/usr/bin/env bash
# Upload the site to the CS147 project web space on Stanford AFS.
# Usage: ./deploy.sh <sunet-id>
set -euo pipefail

SUNET="${1:?Usage: ./deploy.sh <sunet-id>}"
REMOTE_DIR="/afs/ir/class/cs147/WWW/projects/DesigningforSerendipity/spark/"

cd "$(dirname "$0")"

# The Stanford project space has a tight disk quota, so we upload only what the
# live site actually uses. The repo still holds the full brand kit and font
# download; these rules just keep the unused weight off the server.
#   - Fonts: ship only the three Inter weights the CSS loads (400/500/600).
#     The static folder has 54 .ttf files; the other 51 are never requested.
#   - brand/mascot-archived: the old mascot, not used on the site.
#   - brand/components/*/preview.html: standalone component demos, not linked.
rsync -avz --delete \
  --exclude '.git' --exclude '.github' --exclude '.gitignore' \
  --exclude 'README.md' --exclude 'AGENTS.md' --exclude 'CLAUDE.md' --exclude 'scripts' --exclude 'deploy.sh' --exclude '.DS_Store' \
  --exclude 'brand/mascot-archived' \
  --exclude 'brand/components/*/preview.html' \
  --include '/assets/fonts/' \
  --include '/assets/fonts/Inter/' \
  --include '/assets/fonts/Inter/static/' \
  --include '/assets/fonts/Inter/static/Inter_24pt-Regular.ttf' \
  --include '/assets/fonts/Inter/static/Inter_24pt-Medium.ttf' \
  --include '/assets/fonts/Inter/static/Inter_24pt-SemiBold.ttf' \
  --exclude '/assets/fonts/**' \
  ./ "${SUNET}@myth.stanford.edu:${REMOTE_DIR}"

echo "Done. Check https://web.stanford.edu/class/cs147/projects/DesigningforSerendipity/spark/"
