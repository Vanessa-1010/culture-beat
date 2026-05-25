#!/bin/bash

# 🚀 Culture Beat - Automatischer GitHub Push
# Dieses Script lädt alle Prototypen auf GitHub hoch

set -e  # Stop bei Fehler

echo "🚀 Culture Beat - GitHub Push"
echo "=============================="
echo ""

# Variablen
GITHUB_USER="Vanessa-1010"
REPO_NAME="culture-beat"
REPO_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"
FOLDER="/Users/admin/Library/Application Support/Claude/local-agent-mode-sessions/895d4997-a7c2-4ed9-8102-0052b7ee6719/8211e6b4-41b2-4d30-82d6-8411955e3f79/local_71058e18-d9b9-45d1-8c83-865a8c6fd412/outputs"

echo "📍 Repository: $REPO_URL"
echo "📁 Folder: $FOLDER"
echo ""

# Zu Folder navigieren
cd "$FOLDER"

# Check ob .git existiert
if [ ! -d ".git" ]; then
    echo "📦 Initialisiere Git Repository..."
    git init
    git remote add origin "$REPO_URL"
    echo "✅ Git Repository erstellt"
else
    echo "✅ Git Repository existiert bereits"
    # Check ob remote korrekt ist
    CURRENT_REMOTE=$(git config --get remote.origin.url)
    if [ "$CURRENT_REMOTE" != "$REPO_URL" ]; then
        echo "⚠️  Remote URL wird aktualisiert..."
        git remote set-url origin "$REPO_URL"
    fi
fi

echo ""
echo "📤 Lade Dateien hoch..."

# Alle Dateien hinzufügen
git add .

# Commit erstellen
git commit -m "Culture Beat Prototypen: Low & High Fidelity iPhone + Desktop Versionen" || echo "Keine neuen Änderungen zum Commit"

# Branch umbenennen falls nötig
git branch -M main 2>/dev/null || true

# Pushen
echo ""
echo "🔄 Pushe zu GitHub..."
git push -u origin main

echo ""
echo "✅ FERTIG! 🎉"
echo ""
echo "Dein Repository:"
echo "   https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "Nächster Schritt:"
echo "   1. Gehe zu https://github.com/$GITHUB_USER/$REPO_NAME"
echo "   2. Settings → Pages"
echo "   3. Source: main Branch"
echo "   4. Folder: / (root)"
echo "   5. Save"
echo ""
echo "Dann online unter:"
echo "   https://$GITHUB_USER.github.io/$REPO_NAME"
echo ""