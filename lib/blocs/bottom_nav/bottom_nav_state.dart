part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavState {}

final class BottomNavInitial extends BottomNavState {}

class CreateBottomNav extends BottomNavState {
  final int currentIndex;
  final List<BottomNavItemType> items;

  CreateBottomNav({
    required this.currentIndex,
    required this.items,
  });
}
