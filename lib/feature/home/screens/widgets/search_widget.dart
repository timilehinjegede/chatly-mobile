import 'package:chatly_mobile/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchChatWidget extends StatelessWidget {
  const SearchChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: hPadding,
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: appColors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: appColors.darkGrey.withOpacity(.6),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: appColors.grey,
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              icSearch,
              height: 20,
              width: 20,
            ),
          ),
        ),
      ),
    );
  }
}
