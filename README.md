# Babstrap settings screen
This package helps you to display a nice settings screen with Flutter in a very simple and fast way.

Compatible with Android & iOS & Web.  

![Version 0.0.3](https://img.shields.io/badge/pub-v0.0.3-orange) [![Licence MIT](https://img.shields.io/apm/l/vim-mode)](https://choosealicense.com/licenses/mit) [![Twitter](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2FBabacar51193320)](https://twitter.com/ndongbabacar100)

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
      // User card
      BigUserCard(
        cardColor: Colors.red,
        userName: "Babacar Ndong",
        userProfilePic: AssetImage("assets/logo.png"),
        cardActionWidget: SettingsItem(
          icons: Icons.edit,
          iconStyle: IconStyle(
            withBackground: true,
            borderRadius: 50,
            backgroundColor: Colors.yellow[600],
          ),
          title: "Modify",
          subtitle: "Tap to change your data",
          onTap: () {
            print("OK");
          },
        ),
      ),
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

## Components
### SettingsGroup :

| Parameters                  | Type               | Description                                                       |
|-----------------------------|--------------------|-------------------------------------------------------------------|
| __settingsGroupTitle__      | String?            | Use it to add a Title for the group                               |
| __settingsGroupTitleStyle__ | TextStyle?         | Adapt the style of the title to your liking                       |
| __items__                   | List<SettingsItem> | Use it to add the __SettingsItem__ allowing the user to do action |
| __iconItemSize__            | double?            | Use it to increase or decrease all __SettingsItem__ icon size     |

## Licence
Licence MIT