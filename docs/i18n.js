const translations = {
  fr: {
    'hero.eyebrow': "Application Apple Watch",
    'hero.tagline': "Compte chaque coup de tes parties de ping-pong, directement depuis ton poignet.",
    'hero.cta': "Bientôt sur l'App Store",
    'hero.cta_secondary': "En savoir plus",
    'watch.swings': "Coups",
    'watch.peak': "Pic",

    'features.title': "Fonctionnalités",
    'features.swings.title': "Détection automatique",
    'features.swings.desc': "Accéléromètre à 50 Hz. Détecte coups droits et revers sans aucune action de ta part.",
    'features.score.title': "Score en direct",
    'features.score.desc': "Deux grandes zones tap pour toi et ton adversaire. Long press pour corriger. Aucun menu pendant la partie.",
    'features.standalone.title': "Native Apple Watch",
    'features.standalone.desc': "Tourne intégralement sur ta Watch. Pas besoin d'iPhone pendant le jeu. BPM et calories trackés via HealthKit.",
    'features.privacy.title': "Confidentialité native",
    'features.privacy.desc': "Toutes les données restent sur ta Watch. Aucune analytique, aucun tracking, aucun cloud, aucun compte requis.",

    'how.title': "Comment ça marche",
    'how.s1.title': "Tap Démarrer",
    'how.s1.desc': "Une séance de tennis de table démarre. Le timer tourne, les coups commencent à être comptés.",
    'how.s2.title': "Joue",
    'how.s2.desc': "Swipe entre la page Stats et la page Score. Tape pour ajouter un point quand tu veux.",
    'how.s3.title': "Tap Stop",
    'how.s3.desc': "Ta session est sauvegardée automatiquement. Revois ton historique et regarde ton pic d'accélération s'améliorer au fil du temps.",

    'privacy.title': "Politique de confidentialité",
    'privacy.p1': "Ch'ti Pong ne collecte, ne transmet ni ne partage aucune donnée personnelle. Toutes tes données de session (durée, nombre de coups, pic d'accélération, score) sont stockées localement sur ton Apple Watch dans un fichier JSON, à l'intérieur du sandbox de l'application.",
    'privacy.p2': "L'application demande l'accès à HealthKit uniquement pour démarrer et arrêter une séance d'entraînement et pour lire ta fréquence cardiaque et l'énergie active pendant la session. Ces données sont utilisées en temps réel et stockées par HealthKit, pas par Ch'ti Pong. Tu peux révoquer cet accès à tout moment dans les Réglages de la Watch.",
    'privacy.p3': "L'application demande l'accès aux données de mouvement (accéléromètre) uniquement pendant une session active, pour détecter les coups. Aucune donnée de mouvement n'est stockée ou transmise.",
    'privacy.p4': "Aucun SDK tiers n'est embarqué dans l'application. Pas d'analytique, pas de rapport de crash, pas de publicité. Supprimer l'application supprime toutes les données.",
    'privacy.contact': "Pour toute question relative à la confidentialité, contacte <a href=\"mailto:contact@chti-tech.eu\">contact@chti-tech.eu</a>.",

    'support.title': "Support",
    'support.intro': "Besoin d'aide, un bug à signaler, une fonctionnalité à proposer ? Envoie-nous un email — on lit tout.",
    'support.faq.title': "FAQ",
    'support.faq.q1': "Ch'ti Pong nécessite-t-il un iPhone ?",
    'support.faq.a1': "Non. L'app tourne en standalone sur ton Apple Watch. Un iPhone n'est nécessaire qu'une seule fois pour installer l'app depuis l'App Store.",
    'support.faq.q2': "Quels modèles d'Apple Watch sont supportés ?",
    'support.faq.a2': "Toute Apple Watch sous watchOS 26.5 ou plus récent (Series 6+, SE 2+, Ultra 1+).",
    'support.faq.q3': "Mes données sont-elles envoyées sur un serveur ?",
    'support.faq.a3': "Non. Toutes les données restent sur ta Watch. Pas de compte, pas de sync cloud, pas d'analytique.",
    'support.faq.q4': "Quelle est la précision de la détection des coups ?",
    'support.faq.a4': "L'algorithme utilise un seuil de pic à 3g et un cooldown de 0.25s. Calibré sur des sessions réelles. Fiable pour les coups francs ; les mouvements doux d'échauffement peuvent être ignorés par design.",

    'footer.privacy': "Confidentialité",
    'footer.support': "Support",
    'footer.copy': "© 2026 CHTI-TECH. Tous droits réservés."
  },
  en: {
    'hero.eyebrow': "Apple Watch app",
    'hero.tagline': "Track every swing of your table tennis sessions, right from your wrist.",
    'hero.cta': "Coming soon on the App Store",
    'hero.cta_secondary': "Learn more",
    'watch.swings': "Swings",
    'watch.peak': "Peak",

    'features.title': "Features",
    'features.swings.title': "Automatic swing detection",
    'features.swings.desc': "Built-in accelerometer sampled at 50 Hz. Detects forehand and backhand strikes without you doing anything.",
    'features.score.title': "Live score counter",
    'features.score.desc': "Two big tap zones for you and your opponent. Long-press to undo. No fiddly menus during play.",
    'features.standalone.title': "Apple Watch native",
    'features.standalone.desc': "Runs entirely on your Watch. No iPhone needed during the game. Heart rate and calories tracked via HealthKit.",
    'features.privacy.title': "Privacy by design",
    'features.privacy.desc': "All session data stays on your Watch. No analytics, no tracking, no cloud, no account required.",

    'how.title': "How it works",
    'how.s1.title': "Tap Start",
    'how.s1.desc': "A table tennis workout session begins. The timer runs, swings start being counted.",
    'how.s2.title': "Play",
    'how.s2.desc': "Swipe between the Stats page and the Score page. Tap to add a point whenever you want.",
    'how.s3.title': "Tap Stop",
    'how.s3.desc': "Your session is saved automatically. Review your history and watch your peak acceleration improve over time.",

    'privacy.title': "Privacy Policy",
    'privacy.p1': "Ch'ti Pong does not collect, transmit or share any personal data. All your session data (duration, swing count, peak acceleration, score) is stored locally on your Apple Watch in a JSON file inside the app sandbox.",
    'privacy.p2': "The app requests access to HealthKit only to start and end a workout session and to read your heart rate and active energy during the session. This data is used in real-time and saved by HealthKit, not by Ch'ti Pong. You can revoke this access at any time in the Watch Settings.",
    'privacy.p3': "The app requests access to motion data (accelerometer) only during an active session, to detect swings. No motion data is stored or transmitted.",
    'privacy.p4': "No third-party SDK is bundled in the app. No analytics, no crash reporting, no ads. Deleting the app deletes all data.",
    'privacy.contact': "For any privacy-related question, contact <a href=\"mailto:contact@chti-tech.eu\">contact@chti-tech.eu</a>.",

    'support.title': "Support",
    'support.intro': "Need help, found a bug, want a feature? Drop us an email — we read everything.",
    'support.faq.title': "FAQ",
    'support.faq.q1': "Does Ch'ti Pong require an iPhone?",
    'support.faq.a1': "No. The app runs standalone on your Apple Watch. An iPhone is only needed once to install the app from the App Store.",
    'support.faq.q2': "Which Apple Watch models are supported?",
    'support.faq.a2': "Any Apple Watch running watchOS 26.5 or later (Series 6+, SE 2+, Ultra 1+).",
    'support.faq.q3': "Is my data sent to a server?",
    'support.faq.a3': "No. All data stays on your Watch. There is no account, no cloud sync, no analytics.",
    'support.faq.q4': "How accurate is swing detection?",
    'support.faq.a4': "The algorithm uses a 3g peak threshold and a 0.25s cooldown. Calibrated on real sessions. Reliable for clear strikes; gentle warm-up swings may be missed by design.",

    'footer.privacy': "Privacy",
    'footer.support': "Support",
    'footer.copy': "© 2026 CHTI-TECH. All rights reserved."
  }
};

function setLang(lang) {
  if (!translations[lang]) return;
  document.querySelectorAll('[data-i18n]').forEach(el => {
    const key = el.getAttribute('data-i18n');
    const value = translations[lang][key];
    if (value !== undefined) {
      // Allow HTML in translations (used for the privacy contact link).
      el.innerHTML = value;
    }
  });
  document.documentElement.lang = lang;
  document.querySelectorAll('.lang-switch button').forEach(btn => {
    btn.setAttribute('aria-pressed', btn.dataset.lang === lang ? 'true' : 'false');
  });
  try { localStorage.setItem('chti-pong-lang', lang); } catch (_) { /* private mode */ }
}

function initLang() {
  let saved = null;
  try { saved = localStorage.getItem('chti-pong-lang'); } catch (_) { /* private mode */ }
  if (saved && translations[saved]) return saved;
  const nav = (navigator.language || 'en').toLowerCase();
  return nav.startsWith('fr') ? 'fr' : 'en';
}

document.addEventListener('DOMContentLoaded', () => {
  setLang(initLang());
  document.querySelectorAll('.lang-switch button').forEach(btn => {
    btn.addEventListener('click', () => setLang(btn.dataset.lang));
  });
});
