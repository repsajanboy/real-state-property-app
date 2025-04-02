import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_nav_item_type.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  int currentIndex = 0;
  BottomNavBloc() : super(BottomNavInitial()) {
    on<InitialBottomNav>(
      (event, emit) => emit(
        CreateBottomNav(
          currentIndex: event.index,
          items: getItems(),
        ),
      ),
    );
    on<BottomNavChanged>((event, emit) {
      currentIndex = event.index;
      emit(
        CreateBottomNav(
          currentIndex: currentIndex,
          items: getItems(),
        ),
      );
    });
  }

  List<BottomNavItemType> getItems() {
    return [
      BottomNavItemType.listings,
      BottomNavItemType.leads,
    ];
  }
}
