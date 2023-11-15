# Trivia

A new Flutter project.

## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

## Deploy

```sh
flutter build web --web-renderer canvaskit --release
gsutil cp -r build/web/* gs://flutterflow-prod-hosting/trivia/
```