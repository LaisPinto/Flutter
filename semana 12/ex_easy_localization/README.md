# ex_easy_localization

A new Flutter project. By Laís

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

##Comandos para gerar respectivamente codegen_loader.g e loader_keys.g 
##generate locale_keys to internationalization
- dart run easy_localization:generate -S "assets/translations" -O "lib/translations"
- dart run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys