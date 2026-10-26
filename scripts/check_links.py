#!/usr/bin/env python3
"""Check that every relative link/src in index.html points to a file that exists.
Run from the repo folder:  python3 scripts/check_links.py
Also flags absolute paths (/docs/x.pdf) and full URLs to our own site, which the course forbids."""
import os, re, sys

root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
problems = 0
for page in [f for f in os.listdir(root) if f.endswith(".html")] + [
    os.path.join("deliverables", f) for f in (os.listdir(os.path.join(root, "deliverables")) if os.path.isdir(os.path.join(root, "deliverables")) else []) if f.endswith(".html")]:
    path = os.path.join(root, page)
    html = re.sub(r"<!--.*?-->", "", open(path, encoding="utf-8").read(), flags=re.S)
    base = os.path.dirname(path)
    for url in re.findall(r'(?:href|src)="([^"]+)"', html):
        if url.startswith(("#", "mailto:")):
            continue
        if url.startswith("/") and not url.startswith("//"):
            print(f"{page}: absolute path (use a relative one): {url}"); problems += 1
        elif url.startswith("http"):
            if "web.stanford.edu/class/cs147" in url or "hci.stanford.edu/courses/cs147" in url:
                print(f"{page}: full URL to our own site (use a relative link): {url}"); problems += 1
        elif not os.path.exists(os.path.join(base, url.split("#")[0].split("?")[0])):
            print(f"{page}: missing file: {url}"); problems += 1
print("All links OK" if not problems else f"{problems} problem(s) found")
sys.exit(1 if problems else 0)
