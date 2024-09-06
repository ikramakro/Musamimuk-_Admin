part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  DashboardState({
    this.assetsvalueoneController,
    this.dashboardModelObj,
    this.pageController,
    this.user, // Add user to the state
  });

  TextEditingController? assetsvalueoneController;
  DashboardModel? dashboardModelObj;
  PageController? pageController;
  User? user; // User object in the state

  @override
  List<Object?> get props =>
      [assetsvalueoneController, dashboardModelObj, pageController, user];

  DashboardState copyWith({
    PageController? pageController,
    SideMenuController? sideMenu,
    TextEditingController? assetsvalueoneController,
    DashboardModel? dashboardModelObj,
    User? user, // Add user to copyWith
  }) {
    return DashboardState(
      pageController: pageController ?? this.pageController,
      assetsvalueoneController:
          assetsvalueoneController ?? this.assetsvalueoneController,
      dashboardModelObj: dashboardModelObj ?? this.dashboardModelObj,
      user: user ?? this.user, // Return user in the state
    );
  }
}
