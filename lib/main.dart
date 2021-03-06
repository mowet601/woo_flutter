import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woo_flutter/Screens/Splash/Splash.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/icons/woo.gif"), context);
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        accentColor: Colors.white,
        canvasColor: Colors.white,
        bottomAppBarColor: Colors.white,
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme.apply(
              displayColor: Colors.purple,
              bodyColor: Colors.purple
          ),
        ),
        primaryTextTheme:
            GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme.apply(
                displayColor: Colors.white,
                bodyColor: Colors.white
            )),
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
        accentColor: Colors.black,
        canvasColor: Colors.black,
        bottomAppBarColor: Colors.black54,
        textTheme:
            GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme.apply(
                displayColor: Colors.white,
                bodyColor: Colors.white
            )),
        primaryTextTheme:
            GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme.apply(
              displayColor: Colors.white,
              bodyColor: Colors.white
            )),
      ),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Woo Flutter',
        theme: theme,
        darkTheme: darkTheme,
        home: SplashScreen(),
      ),
    );
  }
}
