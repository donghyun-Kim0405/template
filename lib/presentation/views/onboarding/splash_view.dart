


import 'package:flutter/cupertino.dart';
import 'package:riverpod_clean_architecture_lib/base/base_view.dart';

import '../../controllers/onboarding/splash_controller.dart';
import '../../states/onboarding/splash_state.dart';

class SplashView extends BaseView<SplashController>{
	SplashView({super.key, required super.controllerProvider});

	@override
	SplashState get s => c.state;

	@override
	Widget body(BuildContext context) {
		return Container();
	}
}