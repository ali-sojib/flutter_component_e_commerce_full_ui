import 'package:flutter/material.dart';

class AbouUsPage extends StatelessWidget {
  const AbouUsPage({Key? key, this.backButton}) : super(key: key);
  final Widget? backButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton,
      ),
      body: const Center(
        child: Text('About Us Page'),
      ),
    );
  }
}
