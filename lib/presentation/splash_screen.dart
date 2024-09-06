// ignore_for_file: library_private_types_in_public_api

import 'package:musamimuk_admin/core/app_export.dart';
import 'package:musamimuk_admin/core/utils/shared_prf.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final LocalStorageService _localStorageService = LocalStorageService();

  @override
  void initState() {
    super.initState();
    _checkUserToken();
  }

  Future<void> _checkUserToken() async {
    // Initialize the shared preferences
    await _localStorageService.init();

    // Get the token from shared preferences
    String? token = _localStorageService.accessToken;

    // Simulate a delay for the splash screen (optional)
    await Future.delayed(const Duration(seconds: 2));

    // Navigate to the appropriate screen based on the presence of the token
    if (token != null && token.isNotEmpty) {
      // Token exists, navigate to the DashboardScreen

      // NavigatorService.pushNamed(AppRoutes.rootScreen);
      NavigatorService.pushNamed(AppRoutes.rootScreen);
    } else {
      // No token, navigate to the LoginScreen
      NavigatorService.pushNamed(AppRoutes.loginPageScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.primarycolor,
      body: Center(
        child: CustomImageView(
          imagePath: ImageConstant.imgMusammimuk02,
        ),
      ),
    );
  }
}
