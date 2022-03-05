import 'package:chatly_mobile/feature/chat/screens/chat_screen.dart';
import 'package:chatly_mobile/utils/utils.dart';
import 'package:chatly_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatCardWidget extends StatelessWidget {
  const ChatCardWidget({
    Key? key,
    required this.messagePreview,
  }) : super(key: key);

  final MessagePreview messagePreview;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const ChatScreen(),
          ),
        );
      },
      child: Container(
        height: 85,
        width: context.deviceWidth(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: appColors.borderColor,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: hPadding,
        ),
        child: Row(
          children: [
            AvatarWidget(
              radius: 25,
              assetName: messagePreview.senderImage,
            ),
            const XBox(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    messagePreview.senderName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const YBox(2),
                  Text(
                    messagePreview.message,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: appColors.subText,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  messagePreview.time,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: appColors.lowerText,
                  ),
                ),
                const YBox(5),
                if (messagePreview.messageCount != null)
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appColors.lightRed,
                    ),
                    child: Center(
                      child: Text(
                        messagePreview.messageCount.toString(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: appColors.red,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// temp dto
class MessagePreview {
  const MessagePreview({
    required this.senderImage,
    required this.senderName,
    required this.message,
    required this.time,
    this.messageCount,
  });

  final String senderImage;
  final String senderName;
  final String message;
  final int? messageCount;
  final String time;

  static final List<MessagePreview> previews = [
    MessagePreview(
      senderImage: icAvatarOne,
      senderName: 'Sola D.',
      message: 'I\'m on that, it skipped my mind!',
      messageCount: 2,
      time: '04:11',
    ),
    MessagePreview(
      senderImage: icAvatarTwo,
      senderName: 'BJ Robert',
      message: '#Flutter is so sweet!',
      time: '02:11',
    ),
    MessagePreview(
      senderImage: icAvatarThree,
      senderName: 'Wunmi',
      message: 'Have you talked to him yet????????',
      messageCount: 12,
      time: '02:33',
    ),
    MessagePreview(
      senderImage: icAvatarOne,
      senderName: 'Kunle Kunle R.',
      message: 'Gee, Wunmi talk say make I follow you word!',
      time: '1:11',
    ),
    MessagePreview(
      senderImage: icAvatarThree,
      senderName: 'J.K.',
      message: 'Adios.',
      time: '12:11',
    ),
  ];
}
