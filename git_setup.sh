#!/usr/bin/env bash
# ESM Git Setup — run once from the ESM folder
# Usage: bash git_setup.sh
set -e
cd "$(dirname "$0")"

echo "=== ESM GitHub Setup ==="

git init

cat > .gitignore << 'EOF'
*.pdf
.DS_Store
Thumbs.db
desktop.ini
*.swp
*.swo
*~
.vscode/
.idea/
Cennet notes/
Theories/
EOF

cat > README.md << 'EOF'
# IPE 407 — Ergonomics & Safety Management

Study notes for the IPE 407 course (BUET), covering three teachers' modules.

## Structure

| Teacher | Chapters | Topics |
|---------|----------|--------|
| ZAR — Ergonomics | 6 | Work Spaces, Posture, Thermal Env, Light, Noise, Hand Tools |
| RAS — Work Physiology | 4 | Muscle Physiology, Work Physiology, MMH, Designing MMH Jobs |
| MFS — Safety Management | 6 | Workplace Safety, Workers' Comp, OSHA, Accidents, Industrial Hygiene, Fire Safety |

## Features
- Dark-theme, self-contained HTML files
- Per-topic "Mark done" buttons with progress tracking
- localStorage-based progress (works on GitHub Pages or file://)
- Three-tier tracking: topic → chapter % → teacher % → overall %

## Usage
Open `index.html` to start. Progress is saved in your browser's localStorage.
EOF

git add index.html ZAR_index.html RAS_index.html MFS_index.html
git add ZAR_Ch*.html RAS_Ch*.html MFS_Ch*.html
git add .gitignore README.md git_setup.sh

git commit -m "Add IPE 407 ESM study notes — ZAR (6), RAS (4), MFS (6) chapters

- 20 self-contained dark-theme HTML study files
- Per-topic 'Mark done' progress buttons on each chapter
- Three-tier localStorage tracking: topic → chapter % → teacher % → overall
- Index pages with live progress bars (reads from localStorage)
- Main index aggregates all 16 chapter percentages for overall syllabus bar

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
Claude-Session: https://claude.ai/code/session_017mPugxiDojceSNVU6oquTx"

echo ""
echo "=== Committed! Now push: ==="
echo "  git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git"
echo "  git branch -M main"
echo "  git push -u origin main"
echo ""
echo "For GitHub Pages: Settings → Pages → Deploy from branch 'main' / root"
