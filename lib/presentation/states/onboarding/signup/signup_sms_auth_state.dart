
import 'package:riverpod_clean_architecture_lib/base/base_state.dart';
import 'package:riverpod_clean_architecture_lib/enums/page_state.dart';

class SignUpSmsAuthState extends BaseState<SignUpSmsAuthState> {
	SignUpSmsAuthState({
		super.pageState
	});

	@override
	SignUpSmsAuthState copyWith({PageState? pageState}) {
		return SignUpSmsAuthState(
			pageState: pageState ?? this.pageState
		);
	}
}
