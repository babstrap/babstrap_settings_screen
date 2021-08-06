# Babstrap settings screen
This package helps you to display a nice settings screen with Flutter in a very simple and fast way.

Compatible with Android & iOS & Web.  

![Version 1.0.0](https://img.shields.io/badge/pub-v0.0.1-orange) [![Licence MIT](https://img.shields.io/apm/l/vim-mode)](https://choosealicense.com/licenses/mit) [![Twitter](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2FBabacar51193320)](https://twitter.com/ndongbabacar100)

## Showcase
<img width="400" alt="settingsscreenpreview" src="https://user-images.githubusercontent.com/65053170/128450473-7a71ecd5-576b-4a93-b9b3-8bb95f6ac304.png">

## Getting started

* add the following dependency in your `pubspact.yaml` file:
``` dart
dependencies:
  babstrap_settings_screen : "^lastest_version"
```
* add import in your `dart` code:
``` dart
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
```
* Example
``` dart
Padding(
  padding: const EdgeInsets.all(10),
  child: ListView(
    children: [
      SettingsGroup(
        items: [
          SettingsItem(
            onTap: () {},
            icons: CupertinoIcons.pencil_outline,
            iconStyle: IconStyle(),
            title: 'Appearance',
            subtitle: "Make Ziar'App yours",
          ),
          SettingsItem(
            onTap: () {},
            icons: Icons.dark_mode_rounded,
            iconStyle: IconStyle(
              iconsColor: Colors.white,
              withBackground: true,
              backgroundColor: Colors.red,
            ),
            title: 'Dark mode',
            subtitle: "Automatic",
            trailing: Switch.adaptive(
              value: false,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
      SettingsGroup(
        items: [
          SettingsItem(
            onTap: () {},
            icons: Icons.info_rounded,
            iconStyle: IconStyle(
              backgroundColor: Colors.purple,
            ),
            title: 'About',
            subtitle: "Learn more about Ziar'App",
          ),
        ],
      ),
      // You can add a settings title
      SettingsGroup(
        settingsGroupTitle: "Account",
        items: [
          SettingsItem(
            onTap: () {},
            icons: Icons.exit_to_app_rounded,
            title: "Sign Out",
          ),
          SettingsItem(
            onTap: () {},
            icons: CupertinoIcons.delete_solid,
            title: "Delete account",
            titleStyle: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ],
  ),
),
```

## Licence
Licence MIT