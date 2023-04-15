import 'package:flutter/material.dart';
import 'package:studygit/constant/extension/string_extension.dart';
import 'package:studygit/constant/init/lang/locale_keys.g.dart';

import '../core/widgets/circleAvatar/circle_avatar_widget.dart';


class ProfilePageView extends StatefulWidget {
  const ProfilePageView({super.key});

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CircleAvatarWidget(radius: size.width*0.12,),
          Text(LocaleKeys.profile_social_followers.locale)
        ],
      ),
    );
  }
}