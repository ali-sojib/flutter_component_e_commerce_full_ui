import 'package:flutter/material.dart';

import 'components/peronal_informations.dart';
import 'components/profile_picture_section.dart';
import 'components/statuses_row.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            AppBar(
              leading: const SizedBox(),
              title: const Text('Profile'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded),
                )
              ],
            ),

            /// Profile Picture
            ProfilePictureSection(size: size),

            Text(
              'Alex Nikiforov',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Text('alex@msn.com'),
            const SizedBox(height: 10),

            /// Statuses
            const StatusesRow(),
            const SizedBox(height: 10),

            /// Personal Information
            const PeronalInformations()
          ],
        ),
      ),
    );
  }
}
