import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentation/cubit/user_cubit/user_cubit.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, int>(
      builder: (context, selectedIndex) {
        return BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            context.read<UserCubit>().updateTab(index);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Saved"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Settings"),
          ],
        );
      },
    );
  }
}
