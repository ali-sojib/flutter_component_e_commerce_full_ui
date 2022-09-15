import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../components/icon_with_background.dart';
import '../../../constants/constants.dart';
import '../../approot/app_root.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Form(
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                prefixIcon: IconWithBackground(iconData: IconlyBold.message),
                labelText: 'Email',
                hintText: 'you@email.com',
              ),
            ),
            const SizedBox(height: AppDefaults.margin),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: IconWithBackground(iconData: IconlyBold.lock),
                labelText: 'Password',
                hintText: '*********',
              ),
            ), // Forgot Password Button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AppRoot(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot Password?',
                  )),
            ),

            /// Login Button
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AppRoot(),
                    ),
                  );
                },
                child: const Text('Log In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
