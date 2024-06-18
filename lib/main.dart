import 'dart:async';
import 'dart:ui';

import 'package:daniel_ui_template_lib/daniel_ui_template_lib.dart' as daniel;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:template/app/routes/app_pages.dart';
import 'package:template/app/routes/app_routes.dart';
import 'package:template/app/values/app_text_style.dart';
import 'package:template/app/values/image_assets_value.dart';
import 'package:riverpod_clean_architecture_lib/riverpod_cleanarchitecture.dart';

import 'app/values/app_colors.dart';

Future<void> main() async {

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter bindings are initialized within the zone

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]); //세로고정

    // Firebase and other initializations here
    await Firebase.initializeApp(); // Firebase initialization
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };

    // /// FirebaseMessage 백그라운드 에서도 listen하도록 설정
    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    // FirebaseMessaging.onMessage.listen(_firebaseMessagingForegroundHandler);
    // FirebaseMessaging.instance.subscribeToTopic('ALL');
    //
    //
    // /// local notification에 띄워주기 위한 notification initializeing
    // initializeLocalNotification();


    // await BuildConfig.instance.instantiate(envType: ENV);
    //
    // await RemoteConfigManager.instance.initialize();
    //
    // /// 네이버 지도 관련 sdk 초기화
    // await NaverMapSdk.instance.initialize(
    //     clientId: BuildConfig.instance.config.naverClientId,
    //     onAuthFailed: (error) {
    //       BuildConfig.instance.config.logger.i("naver map initializeError - $error");
    //     }
    // );

    runApp(ProviderScope(
        child: RiverpodCleanArchitecture.materialApp(
            ui: RiverpodCleanArchitectureUI(
                mainBackgroundColor: AppColors.mainBackgroundColor,
                fontFamily: AppTextStyle.fontFamily,
                baseBottomSheetBackgroundColor: AppColors.baseBottomSheetBackgroundColor
            ),
            logger: Logger(),
            createQueryList: [],
            baseUrl: "https://api.template.com",
            refreshTokenEndPoint: '/auth/refresh',
            accessTokenEndPoint: '/auth/token',
            routeForLoggedOut: Routes.SPLASH,
            initialRoute: Routes.SPLASH,
            routes: AppPages.routes,
            initiatedVariableCallback: () {
              daniel.CustomTheme.initiate(
                  color: daniel.DefaultColor(
                      mainBackgroundColor: AppColors.mainBackgroundColor,
                      primaryColor: AppColors.primaryColor,
                      subColor: AppColors.subColor,
                      btnEnableColor: AppColors.btnEnableColor,
                      btnDisableColor: AppColors.btnDisableColor,
                      btnEnableTextColor: AppColors.btnEnableTextColor,
                      btnDisableTextColor: AppColors.btnDisableTextColor,
                      dialogBackgroundColor: AppColors.dialogBackgroundColor,
                      dialogContentTextColor: AppColors.dialogContentTextColor,
                      dialogLeftBtnColor: AppColors.dialogLeftBtnColor,
                      dialogRightBtnColor: AppColors.dialogRightBtnColor,
                      dialogLeftBtnTextColor: AppColors.dialogLeftBtnTextColor,
                      dialogRightBtnTextColor: AppColors.dialogRightBtnTextColor,
                      dialogOutlineColor: AppColors.dialogOutlineColor,
                      popupBannerBackgroundColor: AppColors.popupBannerBackgroundColor,
                      popupBannerBtnTextColor: AppColors.popupBannerBtnTextColor,
                      textFieldBackgroundColor: AppColors.textFieldBackgroundColor,
                      textFieldValueColor: AppColors.textFieldValueColor,
                      textFieldHintColor: AppColors.textFieldHintColor,
                      textFieldOutlineColor: AppColors.textFieldOutlineColor,
                      searchTextBackgroundColor: AppColors.searchTextBackgroundColor,
                      searchTextOutlineColor: AppColors.searchTextOutlineColor,
                      searchTextValueColor: AppColors.searchTextValueColor,
                      searchTextHintColor: AppColors.searchTextHintColor,
                      searchTextSuffixImgColor: AppColors.searchTextSuffixImgColor,
                      dropdownBackgroundColor: AppColors.dropdownBackgroundColor,
                      dropdownValueColor: AppColors.dropdownValueColor,
                      dropdownOutlineColor: AppColors.dropdownOutlineColor,
                      bottomSheetBackgroundColor: AppColors.bottomSheetBackgroundColor,
                      bottomSheetControllerBarColor: AppColors.bottomSheetControllerBarColor,
                      bottomSheetBtnTextColor: AppColors.bottomSheetBtnTextColor,
                      timePickerBackgroundColor: AppColors.timePickerBackgroundColor,
                      datePickerBackgroundColor: AppColors.datePickerBackgroundColor,
                      dividerColor: AppColors.dividerColor
                  ),
                  textStyle: daniel.DefaultTextStyle(
                    linkPreViewTitleTextStyle: AppTextStyle.linkPreViewTitleTextStyle,
                    timePickerTextStyle: AppTextStyle.timePickerTextStyle,
                    timePickerBtnTextStyle: AppTextStyle.timePickerBtnTextStyle,
                    linkPreViewBodyTextStyle: AppTextStyle.linkPreViewBodyTextStyle,
                    datePickerTextStyle: AppTextStyle.datePickerTextStyle,
                    datePickerBtnTextStyle: AppTextStyle.datePickerBtnTextStyle,
                    bottomSheetBtnTextStyle: AppTextStyle.bottomSheetBtnTextStyle,
                  ),
                  imagePath: daniel.DefaultImagePath(
                      IMG_BACK_BTN: ImageAssetsValue.IMG_BACK_BTN,
                      IMG_CACHED_NETWORK_IMAGE_WARNING: ImageAssetsValue.IMG_CACHED_NETWORK_IMAGE_WARNING,
                      IMG_TEXT_FIELD_CLOSE_BTN: ImageAssetsValue.IMG_TEXT_FIELD_CLOSE_BTN
                  ),
                  svgPath: daniel.DefaultSvgPath(

                  )
              );
            }
        )
    ));
  }, (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });
}