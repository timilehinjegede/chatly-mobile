// bath assets (svgs and pngs) path
const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';

// app icon
final String icAppIcon = 'ic_icon'.png;

// svgs
final String icCall = 'ic_call'.svg;
final String icMessage = 'ic_message'.svg;
final String icRecord = 'ic_record'.svg;
final String icSearch = 'ic_search'.svg;
final String icVideo = 'ic_video'.svg;

// pngs
final String icAvatarOne = 'ic_avatar_one'.png;
final String icAvatarTwo = 'ic_avatar_two'.png;
final String icAvatarThree = 'ic_avatar_three'.png;
final String icStatusPlaceholder = 'ic_status_placeholder'.png;

// image extension
extension ImageExtension on String {
  // get png paths
  String get png => '$basePngPath$this.png';
  // get svgs path
  String get svg => '$baseSvgPath$this.svg';
}
