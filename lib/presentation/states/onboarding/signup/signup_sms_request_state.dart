
import 'package:riverpod_clean_architecture_lib/base/base_state.dart';
import 'package:riverpod_clean_architecture_lib/enums/page_state.dart';

class SignUpSmsRequestState extends BaseState<SignUpSmsRequestState> {
  SignUpSmsRequestState({
    super.pageState
  });

  @override
  SignUpSmsRequestState copyWith({PageState? pageState}) {
    return SignUpSmsRequestState(
        pageState: pageState ?? this.pageState
    );
  }
}