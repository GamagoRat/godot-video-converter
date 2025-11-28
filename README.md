<div align="center">

# Godot Video Converter

[![Made with Godot](https://img.shields.io/badge/Made%20with-Godot%204-478cbf.svg?style=for-the-badge&logo=godot)](https://godotengine.org) [![Release](https://img.shields.io/github/v/release/GamagoRat/godot-video-converter?style=for-the-badge&logo=github)](https://github.com/GamagoRat/godot-video-converter/releases)

</div>

Un plugin **Godot** pour **convertir automatiquement des vidéos en `.ogg`** compatibles avec Godot via **FFmpeg** lors de l'import. Idéal pour intégrer facilement des vidéos dans vos projets Godot sans vous soucier du format.

---

## 📦 Obtenir le plugin

Le plugin se trouve dans les **releases GitHub** :  
[Releases · GamagoRat/godot-video-converter](https://github.com/GamagoRat/godot-video-converter/releases)

---

## ⚙️ Fonctionnalités

- Conversion automatique des vidéos en `.ogg` lisibles par Godot.
- Intégration directe dans le processus d'import.
- Facile à utiliser, même pour ceux qui ne sont pas développeurs.
- Compatible avec tous les projets Godot nécessitant des vidéos.
- Utilisation d'un chemin configurable pour FFmpeg.

⚠️ **Nécessite FFmpeg** installé sur votre système pour fonctionner correctement.

⚠️ **Ne pas réimporter une vidéo référencée dans une scène** pour éviter les erreurs de chargement (veuillez supprimer la référence avant de réimporter).

⚠️ Les versions officielles actuelles de FFmpeg comportent quelques bogues dans leur multiplexeur Ogg/Theora. Il est fortement recommandé d'utiliser l'une des dernières versions statiques quotidiennes ou de compiler à partir de leur branche principale pour bénéficier des derniers correctifs.

## 🛠 Installation

1. Clonez le dépôt dans le dossier `addons` de votre projet Godot :

```bash
git clone https://github.com/GamagoRat/godot-video-converter.git addons/videoconverter
```

2. Activez le plugin dans Godot via :
   `Project` → `Project Settings` → `Plugins` → `VideoConverter` → `Enable`.

3. Assurez-vous que **FFmpeg** est installé et accessible depuis votre système.

---

## 📚 Utilisation

1. Ajoutez vos fichiers vidéo dans le projet.
2. Lors de l'import, le plugin convertira automatiquement les vidéos en `.ogg`.
3. Utilisez-les ensuite dans vos scènes comme un `VideoPlayer` classique.

---

## 💡 Conseils

- Vérifiez que vos vidéos sont dans un format compatible avec FFmpeg.
- Pour de meilleures performances, adaptez la résolution de la vidéo à vos besoins de projet.
- Testez le plugin avec un petit échantillon avant d’importer des vidéos lourdes.

---

## 🤝 Contributions

Toutes les contributions sont **les bienvenues** !

- Vous pouvez améliorer le plugin, ajouter des fonctionnalités ou corriger des bugs.
- Merci de respecter les bonnes pratiques : pull requests claires, code lisible, documentation fournie.

---

## 🔗 Ressources

- [FFmpeg](https://ffmpeg.org) – outil de conversion vidéo utilisé par le plugin
- [Godot Engine](https://godotengine.org) – moteur de jeu utilisé
- [Godot Documentation FFmpeg](https://docs.godotengine.org/fr/4.x/tutorials/animation/playing_videos.html#doc-playing-videos-recommended-theora-encoding-settings) – Playing video recommended Theora encoding settings

---

Nous espérons que ce plugin vous facilitera l’intégration de vidéos dans vos projets Godot ! 🚀
