
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../presentation/controllers/onboarding/signup/signup_profile_setting_controller.dart';
import '../../../presentation/controllers/onboarding/signup/signup_sms_auth_controller.dart';
import '../../../presentation/controllers/onboarding/signup/signup_sms_request_controller.dart';
import '../../../presentation/controllers/onboarding/signup/signup_terms_agreement_controller.dart';
import '../../../presentation/controllers/onboarding/splash_controller.dart';
import '../../../presentation/states/onboarding/signup/signup_profile_setting_state.dart';
import '../../../presentation/states/onboarding/signup/signup_sms_auth_state.dart';
import '../../../presentation/states/onboarding/signup/signup_sms_request_state.dart';
import '../../../presentation/states/onboarding/signup/signup_terms_agreement_state.dart';
import '../../../presentation/states/onboarding/splash_state.dart';

final AutoDisposeStateNotifierProvider splashControllerProvider = StateNotifierProvider.autoDispose<SplashController, SplashState> ((ref) {
	final state = SplashState();
	return SplashController(state: state);
});

final AutoDisposeStateNotifierProvider signUpTermsAgreementControllerProvider = StateNotifierProvider.autoDispose<SignUpTermsAgreementController, SignUpTermsAgreementState> ((ref) {
	final state = SignUpTermsAgreementState();
	return SignUpTermsAgreementController(state: state);
});

final AutoDisposeStateNotifierProvider signUpSmsRequestControllerProvider = StateNotifierProvider.autoDispose<SignUpSmsRequestController, SignUpSmsRequestState> ((ref) {
	final state = SignUpSmsRequestState();
	return SignUpSmsRequestController(state: state);
});

final AutoDisposeStateNotifierProvider signUpSmsAuthControllerProvider = StateNotifierProvider.autoDispose<SignUpSmsAuthController, SignUpSmsAuthState> ((ref) {
	final state = SignUpSmsAuthState();
	return SignUpSmsAuthController(state: state);
});

final AutoDisposeStateNotifierProvider signUpProfileSettingControllerProvider = StateNotifierProvider.autoDispose<SignUpProfileSettingController, SignUpProfileSettingState> ((ref) {
	final state = SignUpProfileSettingState();
	return SignUpProfileSettingController(state: state);
});