import 'package:flutter/material.dart';


class CircleAvatarWidget extends StatefulWidget {
  const CircleAvatarWidget({super.key, required this.radius});
  final double radius;

  @override
  State<CircleAvatarWidget> createState() => _CircleAvatarWidgetState();
}

class _CircleAvatarWidgetState extends State<CircleAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.radius,
    );
  }
}