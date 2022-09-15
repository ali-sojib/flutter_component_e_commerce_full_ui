import '../../../constants/app_images.dart';

class OnboardingModel {
  String title, subtitle, imageLink;
  OnboardingModel({
    required this.title,
    required this.subtitle,
    required this.imageLink,
  });
}

class OnboardingData {
  static List<OnboardingModel> boards = [
    OnboardingModel(
      title: 'Choose Product',
      subtitle:
          'A product is the item offered for sale. A product can be a service or an item. It can be physical or in virtual or cyber form',
      imageLink: AppImages.illustration1,
    ),
    OnboardingModel(
      title: 'Make Payment',
      subtitle:
          'Payment is the transfer of money services in exchange product or Payments typically made terms agreed',
      imageLink: AppImages.illustration2,
    ),
    OnboardingModel(
      title: 'Get Your Order',
      subtitle:
          'Business or commerce an order is a stated intention either spoken to engage in a commercial transaction specific products ',
      imageLink: AppImages.illustration3,
    ),
  ];
}
