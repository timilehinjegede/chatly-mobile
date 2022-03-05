import 'package:chatly_mobile/feature/status/status.dart';
import 'package:chatly_mobile/utils/utils.dart';
import 'package:chatly_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FleetsWidget extends StatelessWidget {
  const FleetsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: hPadding,
          ),
          child: Text(
            'Fleets',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appColors.white,
            ),
          ),
        ),
        const YBox(10),
        SizedBox(
          height: 90,
          width: context.deviceWidth(),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: hPadding,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => FleetCard(
              fleet: Fleet.fleets[index],
            ),
            separatorBuilder: (_, __) => const XBox(15),
            itemCount: Fleet.fleets.length,
          ),
        ),
      ],
    );
  }
}

class FleetCard extends StatelessWidget {
  const FleetCard({
    Key? key,
    required this.fleet,
  }) : super(key: key);

  final Fleet fleet;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const StatusScreen(),
              ),
            );
          },
          child: AvatarWidget(
            radius: 32,
            assetName: fleet.postProfilePic,
          ),
        ),
        const YBox(8),
        Text(
          fleet.posterName,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: appColors.white,
          ),
        ),
      ],
    );
  }
}

// temporary dto
class Fleet {
  const Fleet({
    required this.posterName,
    required this.postProfilePic,
  });

  final String posterName;
  final String postProfilePic;

  static final List<Fleet> fleets = [
    Fleet(
      posterName: 'Sola D.',
      postProfilePic: icAvatarOne,
    ),
    Fleet(
      posterName: 'BJ Robert',
      postProfilePic: icAvatarTwo,
    ),
    Fleet(
      posterName: 'J.K.',
      postProfilePic: icAvatarThree,
    ),
    Fleet(
      posterName: 'Wunmi',
      postProfilePic: icAvatarThree,
    ),
    Fleet(
      posterName: 'James',
      postProfilePic: icAvatarOne,
    ),
    Fleet(
      posterName: 'Slayer',
      postProfilePic: icAvatarTwo,
    ),
  ];
}
