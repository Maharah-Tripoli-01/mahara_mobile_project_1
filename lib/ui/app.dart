import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maharah_project/application/cart_cubit.dart';
import 'package:maharah_project/application/cart_state.dart';
import 'package:maharah_project/router_app.dart';

const fontFamily = 'primaryFont';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartBloc(
            CartState(
              cartItems: [],
              showSnackBar: false,
            ),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        showSemanticsDebugger: false,
        initialRoute: RouteGenerator.homeScreen,
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: ThemeData(
          fontFamily: fontFamily,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            extendedPadding: EdgeInsets.zero,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Set the border radius here
                ),
              ),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(
                Colors.blue,
              ),
            ),
          ),
          indicatorColor: Colors.grey.withOpacity(0.2),
          scaffoldBackgroundColor: const Color(0xfffefefe),
          dialogTheme: DialogTheme(
            backgroundColor: theme.colorScheme.background,
            elevation: 0,
          ),
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Colors.white,
            onPrimary: Colors.black,
            secondary: Colors.blue,
            onSecondary: Colors.black,
            error: Colors.red,
            onError: Colors.white,
            background: Colors.white,
            onBackground: Colors.white60,
            surface: Colors.white70.withOpacity(0.95),
            onSurface: Colors.black,
          ),
        ),
      ),
    );
  }
}
