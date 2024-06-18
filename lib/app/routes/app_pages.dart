import 'package:flutter/cupertino.dart';
import 'package:template/presentation/views/onboarding/signup/signup_profile_setting_view.dart';
import 'package:template/presentation/views/onboarding/splash_view.dart';

import '../../presentation/views/main_tab/main_tab_view.dart';
import '../../presentation/views/onboarding/signup/signup_sms_auth_view.dart';
import '../../presentation/views/onboarding/signup/signup_sms_request_view.dart';
import '../../presentation/views/onboarding/signup/signup_terms_agreement_view.dart';
import '../dependencies/controllers/main_tab_controllers_providers.dart';
import '../dependencies/controllers/onboarding_controllers_providers.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final routes = <String, WidgetBuilder>{

    /// ONBOARDING
    Routes.SPLASH: (context) => SplashView(controllerProvider: splashControllerProvider),
    Routes.SIGNUP_TERMS: (context) => SignUpTermsAgreementView(controllerProvider: signUpTermsAgreementControllerProvider),
    Routes.SIGNUP_SMS_REQUEST: (context) => SignUpSmsRequestView(controllerProvider: signUpSmsRequestControllerProvider),
    Routes.SIGNUP_SMS_AUTH: (context) => SignUpSmsAuthView(controllerProvider: signUpSmsAuthControllerProvider),
    Routes.SIGNUP_PROFILE_SETTING: (context) => SignUpProfileSettingView(controllerProvider: signUpProfileSettingControllerProvider),

    /// MAIN TAB
    Routes.MAIN_TAB: (context) => MainTabView(controllerProvider: mainTabControllerProvider),


  };

}