# Git LFS for Large Media (Art & Videos)

The full asset pack (portraits, dances, combat videos, environments) exceeds normal Git limits.

## Setup (one-time)

```bash
# Install Git LFS
git lfs install

# Track large types
git lfs track "*.mp4"
git lfs track "*.jpg"
git lfs track "*.png"
git lfs track "*.jpeg"
git lfs track "*.webp"

# Commit the .gitattributes
git add .gitattributes
git commit -m "Enable Git LFS for media"
```

## Adding the full asset pack

1. Copy your `Moonwild_Hearts_Game_Assets` folders (portraits, videos, monsters, village, home, forest, systems, player, intimate, etc.) into the repo root.
2. `git add .`
3. `git commit -m "Add full media pack via LFS"`
4. `git push`

GitHub free LFS quota is limited; for heavy video packs consider Releases or external CDN instead.

## Alternative without LFS

- Upload big zips to **Releases**
- Or keep media local and only commit code/data (current state)
