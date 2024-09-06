import 'dart:convert';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../core/utils/shared_prf.dart';
import '../../../data/models/login_response.dart';
import '../models/dashboard_model.dart'; // Import your User model here

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
    on<TabChangeEvent>(_tabChangeEvent);
  }

  LocalStorageService localStorageService = LocalStorageService();

  _tabChangeEvent(
    TabChangeEvent event,
    Emitter<DashboardState> emit,
  ) {}

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    // Initialize the LocalStorageService
    await localStorageService.init();

    // Retrieve the user data from SharedPreferences
    String? userData = localStorageService.userData;
    User? user;

    if (userData != null) {
      try {
        // Decode the JSON string into a User object
        final decodedJson = json.decode(userData);
        user = User.fromJson(decodedJson);
        print('User Email: ${user.email}'); // Example: Print the user's email
      } catch (e) {
        print('Error decoding userData: $e');
      }
    }

    // Initialize other controllers and emit the updated state
    emit(state.copyWith(
      assetsvalueoneController: TextEditingController(),
      pageController: PageController(),
      sideMenu: SideMenuController(),
      user: user, // Store the user object in the state if needed
    ));
  }
}
