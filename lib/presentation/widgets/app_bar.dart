import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentation/cubit/user_cubit/user_cubit.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> titles = ["Home", "Search", "Saved", "Profile"];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, int>(
      builder: (context, selectedIndex) {
        return AppBar(
          title: Text(titles[selectedIndex]),
          actions: [
            if (selectedIndex == 1) // Show search icon only on Search tab
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Implement search functionality
                },
              ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
