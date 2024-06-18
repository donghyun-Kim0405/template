
import 'package:riverpod_clean_architecture_lib/base/base_state.dart';
import 'package:riverpod_clean_architecture_lib/enums/page_state.dart';

class SplashState extends BaseState<SplashState> {
  SplashState({
    super.pageState
  });

  @override
  SplashState copyWith({PageState? pageState}) {
    return SplashState(
        pageState: pageState ?? this.pageState
    );
  }
}