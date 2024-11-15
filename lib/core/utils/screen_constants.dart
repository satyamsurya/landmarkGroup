import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:landmark_project/core/utils/theme_manager.dart';

Widget verticalSpace({double? height}) => SizedBox(
      height: height ?? size_16,
    );

Widget horizontalSpace({double? width}) => SizedBox(
      width: width ?? size_16,
    );

class ScreenConstants {
  ScreenConstants._();
  static final ScreenConstants instance = ScreenConstants._();

  void init(context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    platform = getDevicePlatform();
  }

  // get device platform
  DevicePlatform? getDevicePlatform() {
    if (!kIsWeb) {
      if (Platform.isAndroid) {
        return DevicePlatform.android;
      } else if (Platform.isIOS) {
        return DevicePlatform.ios;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  // Platform
  static DevicePlatform? platform;

  // default text scale factor
  static const defaultTextScaleFactor = 1.0;
  // full width
  static double screenWidth = 0;

  // full height
  static double screenHeight = 0;
}

Widget verticalDivider() {
  return const VerticalDivider(
    color: AppColors.dividerColor,
    thickness: 1,
  );
}

Widget horizontalDivider() {
  return const Divider(
    color: Colors.black12,
    thickness: 1,
  );
}

// whole Screen Padding
const EdgeInsets wholeScreenPadding =
    EdgeInsets.only(top: pad_60, left: pad_20, right: pad_20, bottom: pad_16);

const EdgeInsets wholeVerticalPadding = EdgeInsets.only(top: pad_60);
const EdgeInsets wholehorizontalPadding =
    EdgeInsets.symmetric(horizontal: pad_20);

//Button top shadow
BoxShadow buttonTopshadow() => BoxShadow(
    color: AppColors.buttonColor.withOpacity(.1),
    blurRadius: 16,
    offset: const Offset(0, -1));

TextStyle blueGreyTextStyle = const TextStyle(
    fontWeight: FontWeight.w700, color: Colors.black, fontSize: size_42);
TextStyle blackColor = const TextStyle(
    fontWeight: FontWeight.w700, color: AppColors.blueColor, fontSize: size_42);

//FONTS SIZES
const font_8 = 8.0;
const font_9 = 9.0;
const font_10 = 10.0;
const font_12 = 12.0;

const font_14 = 14.0;
const font_16 = 16.0;
const font_18 = 18.0;
const font_20 = 20.0;
const font_24 = 24.0;
const font_32 = 32.0;

// PADDING SIZES
const pad_4 = 4.0;
const pad_8 = 8.0;
const pad_12 = 12.0;
const pad_14 = 14.0;
const pad_16 = 16.0;
const pad_20 = 20.0;
const pad_25 = 25.0;
const pad_32 = 32.0;
const pad_48 = 48.0;
const pad_50 = 50.0;
const pad_60 = 60.0;
const pad_90 = 90.0;

// SIZES
const size_2 = 2.0;
const size_4 = 4.0;
const size_6 = 6.0;
const size_8 = 8.0;
const size_10 = 10.0;
const size_12 = 12.0;
const size_14 = 14.0;
const size_16 = 16.0;
const size_18 = 18.0;
const size_20 = 20.0;
const size_22 = 22.0;
const size_24 = 24.0;
const size_25 = 25.0;
const size_26 = 26.0;
const size_28 = 28.0;
const size_30 = 30.0;
const size_32 = 32.0;
const size_34 = 34.0;
const size_36 = 36.0;
const size_38 = 38.0;
const size_40 = 40.0;
const size_42 = 42.0;
const size_44 = 44.0;
const size_45 = 45.0;
const size_46 = 46.0;
const size_48 = 48.0;
const size_50 = 50.0;
const size_54 = 54.0;
const size_56 = 56.0;
const size_58 = 58.0;
const size_60 = 60.0;
const size_62 = 62.0;
const size_64 = 64.0;
const size_66 = 66.0;
const size_68 = 68.0;
const size_70 = 70.0;
const size_72 = 72.0;
const size_74 = 74.0;
const size_76 = 76.0;
const size_78 = 78.0;
const size_80 = 80.0;
const size_82 = 82.0;
const size_84 = 84.0;
const size_90 = 90.0;
const size_92 = 92.0;
const size_96 = 96.0;
const size_100 = 100.0;
const size_110 = 110.0;
const size_102 = 102.0;
const size_115 = 115.0;
const size_120 = 120.0;
const size_122 = 122.0;
const size_132 = 132.0;
const size_134 = 134.0;
const size_140 = 140.0;
const size_150 = 150.0;
const size_154 = 154.0;
const size_160 = 160.0;
const size_162 = 162.0;
const size_164 = 164.0;
const size_180 = 180.0;
const size_200 = 200.0;
const size_220 = 220.0;
const size_254 = 254.0;
const size_260 = 260.0;
const size_262 = 262.0;
const size_274 = 274.0;
const size_284 = 284.0;
const size_290 = 290.0;
const size_314 = 314.0;
const size_366 = 366.0;
const size_410 = 410.0;

enum DevicePlatform { android, ios }
