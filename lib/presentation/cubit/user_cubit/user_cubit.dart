import 'package:bloc/bloc.dart';

class UserCubit extends Cubit<int> {
  UserCubit() : super(0); // Default tab is "Home"

  void updateTab(int index) {
    emit(index);
  }
}
