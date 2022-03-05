import 'package:chatly_mobile/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class MessageInputWidget extends StatelessWidget {
  const MessageInputWidget({
    Key? key,
    required this.hintText,
    required this.onAttachment,
    required this.onSendMessage,
    required this.onRecord,
    this.fillColor,
    this.isDecorated = true,
    this.padding,
  }) : super(key: key);

  final String hintText;
  final VoidCallback onAttachment;
  final VoidCallback onSendMessage;
  final VoidCallback onRecord;
  final Color? fillColor;
  final bool? isDecorated;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDecorated! ? appColors.white : null,
        boxShadow: [
          if (isDecorated!)
            BoxShadow(
              color: appColors.gradientOne.withOpacity(.04),
              offset: const Offset(0, -10),
              blurRadius: 26,
              spreadRadius: 7,
            ),
        ],
      ),
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: appColors.text,
              ),
              decoration: InputDecoration(
                filled: true,
                isDense: true,
                fillColor: fillColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Type something ...',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: appColors.gradientTwo.withOpacity(.6),
                ),
                prefixIcon: Transform.rotate(
                  angle: 45 * (math.pi / 180),
                  child: IconButton(
                    onPressed: onAttachment,
                    icon: Icon(
                      Icons.attach_file_rounded,
                      size: 28,
                      color: appColors.gradientOne,
                    ),
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: onSendMessage,
                  icon: SvgPicture.asset(
                    icMessage,
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
            ),
          ),
          const XBox(15),
          InkWell(
            onTap: onRecord,
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: RadialGradient(
                  colors: [
                    appColors.gradientOne,
                    appColors.gradientTwo,
                  ],
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  icRecord,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
