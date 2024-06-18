
import 'package:riverpod_clean_architecture_lib/base/base_state.dart';
import 'package:riverpod_clean_architecture_lib/enums/page_state.dart';

class MainTabState extends BaseState<MainTabState> {
	MainTabState({
		super.pageState
	});

	@override
	MainTabState copyWith({PageState? pageState}) {
		return MainTabState(
			pageState: pageState ?? this.pageState
		);
	}
}

