import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../constants/constants.dart';
import 'components/header_siderbar.dart';
import 'components/siderbar_item.dart';

class SiderBarSection extends StatelessWidget {
  const SiderBarSection({
    Key? key,
    required this.currentSelected,
    required this.onSelected,
  }) : super(key: key);

  final int currentSelected;
  final void Function(int) onSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.scaffoldBackground,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderSideBar(),
              const Spacer(),
              Column(
                children: [
                  SiderBarItem(
                    name: 'My Favourites',
                    onTap: () => onSelected(0),
                    iconData: IconlyBold.heart,
                    isActive: currentSelected == 0,
                  ),
                  SiderBarItem(
                    name: 'Wallet',
                    onTap: () => onSelected(1),
                    iconData: IconlyBold.wallet,
                    isActive: currentSelected == 1,
                  ),
                  SiderBarItem(
                    name: 'My Orders',
                    onTap: () => onSelected(2),
                    iconData: IconlyBold.bag,
                    isActive: currentSelected == 2,
                  ),
                  SiderBarItem(
                    name: 'About Us',
                    onTap: () => onSelected(3),
                    iconData: IconlyBold.document,
                    isActive: currentSelected == 3,
                  ),
                  SiderBarItem(
                    name: 'Privacy Policy',
                    onTap: () => onSelected(4),
                    iconData: IconlyBold.lock,
                    isActive: currentSelected == 4,
                  ),
                  SiderBarItem(
                    name: 'Settings',
                    onTap: () => onSelected(5),
                    iconData: IconlyBold.setting,
                    isActive: currentSelected == 5,
                  ),
                ],
              ),
              const Spacer(),
              SiderBarItem(
                name: 'Logout',
                onTap: () {},
                iconData: IconlyBold.logout,
                isActive: false,
              ),
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                      AppImages.logo,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
