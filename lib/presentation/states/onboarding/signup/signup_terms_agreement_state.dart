
import 'package:riverpod_clean_architecture_lib/base/base_state.dart';
import 'package:riverpod_clean_architecture_lib/enums/page_state.dart';

class SignUpTermsAgreementState extends BaseState<SignUpTermsAgreementState> {
  SignUpTermsAgreementState({
    super.pageState
  });

  @override
  SignUpTermsAgreementState copyWith({PageState? pageState}) {
    return SignUpTermsAgreementState(
        pageState: pageState ?? this.pageState
    );
  }
}