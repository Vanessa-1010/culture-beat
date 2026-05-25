#!/bin/bash

# Culture Beat Prototyp - Lokaler Server
# Öffnet einen HTTP-Server und zeigt deine Prototypen online an

PORT=8888
FOLDER="/Users/admin/Library/Application Support/Claude/local-agent-mode-sessions/895d4997-a7c2-4ed9-8102-0052b7ee6719/8211e6b4-41b2-4d30-82d6-8411955e3f79/local_71058e18-d9b9-45d1-8c83-865a8c6fd412/outputs"

echo "🚀 Starte Culture Beat Server..."
echo ""
echo "📱 Öffne diese Links in deinem Browser:"
echo ""
echo "Low-Fidelity (iPhone):"
echo "   http://localhost:$PORT/culture-beat-lowfidelity-iphone.html"
echo ""
echo "High-Fidelity (iPhone):"
echo "   http://localhost:$PORT/culture-beat-highfidelity-iphone.html"
echo ""
echo "Low-Fidelity (Desktop):"
echo "   http://localhost:$PORT/culture-beat-lowfidelity.html"
echo ""
echo "High-Fidelity (Desktop):"
echo "   http://localhost:$PORT/culture-beat-highfidelity.html"
echo ""
echo "⏹️  Drücke CTRL+C zum Stoppen"
echo ""

cd "$FOLDER"
python3 -m http.server $PORT