import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'constraints/constraints.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.list:
        emit(NavigationState(NavbarItem.list, 1));
        break;

    }
  }
}
