


import 'package:flutter/cupertino.dart';
import 'package:riverpod_clean_architecture_lib/base/base_view.dart';

import '../../../controllers/onboarding/signup/signup_sms_auth_controller.dart';
import '../../../states/onboarding/signup/signup_sms_auth_state.dart';

class SignUpSmsAuthView extends BaseView<SignUpSmsAuthController>{
  SignUpSmsAuthView({super.key, required super.controllerProvider});

  @override
  SignUpSmsAuthState get s => c.state;

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}