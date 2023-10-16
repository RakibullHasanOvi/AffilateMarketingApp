import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/pages/splash-screen.dart';
import 'package:new_project/providers/bottom_index.dart';
import 'package:new_project/providers/checkbox.dart';
import 'package:new_project/providers/copy_provider.dart';
import 'package:new_project/providers/image_provider.dart';
import 'package:new_project/providers/obsecure.dart';
import 'package:new_project/providers/subscription_provider.dart';
import 'package:provider/provider.dart';

void main() {
  // This is useing for to stop oriantion mood
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ObSecureText()),
        ChangeNotifierProvider(create: (context) => CheckBoxProvider()),
        ChangeNotifierProvider(create: (context) => CurrentIndex()),
        ChangeNotifierProvider(create: (context) => SubscriptionProvider()),
        ChangeNotifierProvider(create: (context) => CopyProvider()),
        ChangeNotifierProvider(create: (context) => ProfileImageModel()),
      ],
      child: ScreenUtilInit(
        //! There has used this packege for maintain of all mobile devices
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              useMaterial3: true,
            ),
            home: const SplashScreen(),
            // const LoginPage(),
          );
        },
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
      ),
    );
  }
}
