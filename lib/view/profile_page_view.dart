import 'package:flutter/material.dart';
import 'package:studygit/constant/extension/string_extension.dart';
import 'package:studygit/constant/init/lang/locale_keys.g.dart';
import 'package:studygit/constant/padding/project_padding.dart';

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
      body: Padding(
        padding: ProjectPadding.mainPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex:1,child: CircleAvatarWidget(radius: size.width*0.12,)),
                  PersonalSocialInformation(title:LocaleKeys.profile_social_posts.locale ,value:"3"),
                  PersonalSocialInformation(title:LocaleKeys.profile_social_followers.locale ,value:"206"),
                  PersonalSocialInformation(title:LocaleKeys.profile_social_following.locale ,value:"189"),
                  
                  
                  
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class PersonalSocialInformation extends StatefulWidget {
  PersonalSocialInformation({super.key, required this.title,this.value});
  final String title;
  String? value;

  @override
  State<PersonalSocialInformation> createState() => _PersonalSocialInformationState();
}

class _PersonalSocialInformationState extends State<PersonalSocialInformation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:1,
      child: Column(
        children: [
          Text(widget.value?? ""),
          Text(widget.title)
        ],
      ),
    );
  }
}