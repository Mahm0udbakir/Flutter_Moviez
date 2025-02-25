import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/business_logic/cubit/user_cubit/user_cubit.dart';

class CustomAppBar extends StatelessWidget {
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

}
