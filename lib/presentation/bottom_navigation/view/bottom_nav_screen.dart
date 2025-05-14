import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_property/blocs/bloc_barrel.dart';
import 'package:real_state_property/blocs/bottom_nav/bottom_nav_item.dart';
import 'package:real_state_property/blocs/bottom_nav/bottom_nav_item_type.dart';
import 'package:real_state_property/presentation/my_leads/my_leads.dart';
import 'package:real_state_property/presentation/my_listings/my_listing.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/colors.dart';

import 'sidebar_menu_screen.dart';

class BottomNavScreen extends StatefulWidget {
  final int currIndex;
  const BottomNavScreen({super.key, required this.currIndex});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BottomNavBloc()..add(InitialBottomNav(widget.currIndex)),
        ),
      ],
      child: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          if (state is CreateBottomNav) {
            return _buildTab(context, state);
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget _buildTab(BuildContext context, CreateBottomNav state) {
    final items = state.items.map((type) => _getItem(type));
    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      key: _scaffoldKey,
      endDrawer: Drawer(
        elevation: 10.0,
        child: SidebarMenuScreen(),
      ),
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.mainBgColor,
        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: state.currentIndex,
        children: items.map((e) => e.page).toList(),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 20),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: state.currentIndex,
          onTap: (int index) {
            BlocProvider.of<BottomNavBloc>(context)
                .add(BottomNavChanged(index));
          },
          items: items
              .map(
                (e) => BottomNavigationBarItem(
                  icon: e.icon,
                  label: e.title,
                  activeIcon: e.activeIcon,
                ),
              )
              .toList(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteNames.addListing);
        },
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff023563),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Icon(Icons.add),
      ),
    );
  }

  BottomNavItem _getItem(BottomNavItemType type) {
    switch (type) {
      case BottomNavItemType.listings:
        return BottomNavItem(
          page: const MyListingsScreen(),
          title: '',
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        );
      case BottomNavItemType.leads:
        return BottomNavItem(
          page: const MyLeadsScreen(),
          title: '',
          icon: Icon(
            Icons.people,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.people,
            color: Colors.black,
          ),
        );
    }
  }
}
