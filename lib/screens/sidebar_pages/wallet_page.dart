import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../constants/app_colors.dart';
import 'components/recent_transactions_tile.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({
    Key? key,
    this.backButton,
  }) : super(key: key);

  final Widget? backButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton,
        title: const Text('My Wallets'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          )
        ],
      ),
      body: Column(
        children: [
          /// You can use your custom widgets here
          CreditCardWidget(
            cardNumber: '123 579 4685',
            expiryDate: '12/24',
            cardHolderName: 'Thomas',
            cvvCode: '123',
            showBackView: false,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (credit) {},
            cardType: CardType.visa,
            glassmorphismConfig: Glassmorphism(
              gradient: LinearGradient(
                colors: [
                  AppColors.primary,
                  AppColors.primary.withOpacity(0.3),
                ],
              ),
              blurX: 2,
              blurY: 3,
            ),
          ),

          /// Recent Transactions List
          Text(
            'Recent Transactions',
            style: Theme.of(context).textTheme.headline6,
          ),
          const RecentTransactionTile(
            name: 'Casual Shirts',
            date: '23 Mar\'2021',
            coverImage: 'https://i.imgur.com/fDwKPuo.png',
            amount: 250,
          ),
          const RecentTransactionTile(
            name: 'Casual Shirts',
            date: '23 Mar\'2021',
            coverImage: 'https://i.imgur.com/fDwKPuo.png',
            amount: 250,
          ),
          const RecentTransactionTile(
            name: 'Casual Shirts',
            date: '23 Mar\'2021',
            coverImage: 'https://i.imgur.com/fDwKPuo.png',
            amount: 250,
          )
        ],
      ),
    );
  }
}
