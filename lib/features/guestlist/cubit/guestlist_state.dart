// part of 'guestlist_cubit.dart';

 import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/guest_model.dart';

part 'guestlist_state.freezed.dart';
@freezed
abstract class GuestlistState with _$GuestlistState {
  const factory GuestlistState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<Guest> guestlist,
  }) = _GuestlistState;
}
