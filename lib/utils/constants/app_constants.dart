import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherConstants {
  static const String assetIcons = 'assets/icons/';
  static const String assetImages = 'assets/images/';
  static const String assetSvgIcons = 'assets/SvgIcons/';
  static const String textFont = 'Poppins';

  static const int pageSize = 15;
  static EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: 4.w,
    vertical: 2.h,
  );

  static EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 2.h);
  static EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 4.w);

  // Screen const texts
  static const String dummyNetworkImageUrl =
      "https://dummyimage.com/600x400/000/fff&text=Lorem+ipsum";
  static const String noInternetMsg = "No Internet";
  static const String exceptionMessage = "Something went wrong";
  static const String slowInternetMsg = "Please check your internet connection";
  static const String badResponseFormat = "Bad response";
  static const String feedExceptionMessage = "Feed Exception";
}
