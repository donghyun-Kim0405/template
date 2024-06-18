import 'package:flutter/cupertino.dart';
import 'package:riverpod_clean_architecture_lib/base/base_view.dart';

import '../../controllers/main_tab/main_tab_controller.dart';
import '../../states/main_tab/main_tab_state.dart';

class MainTabView extends BaseView<MainTabController>{
  MainTabView({super.key, required super.controllerProvider});

  @override
  MainTabState get s => c.state;

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}