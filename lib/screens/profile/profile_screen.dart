import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/components/my_bottom_nav_bar.dart';
import 'package:recipe_app_flutter/constants.dart';
import 'package:recipe_app_flutter/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: const SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      title: const Text("Profile"),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
