# 🎬 Godot Video Converter

[![Made with Godot](https://img.shields.io/badge/Made%20with-Godot%204-478cbf.svg?style=for-the-badge&logo=godot)](https://godotengine.org)

Un plugin **Godot** qui permet de **convertir des vidéos via FFmpeg** en format `.ogg` compatible avec Godot lors de l'import.

---

## ⚙️ Fonctionnalités

- Conversion automatique de vidéos en `.ogg` lisible par Godot.  
- Intégration directe dans le processus d'import de Godot.  
- Facile à utiliser pour tous les projets Godot nécessitant des vidéos.  

---

## 🛠 Installation

1. Clonez ce dépôt dans le dossier `addons` de votre projet Godot :

```bash
git clone https://github.com/GamagoRat/godot-video-converter.git addons/videoconverter
````

2. Activez le plugin dans Godot via :
   `Project` → `Project Settings` → `Plugins` → `VideoConverter` → `Enable`.

3. Assurez-vous que **FFmpeg** est installé et accessible depuis votre système.

---

## 📚 Utilisation

1. Ajoutez vos fichiers vidéo dans le projet.
2. Godot convertira automatiquement les vidéos en `.ogg` lors de l'import.
3. Utilisez-les dans vos scènes comme n’importe quel autre `VideoPlayer`.

---

## 💡 Conseils

* Vérifiez que vos vidéos sont dans un format compatible avec FFmpeg.
* Pour de meilleures performances, utilisez des vidéos de résolution adaptée à votre projet.

---

## 🤝 Contributions

Nous acceptons toutes les contributions !

* Améliorez le plugin, proposez de nouvelles fonctionnalités ou corrigez des bugs.
* Merci de respecter les bonnes pratiques de Git : pull requests claires, code lisible, documentation fournie.

---

## 🔗 Ressources

* [FFmpeg](https://ffmpeg.org) – outil de conversion vidéo utilisé par le plugin
* [Godot Engine](https://godotengine.org) – moteur de jeu utilisé

---

Nous espérons que ce plugin vous sera utile pour vos projets Godot ! 🚀
