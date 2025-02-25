import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/widgets/app_bar.dart';
import 'presentation/widgets/bottom_nav_bar.dart';
import 'features/home/home_screen.dart';
import 'features/downloads/downloads_screen.dart';
import 'features/saved/saved_screen.dart';
import 'features/settings/settings_screen.dart';
import 'presentation/cubit/user_cubit/user_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<Widget> screens = [
    HomeScreen(),
    DownloadsScreen(),
    SavedScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<UserCubit, int>(
        builder: (context, selectedIndex) {
          return screens[selectedIndex];
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
