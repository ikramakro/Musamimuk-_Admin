import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:toastification/toastification.dart';
import 'core/app_export.dart';
import 'core/utils/shared_prf.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageService().init();
  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  ]).then((value) {
    PrefUtils().init();
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return BlocProvider(
          create: (context) => ThemeBloc(
            ThemeState(
              themeType: PrefUtils().getThemeData(),
            ),
          ),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return ToastificationWrapper(
                child: MaterialApp(
                  theme: theme,
                  title: 'musamimuk_admin',
                  navigatorKey: NavigatorService.navigatorKey,
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: const [
                    AppLocalizationDelegate(),
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate
                  ],
                  supportedLocales: const [
                    Locale(
                      'en',
                      '',
                    )
                  ],
                  initialRoute: AppRoutes.initialRoute,
                  routes: AppRoutes.routes,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
