

import 'package:flutter/cupertino.dart';
import 'package:riverpod_clean_architecture_lib/base/base_view.dart';

import '../../../controllers/onboarding/signup/signup_terms_agreement_controller.dart';
import '../../../states/onboarding/signup/signup_terms_agreement_state.dart';

class SignUpTermsAgreementView extends BaseView<SignUpTermsAgreementController>{
	SignUpTermsAgreementView({super.key, required super.controllerProvider});

	@override
	SignUpTermsAgreementState get s => c.state;

	@override
	Widget body(BuildContext context) {
		return Container();
	}
}