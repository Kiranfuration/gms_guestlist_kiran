// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guestlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuestlistState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Guest> get guestlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestlistStateCopyWith<GuestlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestlistStateCopyWith<$Res> {
  factory $GuestlistStateCopyWith(
          GuestlistState value, $Res Function(GuestlistState) then) =
      _$GuestlistStateCopyWithImpl<$Res, GuestlistState>;
  @useResult
  $Res call({bool isLoading, String errorMessage, List<Guest> guestlist});
}

/// @nodoc
class _$GuestlistStateCopyWithImpl<$Res, $Val extends GuestlistState>
    implements $GuestlistStateCopyWith<$Res> {
  _$GuestlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? guestlist = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      guestlist: null == guestlist
          ? _value.guestlist
          : guestlist // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestlistStateCopyWith<$Res>
    implements $GuestlistStateCopyWith<$Res> {
  factory _$$_GuestlistStateCopyWith(
          _$_GuestlistState value, $Res Function(_$_GuestlistState) then) =
      __$$_GuestlistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMessage, List<Guest> guestlist});
}

/// @nodoc
class __$$_GuestlistStateCopyWithImpl<$Res>
    extends _$GuestlistStateCopyWithImpl<$Res, _$_GuestlistState>
    implements _$$_GuestlistStateCopyWith<$Res> {
  __$$_GuestlistStateCopyWithImpl(
      _$_GuestlistState _value, $Res Function(_$_GuestlistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? guestlist = null,
  }) {
    return _then(_$_GuestlistState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      guestlist: null == guestlist
          ? _value._guestlist
          : guestlist // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
    ));
  }
}

/// @nodoc

class _$_GuestlistState implements _GuestlistState {
  const _$_GuestlistState(
      {this.isLoading = false,
      this.errorMessage = '',
      final List<Guest> guestlist = const []})
      : _guestlist = guestlist;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<Guest> _guestlist;
  @override
  @JsonKey()
  List<Guest> get guestlist {
    if (_guestlist is EqualUnmodifiableListView) return _guestlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guestlist);
  }

  @override
  String toString() {
    return 'GuestlistState(isLoading: $isLoading, errorMessage: $errorMessage, guestlist: $guestlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestlistState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._guestlist, _guestlist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      const DeepCollectionEquality().hash(_guestlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestlistStateCopyWith<_$_GuestlistState> get copyWith =>
      __$$_GuestlistStateCopyWithImpl<_$_GuestlistState>(this, _$identity);
}

abstract class _GuestlistState implements GuestlistState {
  const factory _GuestlistState(
      {final bool isLoading,
      final String errorMessage,
      final List<Guest> guestlist}) = _$_GuestlistState;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<Guest> get guestlist;
  @override
  @JsonKey(ignore: true)
  _$$_GuestlistStateCopyWith<_$_GuestlistState> get copyWith =>
      throw _privateConstructorUsedError;
}
