#!/bin/bash

# 🔐 Culture Beat - SSH Setup & GitHub Push
# Dieses Script konfiguriert SSH und pusht alles auf GitHub

set -e

echo "🔐 Culture Beat - SSH & GitHub Setup"
echo "====================================="
echo ""

FOLDER="/Users/admin/Library/Application Support/Claude/local-agent-mode-sessions/895d4997-a7c2-4ed9-8102-0052b7ee6719/8211e6b4-41b2-4d30-82d6-8411955e3f79/local_71058e18-d9b9-45d1-8c83-865a8c6fd412/outputs"
GITHUB_USER="Vanessa-1010"
REPO_NAME="culture-beat"

cd "$FOLDER"

# Schritt 1: SSH-Key prüfen oder erstellen
echo "📝 Schritt 1: SSH-Key Setup"
echo "---"

if [ -f ~/.ssh/id_ed25519 ]; then
    echo "✅ SSH-Key existiert bereits"
else
    echo "🔑 Generiere neuen SSH-Key..."
    ssh-keygen -t ed25519 -C "bwohlfarth@icloud.com" -N "" -f ~/.ssh/id_ed25519
    echo "✅ SSH-Key erstellt!"
fi

echo ""

# Schritt 2: Public Key anzeigen
echo "📋 Schritt 2: Dein Public Key (zum Kopieren)"
echo "---"
echo ""
cat ~/.ssh/id_ed25519.pub
echo ""
echo "☝️  KOPIERE DEN OBIGEN SCHLÜSSEL!"
echo ""

# Schritt 3: Nutzer auffordern
echo "⚠️  WICHTIG:"
echo "1. Gehe zu: https://github.com/settings/ssh/new"
echo "2. Title: culture-beat"
echo "3. Key: Den obigen Schlüssel einfügen"
echo "4. 'Add SSH key' klicken"
echo ""
read -p "✅ Drücke Enter wenn du fertig bist..."

echo ""
echo "⚙️  Schritt 3: Git Remote konfigurieren"
echo "---"

git remote set-url origin "git@github.com:$GITHUB_USER/$REPO_NAME.git"
echo "✅ Remote URL gesetzt auf: git@github.com:$GITHUB_USER/$REPO_NAME.git"

echo ""
echo "📤 Schritt 4: Pushe auf GitHub"
echo "---"

git push origin main

echo ""
echo "✅ FERTIG! 🎉"
echo ""
echo "Dein Repository:"
echo "   https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "Nächster Schritt:"
echo "   1. Gehe zu https://github.com/$GITHUB_USER/$REPO_NAME"
echo "   2. Settings → Pages"
echo "   3. Source: main Branch, Folder: / (root)"
echo "   4. Speichern"
echo ""
echo "Dann Online unter:"
echo "   https://$GITHUB_USER.github.io/$REPO_NAME"
echo ""