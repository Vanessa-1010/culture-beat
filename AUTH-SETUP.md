# 🔐 GitHub Authentifizierung Setup

Bevor du das Push-Script laufen lässt, musst du Git authentifizieren.

---

## Option A: GitHub CLI (empfohlen - am einfachsten) ⭐

### 1. GitHub CLI installieren
```bash
brew install gh
```

### 2. Authentifizieren
```bash
gh auth login
```

Folge den Anweisungen:
- `What is your preferred protocol for Git operations?` → **HTTPS** wählen
- `Authenticate Git with your GitHub credentials?` → **Y** wählen
- `How would you like to authenticate GitHub CLI?` → **Login with a web browser** wählen

→ Browser öffnet sich, du loggst dich ein → **Fertig!** ✅

---

## Option B: Personal Access Token (Alternative)

Falls GitHub CLI nicht funktioniert:

### 1. Token erstellen
1. GitHub → Settings → Developer settings → Personal access tokens
2. **Generate new token**
3. Name: `culture-beat-push`
4. Scopes: ☑️ `repo` (alle Unterkästchen)
5. **Generate token**
6. Token **kopieren** (nur 1x sichtbar!)

### 2. Git konfigurieren
```bash
git config --global user.name "Vanessa-1010"
git config --global user.email "deine-email@example.com"
```

### 3. Beim Push eingeben
Wenn das Script fragt:
- Username: `Vanessa-1010`
- Password: **Dein Token einfügen** (nicht dein echtes GitHub-Passwort!)

---

## Option C: SSH (für Profis)

Falls du SSH-Keys bereits hast:
```bash
ssh-keygen -t ed25519 -C "deine-email@example.com"
cat ~/.ssh/id_ed25519.pub  # → Kopieren
```

Dann auf GitHub → Settings → SSH keys → **New SSH key** → einfügen

---

## ✅ Fertig?

Wenn du authentifiziert bist, kann das Script laufen:

```bash
bash /Users/admin/Library/Application\ Support/Claude/local-agent-mode-sessions/895d4997-a7c2-4ed9-8102-0052b7ee6719/8211e6b4-41b2-4d30-82d6-8411955e3f79/local_71058e18-d9b9-45d1-8c83-865a8c6fd412/outputs/push-to-github.sh
```

---

**Empfehlung:** Option A (GitHub CLI) - 30 Sekunden und du bist fertig! 🚀