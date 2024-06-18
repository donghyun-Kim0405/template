
import 'package:flutter/cupertino.dart';
import 'package:riverpod_clean_architecture_lib/base/base_state.dart';
import 'package:riverpod_clean_architecture_lib/base/base_view.dart';
import 'package:riverpod_clean_architecture_lib/enums/page_state.dart';

import '../../../controllers/onboarding/signup/signup_profile_setting_controller.dart';

class SignUpProfileSettingState extends BaseState<SignUpProfileSettingState> {
	SignUpProfileSettingState({
		super.pageState
	});

	@override
	SignUpProfileSettingState copyWith({PageState? pageState}) {
		return SignUpProfileSettingState(
			pageState: pageState ?? this.pageState
		);
	}
}

