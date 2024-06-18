

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../presentation/controllers/main_tab/main_tab_controller.dart';
import '../../../presentation/states/main_tab/main_tab_state.dart';

final AutoDisposeStateNotifierProvider mainTabControllerProvider = StateNotifierProvider.autoDispose<MainTabController, MainTabState> ((ref) {
	final state = MainTabState();
	return MainTabController(state: state);
});