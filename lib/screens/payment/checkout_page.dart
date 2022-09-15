import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_defaults.dart';
import 'components/address_card.dart';
import 'components/payment_method_card.dart';
import 'payment_done_page.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16.0),

              /// Address Chooser
              const AddressChooser(),

              const SizedBox(height: 32.0),

              /// Billing Information
              const CheckoutBillingInformation(),
              const SizedBox(height: 32.0),

              /// Payment Method
              const PaymentMethods(),
              const SizedBox(height: 16),

              /// Slide To Pay
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: SlideAction(
                  text: 'Swipe for payment',
                  textStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.white,
                      ),
                  outerColor: AppColors.primary,
                  innerColor: Colors.white,
                  onSubmit: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PaymentDonePage()));
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Payment Method',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              PaymentMethodCard(
                icon: 'https://i.imgur.com/QwlchTf.png',
                isSelected: true,
              ),
              PaymentMethodCard(
                icon: 'https://i.imgur.com/KqzCSm2.png',
                isSelected: false,
              ),
              PaymentMethodCard(
                icon: 'https://i.imgur.com/4lYlKoc.png',
                isSelected: false,
              ),
              PaymentMethodCard(
                icon: 'https://i.imgur.com/vhIDtpn.png',
                isSelected: false,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CheckoutBillingInformation extends StatelessWidget {
  const CheckoutBillingInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Billing Information',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(AppDefaults.margin),
          padding: const EdgeInsets.all(AppDefaults.padding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: AppDefaults.borderRadius,
            boxShadow: [
              BoxShadow(
                  blurRadius: 9,
                  offset: const Offset(4, 7),
                  color: Colors.black.withOpacity(0.03))
            ],
          ),
          child: Column(
            children: [
              /// 😂 Don't Laugh, these  [Tabs] will look great on ui
              Row(
                children: [
                  Text(
                    'Delivery Fee     :',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const Spacer(),
                  Text(
                    '\$50',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Subtotal            :',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const Spacer(),
                  Text(
                    '\$740',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              Row(
                children: [
                  Text('Total                  :',
                      style: Theme.of(context).textTheme.bodyText2),
                  const Spacer(),
                  Text('\$790', style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class AddressChooser extends StatelessWidget {
  const AddressChooser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Delivery Address',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 8.0),

        // Address
        const AddressCard(
          label: 'Home',
          address: '220  New York',
          number: '(342)  4522019',
          isSelected: true,
        ),
        const AddressCard(
          label: 'Office',
          address: '220 Montmartre,paris',
          number: '(342)  4522019',
          isSelected: false,
        ),
      ],
    );
  }
}
