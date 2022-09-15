import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../components/network_image.dart';
import '../../../constants/constants.dart';
import '../data/onboarding_data.dart';

class OnboardingContentView extends StatelessWidget {
  const OnboardingContentView({
    Key? key,
    required this.board,
    required this.currentIndex,
    required this.onNext,
  }) : super(key: key);

  final OnboardingModel board;
  final int currentIndex;
  final void Function() onNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: NetworkImageWithLoader(
              board.imageLink,
              fit: BoxFit.cover,
            ),
          ),
        ),

        /// Title, Subtitle, Button
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding * 2),
          child: Column(
            children: [
              Text(
                board.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: AppDefaults.margin),
              Text(
                board.subtitle,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppDefaults.margin),
              // Button
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: ElevatedButton(
              onPressed: onNext,
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Next'),
                  Row(
                    children: List.generate(
                      currentIndex + 1,
                      (index) => Icon(
                        IconlyLight.arrowRight2,
                        color: currentIndex == index
                            ? Colors.white
                            : Colors.white54,
                        size: 16,
                      ),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
