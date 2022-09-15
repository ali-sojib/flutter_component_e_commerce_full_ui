import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key, this.backButton}) : super(key: key);
  final Widget? backButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton,
      ),
      body: const Center(child: Text('Privacy Policy Page')),
    );
  }
}
