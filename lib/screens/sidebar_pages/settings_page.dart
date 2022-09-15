import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../components/icon_with_background.dart';
import '../../constants/app_colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key, this.backButton}) : super(key: key);
  final Widget? backButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton,
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const ListTile(
            leading: IconWithBackground(iconData: IconlyBold.message),
            title: Text('Email Support'),
            trailing: Icon(IconlyLight.arrowRight2),
          ),
          const SizedBox(height: 16),
          const ListTile(
            leading: IconWithBackground(iconData: IconlyBold.infoSquare),
            title: Text('Faq'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          const SizedBox(height: 16),
          const ListTile(
            leading: IconWithBackground(iconData: IconlyBold.lock),
            title: Text('Privacy Statements'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading:
                const IconWithBackground(iconData: IconlyBold.notification),
            title: const Text('Notification'),
            trailing: CupertinoSwitch(
              onChanged: (v) {},
              value: true,
              activeColor: AppColors.primary,
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const IconWithBackground(iconData: IconlyBold.paperUpload),
            title: const Text('Update'),
            trailing: CupertinoSwitch(
              onChanged: (v) {},
              value: true,
              activeColor: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
