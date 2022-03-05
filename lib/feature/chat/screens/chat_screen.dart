import 'package:chatly_mobile/feature/chat/screens/widgets/widgets.dart';
import 'package:chatly_mobile/utils/utils.dart';
import 'package:chatly_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.gradientTwo,
      bottomNavigationBar: MessageInputWidget(
        hintText: 'Type something ...',
        onAttachment: () {},
        onSendMessage: () {},
        onRecord: () {},
        fillColor: appColors.lightGrey.withOpacity(.3),
        padding: const EdgeInsets.symmetric(
          horizontal: hPadding,
        ),
      ),
      body: Column(
        children: [
          // header
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  appColors.gradientOne,
                  appColors.gradientTwo.withOpacity(.2),
                ],
                center: Alignment.centerLeft,
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: hPadding,
            ),
            child: const SafeArea(
              bottom: false,
              child: _ChatHeader(),
            ),
          ),
          // chat list
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: appColors.white,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: hPadding,
                vertical: vPadding * 1.5,
              ),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (_, index) => ChatBubble(
                  message: Message.messages.reversed.toList()[index],
                ),
                separatorBuilder: (_, __) => const YBox(10),
                itemCount: Message.messages.length,
                reverse: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ChatHeader extends StatelessWidget {
  const _ChatHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AvatarWidget(
          radius: 25,
          assetName: icAvatarTwo,
        ),
        const XBox(15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BJ Robert',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: appColors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const YBox(5),
              Text(
                'online',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: appColors.grey,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            icVideo,
          ),
          splashRadius: 28,
        ),
        const XBox(5),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            icCall,
          ),
          splashRadius: 28,
        ),
      ],
    );
  }
}

// temp dto
class Message {
  const Message({
    required this.title,
    required this.fromMe,
  });

  final String title;
  final bool fromMe;

  static const List<Message> messages = [
    Message(
      title:
          'Good morning, I’m Dr. Ife and general pratitional. How are you feeling today?',
      fromMe: true,
    ),
    Message(
      title: 'I’m fine doctor',
      fromMe: false,
    ),
    Message(
      title: 'Just having a little pain around my right ankel',
      fromMe: false,
    ),
    Message(
      title: 'oh, sorry about that. You’ll be fine.',
      fromMe: true,
    ),
    Message(
      title: 'How long have you been feeling this?',
      fromMe: true,
    ),
    Message(
      title: 'Doc, i think it started last night ☹️',
      fromMe: false,
    ),
    Message(
      title:
          'okay, I’m gonna prescribe some medicine for you, that should help with the pain.',
      fromMe: true,
    ),
  ];
}
