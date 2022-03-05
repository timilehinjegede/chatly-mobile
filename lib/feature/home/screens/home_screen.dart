import 'package:chatly_mobile/utils/utils.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.gradientTwo,
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  appColors.gradientOne,
                  appColors.gradientTwo.withOpacity(.2),
                ],
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // header
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: hPadding,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Contacts',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: appColors.white,
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: appColors.darkGrey.withOpacity(.6),
                          ),
                          child: const Icon(
                            Icons.add_rounded,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // search
                  const SearchChatWidget(),

                  // fleets
                  const FleetsWidget(),
                ],
              ),
            ),
          ),
          // messages list
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
                itemBuilder: (_, index) => ChatCardWidget(
                  messagePreview: MessagePreview.previews[index],
                ),
                separatorBuilder: (_, __) => const YBox(10),
                itemCount: MessagePreview.previews.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
