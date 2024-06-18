
import 'package:flutter/cupertino.dart';
import 'package:riverpod_clean_architecture_lib/base/base_view.dart';

import '../../../controllers/onboarding/signup/signup_sms_request_controller.dart';
import '../../../states/onboarding/signup/signup_sms_request_state.dart';

class SignUpSmsRequestView extends BaseView<SignUpSmsRequestController>{
	SignUpSmsRequestView({super.key, required super.controllerProvider});

	@override
	SignUpSmsRequestState get s => c.state;

	@override
	Widget body(BuildContext context) {
		return Container();
	}
}