#!/usr/bin/env bash
# Upload the site to the CS147 project web space on Stanford AFS.
# Usage: ./deploy.sh <sunet-id>
set -euo pipefail

SUNET="${1:?Usage: ./deploy.sh <sunet-id>}"
REMOTE_DIR="/afs/ir/class/cs147/WWW/projects/DesigningforSerendipity/spark/"

cd "$(dirname "$0")"

rsync -avz --delete \
  --exclude '.git' --exclude '.github' --exclude '.gitignore' \
  --exclude 'README.md' --exclude 'deploy.sh' --exclude '.DS_Store' \
  ./ "${SUNET}@myth.stanford.edu:${REMOTE_DIR}"

echo "Done. Check https://web.stanford.edu/class/cs147/projects/DesigningforSerendipity/spark/"
