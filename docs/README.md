# Ch'ti Pong — promo page

Landing page bilingue FR/EN pour l'app Apple Watch **Ch'ti Pong** (par CHTI-TECH).

Sert également de :
- **Marketing URL** App Store Connect
- **Support URL** (obligatoire App Store)
- **Privacy Policy URL** (obligatoire App Store, section `#privacy` ancrée)

## Structure

```
docs/
├── index.html       # Mono-page bilingue (clés data-i18n)
├── style.css        # Charte CHTI-TECH (#92D050 / #092326 / Agdasima)
├── i18n.js          # Toggle FR/EN + persistance localStorage + détection navigator
├── assets/
│   └── logo-chti-tech.png   # Logo officiel CHTI-TECH (500×500)
└── README.md        # Ce fichier
```

## Test local

```bash
cd docs
python3 -m http.server 8000
# Ouvrir http://localhost:8000
```

Ou ouvrir `index.html` directement dans Safari/Chrome (file://).

## Déploiement GitHub Pages

1. Initialiser le repo Git à la racine du projet `chti-pong/` :
   ```bash
   cd ../  # racine chti-pong/
   git init
   git add docs/
   git commit -m "Add promo page for App Store submission"
   ```
2. Créer un repo public sur GitHub (`chti-pong` ou `chti-pong-web`).
3. Push :
   ```bash
   git remote add origin git@github.com:SylvainBoutet/chti-pong.git
   git branch -M main
   git push -u origin main
   ```
4. Sur GitHub → **Settings → Pages** :
   - Source : **Deploy from a branch**
   - Branch : **main** / Folder : **/docs**
   - Save
5. URL publique disponible ~2 min après : `https://sylvainboutet.github.io/chti-pong/`

## Custom domain (optionnel)

Pour servir sous `chtipong.chti-tech.eu` ou `chti-tech.eu/chtipong` :
1. Settings → Pages → Custom domain → entrer le domaine
2. Côté DNS (provider du domaine `chti-tech.eu`) : ajouter un CNAME `chtipong → sylvainboutet.github.io`
3. Cocher "Enforce HTTPS" une fois le certificat émis (~10 min)

## URLs à fournir à App Store Connect

| Champ | Valeur (ajuster selon repo/domaine) |
|---|---|
| Marketing URL | `https://sylvainboutet.github.io/chti-pong/` |
| Support URL | `https://sylvainboutet.github.io/chti-pong/#support` |
| Privacy Policy URL | `https://sylvainboutet.github.io/chti-pong/#privacy` |

## Éditer le contenu

- Textes des sections : `i18n.js` (objet `translations.fr` / `translations.en`)
- Structure / nouvelles sections : `index.html` (ajouter balises `data-i18n="ma.cle"` puis ajouter la clé dans `i18n.js`)
- Styles : `style.css` (variables CSS en haut du fichier pour ajuster la charte)

## Charte appliquée

- **Primary green** : `#92D050` — CTA, accents, titres de cartes
- **Brand black** : `#092326` — background dark mode
- **Typo titres** : Agdasima (Google Fonts)
- **Typo body** : Inter (Google Fonts)
- Dark mode par défaut (cohérent avec le brand)
