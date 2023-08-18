import 'package:bloc/bloc.dart';

import '../model/guest_model.dart';
import 'guestlist_state.dart';

class GuestlistCubit extends Cubit<GuestlistState> {
  GuestlistCubit() : super(GuestlistState());

  void getlist() async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(Duration(seconds: 3));
    emit(state.copyWith(guestlist: Guest.guestList, isLoading: false));
  }
}
