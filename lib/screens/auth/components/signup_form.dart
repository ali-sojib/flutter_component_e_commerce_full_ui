import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../components/icon_with_background.dart';
import '../../../constants/constants.dart';
import '../../approot/app_root.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
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
                prefixIcon: IconWithBackground(iconData: IconlyBold.profile),
                labelText: 'Name',
                hintText: 'John Doe',
              ),
            ),
            const SizedBox(height: AppDefaults.margin),
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
            ),
            // Forgot Password Button
            const SizedBox(height: AppDefaults.margin),
            Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Checkbox(value: true, onChanged: (v) {}),
                    const Text('I accept all the '),
                    Text(
                      'Terms & Conditions',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                )),

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
                child: const Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
