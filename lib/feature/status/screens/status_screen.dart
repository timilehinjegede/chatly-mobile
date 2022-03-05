import 'package:chatly_mobile/utils/utils.dart';
import 'package:chatly_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.deviceHeight(),
        width: context.deviceWidth(),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                icStatusPlaceholder,
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: hPadding,
          ),
          child: SafeArea(
            child: Stack(
              children: [
                // avatar and action button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AvatarWidget(
                      radius: 20,
                      assetName: icAvatarOne,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: appColors.black.withOpacity(.8),
                        ),
                        child: Icon(
                          Icons.close_rounded,
                          color: appColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                // reply widget
                Align(
                  alignment: Alignment.bottomCenter,
                  child: MessageInputWidget(
                    hintText: 'Reply ...',
                    onAttachment: () {},
                    onSendMessage: () {},
                    onRecord: () {},
                    fillColor: appColors.white,
                    isDecorated: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
