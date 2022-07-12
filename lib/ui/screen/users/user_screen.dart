import 'package:apiwithbloc/ui/screen/settings/settings_screen.dart';
import 'package:apiwithbloc/ui/screen/users/widget/list_user/list_user.dart';
import 'package:apiwithbloc/utils/cofing/app_router.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const id = '/users';
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        actions: [
          IconButton(
              onPressed: () {
                AppRouter.pushNamed(SettingScreen.id);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: listUser(),
    );
  }
}
