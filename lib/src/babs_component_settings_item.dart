import 'package:babstrap_settings_screen/src/icon_style.dart';
import 'package:babstrap_settings_screen/src/settings_screen_utils.dart';
import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  IconData icons;
  IconStyle? iconStyle;
  String title;
  TextStyle? titleStyle;
  String? subtitle;
  TextStyle? subtitleStyle;
  Widget? trailing;
  VoidCallback onTap;

  SettingsItem(
      {required this.icons,
      this.iconStyle,
      required this.title,
      this.titleStyle,
      this.subtitle = "",
      this.subtitleStyle,
      this.trailing,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: (iconStyle != null && iconStyle!.withBackground!)
          ? Container(
              decoration: BoxDecoration(
                color: iconStyle!.backgroundColor,
                borderRadius: BorderRadius.circular(iconStyle!.borderRadius!),
              ),
              padding: EdgeInsets.all(5),
              child: Icon(
                icons,
                size: SettingsScreenUtils.settingsGroupIconSize,
                color: iconStyle!.iconsColor,
              ),
            )
          : Icon(
              icons,
              size: SettingsScreenUtils.settingsGroupIconSize,
            ),
      title: Text(
        title,
        style: titleStyle ?? TextStyle(fontWeight: FontWeight.bold),
        maxLines: 1,
      ),
      subtitle: Text(
        subtitle!,
        style: subtitleStyle ?? TextStyle(color: Colors.grey),
        maxLines: 1,
      ),
      trailing:
          (trailing != null) ? trailing : Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
