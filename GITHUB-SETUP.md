# 🚀 Culture Beat auf GitHub Pages deployen

Komplette Anleitung zum Hochladen auf GitHub und automatischen Deployment.

---

## Schritt 1️⃣: GitHub Repository erstellen

1. Gehe zu [github.com](https://github.com)
2. Oben rechts → **+ New** → **New repository**
3. Repo-Name: `culture-beat` (oder `culture-beat-prototypes`)
4. **Public** wählen (wichtig!)
5. ❌ **NICHT** "Initialize with README" ankreuzen
6. **Create repository** klicken

→ Du bekommst eine URL wie: `https://github.com/YOUR-USERNAME/culture-beat.git`

---

## Schritt 2️⃣: Lokal ein Git-Repository initialisieren

Öffne **Terminal** und navigiere zu deinen Dateien:

```bash
cd /Users/admin/Library/Application\ Support/Claude/local-agent-mode-sessions/895d4997-a7c2-4ed9-8102-0052b7ee6719/8211e6b4-41b2-4d30-82d6-8411955e3f79/local_71058e18-d9b9-45d1-8c83-865a8c6fd412/outputs
```

Initialisiere Git:

```bash
git init
```

Verbinde mit deinem GitHub Repository:

```bash
git remote add origin https://github.com/YOUR-USERNAME/culture-beat.git
```

⚠️ **Ersetze `YOUR-USERNAME` mit deinem GitHub-Benutzernamen!**

---

## Schritt 3️⃣: Dateien hochladen

Alle Dateien zum Repository hinzufügen:

```bash
git add .
```

Commit erstellen:

```bash
git commit -m "Initial commit: Culture Beat Prototypen"
```

Auf GitHub pushen:

```bash
git branch -M main
git push -u origin main
```

⏳ **Moment, während der Upload läuft...**

---

## Schritt 4️⃣: GitHub Pages aktivieren

1. Gehe zu deinem Repository auf GitHub
2. **Settings** (oben rechts)
3. Linke Sidebar: **Pages**
4. **Source:** Wähle `main` Branch
5. **Folder:** Wähle `/ (root)`
6. **Save** klicken

→ GitHub zeigt dir bald: `Your site is published at https://YOUR-USERNAME.github.io/culture-beat`

---

## 🎉 Fertig! Deine öffentliche URL:

```
https://YOUR-USERNAME.github.io/culture-beat
```

**Teile diese Links:**

| Typ | Link |
|-----|------|
| Übersicht | `https://YOUR-USERNAME.github.io/culture-beat/index.html` |
| iPhone High-Fi (Pitch) | `https://YOUR-USERNAME.github.io/culture-beat/culture-beat-highfidelity-iphone.html` |
| iPhone Low-Fi (Test) | `https://YOUR-USERNAME.github.io/culture-beat/culture-beat-lowfidelity-iphone.html` |
| Desktop High-Fi | `https://YOUR-USERNAME.github.io/culture-beat/culture-beat-highfidelity.html` |
| Desktop Low-Fi | `https://YOUR-USERNAME.github.io/culture-beat/culture-beat-lowfidelity.html` |

---

## 🔄 Später Änderungen pushen

Sobald alles eingerichtet ist, brauchst du nur:

```bash
# Änderungen machen...
git add .
git commit -m "Update: Beschreibung deiner Änderungen"
git push
```

GitHub Pages deployed automatisch! 🚀

---

## 💡 Tipps

✅ **Custom Domain:** Du kannst später eine Custom Domain einrichten
✅ **HTTPS:** Kostenlos automatisch aktiviert
✅ **Updates:** Pushen → 1-2 Minuten später online

---

## ❓ Probleme?

**Git nicht installiert?**
```bash
brew install git
```

**Authentifizierung fehlgeschlagen?**
→ Nutze einen Personal Access Token statt Passwort:
1. GitHub → Settings → Developer settings → Personal access tokens
2. "repo" Berechtigung geben
3. Token kopieren
4. Bei `git push` → Passwort: Token einfügen

**Seite zeigt noch alte Version?**
→ Cache leeren: `CTRL+SHIFT+R` (oder `CMD+SHIFT+R` auf Mac)

---

**Viel Erfolg mit Culture Beat! 🌱**