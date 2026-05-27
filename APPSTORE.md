# App Store Connect — Kit de soumission Ch'ti Pong

Tout ce qu'il faut pour soumettre l'app : textes prêts à copier-coller, réponses au privacy questionnaire, procédure screenshots, procédure archive + upload.

URL App Store Connect : https://appstoreconnect.apple.com/

---

## 1. Création de l'app

App Store Connect → My Apps → **+** → New App.

| Champ | Valeur |
|---|---|
| Platform | **watchOS** uniquement (Watch-only app) |
| Name | **Ch'ti Pong** |
| Primary Language | **French (France)** |
| Bundle ID | `fr.chtitech.PingPongCoach.watchkitapp` (existant) |
| SKU | `CHTIPONG001` (libre, identifiant interne) |
| User Access | Full Access |

---

## 2. Informations de l'app

### Catégories

- **Primary** : `Health & Fitness`
- **Secondary** : `Sports`

### Age Rating

Questionnaire complet → tout sur **None** (aucun contenu sensible) → **Result: 4+**

### Copyright

```
© 2026 CHTI-TECH
```

### URLs

| Champ | Valeur |
|---|---|
| Marketing URL | `https://sylvainboutet.github.io/chti-pong/` |
| Support URL | `https://sylvainboutet.github.io/chti-pong/#support` |
| Privacy Policy URL | `https://sylvainboutet.github.io/chti-pong/#privacy` |

### Contact Information

- Première soumission demande coordonnées du contact (review Apple) :
  - First Name / Last Name : Sylvain Boutet
  - Phone : (ton numéro pro)
  - Email : `contact@chti-tech.eu` (ou `sbt@irokoo.fr` si tu préfères)

---

## 3. Textes localisés (EN + FR)

App Store Connect te demande des textes par langue. Coche **English** et **French** dans les langues supportées de l'app.

### 🇬🇧 English (US)

**Name** (30 char) :
```
Ch'ti Pong
```

**Subtitle** (30 char) :
```
Table tennis tracker
```

**Promotional Text** (170 char — éditable sans review) :
```
Track every swing of your table tennis games right from your wrist. Automatic swing detection, live score counter, session history. 100% private, no account.
```

**Description** (4000 char) :
```
Ch'ti Pong turns your Apple Watch into a smart table tennis companion.

KEY FEATURES

• Automatic swing detection
Built-in accelerometer sampled at 50 Hz. Each strike is counted live, no need to press anything.

• Live score counter
Two big tap zones for you and your opponent. Tap to add a point, long-press to undo. Designed for one-handed use during a real game.

• Apple Watch native
Runs entirely on your Watch. No iPhone needed during the game.

• HealthKit integration
Heart rate and active calories tracked via a standard table tennis workout session, fully recognized by the Activity app and Apple Health.

• Peak acceleration
See your strongest hit of the session. Watch your progress over time on a built-in chart.

• Session history
Every game is saved locally. Browse past sessions, see the trend.

• Privacy by design
No analytics. No tracking. No cloud. No account. All your data stays on your Watch. Delete the app to delete all data.

PERFECT FOR

• Casual table tennis players who want a digital scorecard
• Training sessions where you want to count your swings
• Tracking your progress and stamina over time
• Anyone curious about how fast they really hit the ball

REQUIREMENTS

• Apple Watch Series 6 or later
• Apple Watch SE (2nd gen) or later
• Apple Watch Ultra or later
• watchOS 26.5 or later

Made with care by CHTI-TECH in Valenciennes, France.
```

**Keywords** (100 char total, séparés par virgule, pas d'espace après) :
```
table tennis,ping pong,tracker,watch,sport,fitness,swing,score,workout,counter
```

**What's New in This Version** (4000 char, première soumission = description initiale) :
```
Initial release.
- Automatic swing detection
- Live score counter
- Peak acceleration tracking
- Session history with evolution chart
- French and English localization
- 100% on-device, no account required
```

---

### 🇫🇷 Français

**Name** (30 char) :
```
Ch'ti Pong
```

**Subtitle** (30 char) :
```
Coach tennis de table
```

**Promotional Text** (170 char — éditable sans review) :
```
Compte chaque coup de tes parties de ping-pong, directement depuis ton poignet. Détection auto, score, historique. 100% privé, aucun compte requis.
```

**Description** (4000 char) :
```
Ch'ti Pong transforme ton Apple Watch en compagnon intelligent pour tes parties de tennis de table.

FONCTIONNALITÉS

• Détection automatique des coups
Accéléromètre interne à 50 Hz. Chaque coup est compté en direct, sans rien presser.

• Compteur de score en direct
Deux grandes zones tap pour toi et ton adversaire. Tape pour ajouter un point, long press pour corriger. Conçu pour un usage à une main pendant un vrai match.

• Native Apple Watch
Tourne intégralement sur ta Watch. Pas besoin d'iPhone pendant le jeu.

• Intégration HealthKit
Fréquence cardiaque et calories actives suivies via une séance d'entraînement standard tennis de table, parfaitement reconnue par l'app Activité et Apple Santé.

• Pic d'accélération
Vois ton coup le plus puissant de la session. Suis ta progression au fil du temps sur un graphique intégré.

• Historique des sessions
Chaque partie est sauvegardée localement. Parcours tes sessions passées, vois la tendance.

• Confidentialité native
Pas d'analytique. Pas de tracking. Pas de cloud. Pas de compte. Toutes tes données restent sur ta Watch. Supprimer l'app supprime toutes les données.

POUR QUI

• Joueurs occasionnels de tennis de table qui veulent un carnet de score numérique
• Sessions d'entraînement pour compter les coups
• Suivi de progression et d'endurance au fil du temps
• Curieux de savoir à quelle vitesse ils tapent vraiment la balle

PRÉREQUIS

• Apple Watch Series 6 ou plus récente
• Apple Watch SE (2e gen) ou plus récente
• Apple Watch Ultra ou plus récente
• watchOS 26.5 ou plus récent

Fait avec soin par CHTI-TECH à Valenciennes.
```

**Keywords** (100 char total, séparés par virgule, pas d'espace après) :
```
tennis de table,ping pong,tracker,watch,sport,fitness,coup,score,séance,compteur
```

**What's New in This Version** :
```
Version initiale.
- Détection automatique des coups
- Compteur de score en direct
- Suivi du pic d'accélération
- Historique des sessions avec graphique d'évolution
- Localisation française et anglaise
- 100% sur l'appareil, aucun compte requis
```

---

## 4. Privacy Questionnaire (App Privacy)

App Store Connect → App Privacy → Get Started → Tu réponds aux questions data collection.

**Question 1** : *Do you or your third-party partners collect data from this app?*
→ **No, we do not collect data from this app**

(C'est tout. L'app ne collecte rien, pas d'analytics, pas de SDK tiers, tout reste local. Une seule case à cocher.)

**Note** : HealthKit data ne compte PAS comme "collected by you" car c'est géré par Apple/HealthKit, pas par l'app. L'app n'envoie rien nulle part.

---

## 5. Screenshots Watch (obligatoires)

Apple exige des screenshots pour chaque modèle Watch supporté. Tu peux uploader un seul set qui sera dispatché sur tous les modèles compatibles, ou un set par taille.

### Tailles requises

| Taille Watch | Résolution | Modèles |
|---|---|---|
| **49mm** | 410 × 502 | Ultra, Ultra 2, Ultra 3 |
| **46mm** | 416 × 496 | Series 10, 11 (46mm) |
| **45mm** | 396 × 484 | Series 7-9, 10 (45mm) |
| **44mm** | 368 × 448 | Series 4-6, SE |
| **42mm** | 360 × 444 | Series 3 (deprecated) |

App Store Connect te demandera au minimum les tailles **45mm + 49mm** (modèles principaux 2026).

### Méthode 1 : Capture depuis le simulateur (le plus simple)

Dans Xcode :
1. Sélectionne le simulateur cible en haut : **"Apple Watch Series 11 (46mm)"** par exemple
2. ⌘R → l'app démarre dans le simulateur
3. Navigue à l'écran que tu veux capturer (idle, running stats, running score, history, detail)
4. Dans la fenêtre Simulator : **File → New Screen Shot** (ou ⌘S)
5. Capture sauvée sur le Desktop

Refaire pour chaque modèle :
- Apple Watch Ultra 3 (49mm) → captures 49mm
- Apple Watch Series 11 (46mm) → captures 46mm
- Apple Watch Series 11 (42mm) ou SE 3 (40mm) → captures plus petites

### Méthode 2 : Capture depuis ta Watch réelle (Ultra 2)

Sur la Watch : appui simultané **Digital Crown + bouton latéral** → capture envoyée à l'iPhone Papyphone2 dans Photos.

Puis transférer les screenshots de Papyphone2 vers Mac via AirDrop ou iCloud.

**Attention** : la capture native fait 410×502 (Ultra 2). Pour les autres tailles, il faudra repasser par le simulateur.

### Sets de screenshots recommandés (5 captures)

1. **Écran idle** — boutons Start + History
2. **Écran running Stats** — timer + swings + BPM + kcal + peak
3. **Écran running Score** — Me/Opp gros chiffres
4. **Écran History** — liste sessions + chart évolution peak
5. **Écran Session Detail** — détails d'une session

Pour avoir des stats jolies (pas zéro), tu peux faire tourner l'app un peu avant la capture, ou utiliser le simulateur qui génère un BPM factice.

### Upload

App Store Connect → Version 1.0 → Screenshots → glisser-déposer par taille.

---

## 6. Build (Archive + Upload via Xcode)

### Préparation

1. Dans Xcode → cible **PingPongCoach Watch App** → onglet **General**
2. Vérifie :
   - **Version** : `1.0.0`
   - **Build** : `1`
   - **Display Name** : `Ch'ti Pong`
   - **Bundle Identifier** : `fr.chtitech.PingPongCoach.watchkitapp`
3. Onglet **Signing & Capabilities** :
   - **Automatically manage signing** ✅
   - **Team** : **CHTI-TECH (BBNZX46U4W)**
   - **HealthKit** capability ✅

### Archive

1. En haut, change la cible de **"Apple Watch de Sylvain"** (device réel) ou simulateur vers **"Any watchOS Device (arm64, arm64_32)"** (obligatoire pour archive)
2. Menu **Product → Archive** (⌃⇧⌘B)
3. Patience : build release prend 2-5 min
4. À la fin, **Organizer** s'ouvre automatiquement avec ton archive listée

### Upload

Dans Organizer :
1. Sélectionne ton archive (la plus récente)
2. **Distribute App** (bouton bleu en haut à droite)
3. Sélectionne **App Store Connect** → Next
4. **Upload** (vs Export) → Next
5. **Automatically manage signing** → Next
6. Récap → **Upload**
7. Upload prend 1-3 min
8. **Done** quand fini ; ton build apparaît dans App Store Connect ~5-15 min après (processing Apple)

### Vérification côté App Store Connect

1. App Store Connect → My Apps → Ch'ti Pong → **TestFlight**
2. Ton build apparaît avec status **Processing** (5-15 min) puis **Ready to Submit**
3. (Optionnel) Tester en TestFlight avant submit en prod

---

## 7. Submission

App Store Connect → version **1.0 Prepare for Submission** :

1. Section **Build** → clique **+ Build** → sélectionne ton build uploadé
2. Vérifie tous les champs sont remplis (icônes vertes partout dans la sidebar)
3. **Add for Review** (en haut à droite)
4. Réponses aux export compliance :
   - Uses encryption? → **No** (notre app n'a pas de crypto custom)
5. **Submit for Review**

### Délai review Apple

- En moyenne : **24-48h**
- Watch apps simples : souvent < 24h
- Si rejeté : Apple t'envoie la raison, tu corriges, tu re-soumets

Pendant ce temps, le status passe par : Waiting for Review → In Review → (Approved / Rejected).

---

## 8. Une fois approuvée

L'app passe en status **Pending Developer Release** (si tu as choisi manual release) ou **Ready for Sale** (auto release).

Tu peux choisir :
- **Manual release** : tu choisis le moment où l'app devient publique
- **Auto release** : disponible dès approbation

Recommandation : **manual release** pour une v1 — ça te laisse le temps de tweeter / annoncer.

---

## Checklist finale avant Submit

- [ ] Bundle ID `fr.chtitech.PingPongCoach.watchkitapp` configuré
- [ ] Team CHTI-TECH sélectionnée
- [ ] Version 1.0.0 / Build 1
- [ ] Capability HealthKit + 3 clés usage description
- [ ] Page promo en ligne (https://sylvainboutet.github.io/chti-pong/)
- [ ] App créée dans App Store Connect (watchOS)
- [ ] Textes EN + FR copiés
- [ ] Keywords EN + FR
- [ ] URLs Marketing/Support/Privacy collées
- [ ] Catégorie Health & Fitness / Sports
- [ ] Age Rating 4+
- [ ] Privacy Questionnaire "No data collected"
- [ ] Screenshots 49mm + 46mm (45mm si possible) uploadés
- [ ] Build uploadé via Xcode Archive
- [ ] Build sélectionné dans la version 1.0
- [ ] Export compliance : No encryption
- [ ] Submit for Review
