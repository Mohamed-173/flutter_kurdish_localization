<p align="center">
  <img width="12.5%" src="https://raw.githubusercontent.com/aminsamad/flutter_kurdish_localization/master/pic/ku.png" alt="Kurdish Flag">
</p>
<p align="center">
  <img width="60%" src="https://raw.githubusercontent.com/aminsamad/flutter_kurdish_localization/master/pic/Designer.png" alt="Flutter Kurdish Localization">
</p>

<hr>

<div align="center">

# Flutter Kurdish Localization 🌍 - Improved Fork

**Complete localization support for Central Kurdish (Sorani) in Flutter applications**

[![Pub Version](https://img.shields.io/badge/pub-v1.0.0-blue)](https://pub.dev/packages/flutter_kurdish_localization)
[![Flutter](https://img.shields.io/badge/Flutter-Compatible-blue)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)
[![Kurdish](https://img.shields.io/badge/Language-Kurdish%20(Sorani)-red)](https://en.wikipedia.org/wiki/Sorani)

</div>

## 🚀 What's New in This Fork

This is an **improved and maintained fork** of the original flutter_kurdish_localization package. We've fixed critical issues and added new features while the original repository remains unmaintained:

### ✅ Fixed Issues
- **🔧 Dependencies Updated**: Upgraded `intl` package from `^0.19.0` to `^0.20.2` to resolve Flutter SDK compatibility issues
- **🛠️ Missing Implementations**: Added all missing abstract method implementations for `WidgetsLocalizations` and `CupertinoLocalizations`
- **📱 Complete Widget Support**: Full support for both Material and Cupertino design systems
- **🎯 Linter Errors Fixed**: Resolved all static analysis warnings and errors
- **📚 Better Documentation**: Comprehensive README with clear usage examples

### 🆕 New Features
- Complete button label translations (Copy, Cut, Paste, Select All, etc.)
- Directional navigation labels (Up, Down, Left, Right, etc.)
- Enhanced Cupertino iOS-style widget support
- Improved date and time formatting for Kurdish locale
- Better RTL (Right-to-Left) text direction handling

## 📱 Screenshots

<img src="https://raw.githubusercontent.com/aminsamad/flutter_kurdish_localization/master/pic/screenshoot_1.png" alt="Screenshot 1">

<hr>

<img src="https://raw.githubusercontent.com/aminsamad/flutter_kurdish_localization/master/pic/screenshoot_2.png" alt="Screenshot 2">

## 📦 Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  flutter_kurdish_localization: ^1.0.0
  intl: ^0.20.2
```

Then run:
```bash
flutter pub get
```

## 🔧 Usage

### Basic Setup

```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_kurdish_localization/flutter_kurdish_localization.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurdish Localization Demo',
      
      // Add these delegates for Kurdish localization
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        
        // Kurdish localization delegates
        KurdishMaterialLocalizations.delegate,      // Material Design components
        KurdishWidgetLocalizations.delegate,        // Basic widgets & RTL support
        KurdishCupertinoLocalizations.delegate,     // iOS-style components
      ],
      
      // Supported locales
      supportedLocales: [
        Locale('en', 'US'), // English
        Locale('ku'),       // Kurdish (Sorani)
      ],
      
      // Set Kurdish as default locale
      locale: Locale('ku'),
      
      home: MyHomePage(),
    );
  }
}
```

### Advanced Configuration

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        KurdishMaterialLocalizations.delegate,
        KurdishWidgetLocalizations.delegate,
        KurdishCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ku', 'IQ'), // Kurdish (Iraq)
      ],
      
      // Auto-detect system locale or fallback to Kurdish
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale?.languageCode == 'ku') {
          return Locale('ku');
        }
        return Locale('ku'); // Default to Kurdish
      },
      
      home: MyHomePage(),
    );
  }
}
```

## 🎯 Features

### ✨ Complete Localization Support
- **📅 Date & Time Formatting**: Kurdish months, weekdays, and time formats
- **🔤 Text Direction**: Full RTL (Right-to-Left) support
- **🎨 Material Design**: All Material components localized
- **🍎 Cupertino (iOS)**: Complete iOS-style widget support
- **⌨️ Input Methods**: Copy, cut, paste, select all functionality
- **🧭 Navigation**: Directional labels and accessibility support

### 📋 Supported Components
- Alert Dialogs
- Date/Time Pickers
- Navigation Drawers
- Snackbars
- Input Fields
- Buttons and Labels
- Context Menus
- Search Fields
- And much more!

## 🌐 Language Information

- **Language**: Central Kurdish (Sorani) - **کوردیی ناوەندی (سۆرانی)**
- **Script**: Arabic script with Kurdish-specific letters
- **Direction**: Right-to-Left (RTL)
- **Regions**: Primarily used in Iraq and Iran
- **ISO Code**: `ku`

## 📱 Demo App

Download and try the demo app:

<a href="https://github.com/aminsamad/flutter_kurdish_localization/blob/master/app-release(1).apk?raw=true" target="_blank">
  <img src="https://raw.githubusercontent.com/aminsamad/flutter_kurdish_localization/master/pic/download_button.png" style="width: 200px; height: 50px;" alt="Download Demo" />
</a>

## 🤝 Contributing

We welcome contributions! This fork is actively maintained and we're always looking to improve Kurdish localization support.

### Ways to Contribute:
- 🐛 Report bugs and issues
- 💡 Suggest new features
- 🔤 Improve translations
- 📖 Enhance documentation
- 🧪 Add tests

## 📝 Translations Available

All major Flutter components are translated including:

| Component | Kurdish Translation | Status |
|-----------|---------------------|---------|
| Copy | کۆپی کردن | ✅ |
| Cut | بڕین | ✅ |
| Paste | لکاندن | ✅ |
| Select All | هەموو هەڵبژاردن | ✅ |
| Cancel | هەڵوەشاندنەوە | ✅ |
| Back | گەڕانەوە | ✅ |
| Search | گەڕان | ✅ |
| Today | ئەمڕۆ | ✅ |
| Alert | ئاگادارکردنەوە | ✅ |

## 🔗 Links

- 📦 [Original Package](https://github.com/aminsamad/flutter_kurdish_localization/) (Unmaintained)
- 🐛 [Report Issues](https://github.com/your-username/flutter_kurdish_localization/issues)
- 💬 [Discussions](https://github.com/your-username/flutter_kurdish_localization/discussions)
- 📚 [Flutter Internationalization Guide](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Original package by [Amin Samad](https://github.com/aminsamad)
- Kurdish language community for translations
- Flutter team for internationalization framework

---

<div align="center">

**Made with ❤️ for the Kurdish community**

*If this package helped you, please consider giving it a ⭐ on GitHub!*

</div>
