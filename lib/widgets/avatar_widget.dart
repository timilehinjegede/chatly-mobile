import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    required this.assetName,
    this.radius,
  }) : super(key: key);

  final String assetName;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 25,
      backgroundImage: AssetImage(
        assetName,
      ),
    );
  }
}
