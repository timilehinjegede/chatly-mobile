import 'package:chatly_mobile/feature/chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatly_mobile/utils/utils.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.fromMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: message.fromMe ? hPadding * 2 : 0,
          right: message.fromMe ? 0 : hPadding * 2,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: message.fromMe
                ? appColors.chatBubbleColor
                : appColors.lightGreen,
            borderRadius: BorderRadius.only(
              topLeft:
                  message.fromMe ? const Radius.circular(12.0) : Radius.zero,
              bottomLeft: const Radius.circular(12.0),
              topRight:
                  message.fromMe ? Radius.zero : const Radius.circular(12.0),
              bottomRight: const Radius.circular(12.0),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: hPadding,
            vertical: vPadding / 1.3,
          ),
          child: Text(
            message.title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: message.fromMe ? appColors.gradientOne : appColors.green,
            ),
          ),
        ),
      ),
    );
  }
}
