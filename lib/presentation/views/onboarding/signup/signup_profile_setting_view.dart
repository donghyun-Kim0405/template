


import 'package:flutter/cupertino.dart';
import 'package:riverpod_clean_architecture_lib/base/base_view.dart';

import '../../../controllers/onboarding/signup/signup_profile_setting_controller.dart';
import '../../../states/onboarding/signup/signup_profile_setting_state.dart';

class SignUpProfileSettingView extends BaseView<SignUpProfileSettingController>{
  SignUpProfileSettingView({super.key, required super.controllerProvider});

  @override
  SignUpProfileSettingState get s => c.state;

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}