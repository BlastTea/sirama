// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id_user')
  int? get idUser => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') int? idUser,
      String? username,
      String? email,
      String? role,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') int? idUser,
      String? username,
      String? email,
      String? role,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'id_user') this.idUser,
      this.username,
      this.email,
      this.role,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id_user')
  final int? idUser;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? role;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'User(idUser: $idUser, username: $username, email: $email, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, idUser, username, email, role, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'id_user') final int? idUser,
      final String? username,
      final String? email,
      final String? role,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id_user')
  int? get idUser;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get role;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopikPertanyaan _$TopikPertanyaanFromJson(Map<String, dynamic> json) {
  return _TopikPertanyaan.fromJson(json);
}

/// @nodoc
mixin _$TopikPertanyaan {
  @JsonKey(name: 'id_jetnis_topik_pertanyaan')
  int? get idJenisTopikPertanyaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_topik')
  String? get namaTopik => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopikPertanyaanCopyWith<TopikPertanyaan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopikPertanyaanCopyWith<$Res> {
  factory $TopikPertanyaanCopyWith(
          TopikPertanyaan value, $Res Function(TopikPertanyaan) then) =
      _$TopikPertanyaanCopyWithImpl<$Res, TopikPertanyaan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_jetnis_topik_pertanyaan') int? idJenisTopikPertanyaan,
      @JsonKey(name: 'nama_topik') String? namaTopik,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$TopikPertanyaanCopyWithImpl<$Res, $Val extends TopikPertanyaan>
    implements $TopikPertanyaanCopyWith<$Res> {
  _$TopikPertanyaanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idJenisTopikPertanyaan = freezed,
    Object? namaTopik = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      idJenisTopikPertanyaan: freezed == idJenisTopikPertanyaan
          ? _value.idJenisTopikPertanyaan
          : idJenisTopikPertanyaan // ignore: cast_nullable_to_non_nullable
              as int?,
      namaTopik: freezed == namaTopik
          ? _value.namaTopik
          : namaTopik // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopikPertanyaanImplCopyWith<$Res>
    implements $TopikPertanyaanCopyWith<$Res> {
  factory _$$TopikPertanyaanImplCopyWith(_$TopikPertanyaanImpl value,
          $Res Function(_$TopikPertanyaanImpl) then) =
      __$$TopikPertanyaanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_jetnis_topik_pertanyaan') int? idJenisTopikPertanyaan,
      @JsonKey(name: 'nama_topik') String? namaTopik,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$TopikPertanyaanImplCopyWithImpl<$Res>
    extends _$TopikPertanyaanCopyWithImpl<$Res, _$TopikPertanyaanImpl>
    implements _$$TopikPertanyaanImplCopyWith<$Res> {
  __$$TopikPertanyaanImplCopyWithImpl(
      _$TopikPertanyaanImpl _value, $Res Function(_$TopikPertanyaanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idJenisTopikPertanyaan = freezed,
    Object? namaTopik = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TopikPertanyaanImpl(
      idJenisTopikPertanyaan: freezed == idJenisTopikPertanyaan
          ? _value.idJenisTopikPertanyaan
          : idJenisTopikPertanyaan // ignore: cast_nullable_to_non_nullable
              as int?,
      namaTopik: freezed == namaTopik
          ? _value.namaTopik
          : namaTopik // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopikPertanyaanImpl implements _TopikPertanyaan {
  const _$TopikPertanyaanImpl(
      {@JsonKey(name: 'id_jetnis_topik_pertanyaan') this.idJenisTopikPertanyaan,
      @JsonKey(name: 'nama_topik') this.namaTopik,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$TopikPertanyaanImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopikPertanyaanImplFromJson(json);

  @override
  @JsonKey(name: 'id_jetnis_topik_pertanyaan')
  final int? idJenisTopikPertanyaan;
  @override
  @JsonKey(name: 'nama_topik')
  final String? namaTopik;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TopikPertanyaan(idJenisTopikPertanyaan: $idJenisTopikPertanyaan, namaTopik: $namaTopik, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopikPertanyaanImpl &&
            (identical(other.idJenisTopikPertanyaan, idJenisTopikPertanyaan) ||
                other.idJenisTopikPertanyaan == idJenisTopikPertanyaan) &&
            (identical(other.namaTopik, namaTopik) ||
                other.namaTopik == namaTopik) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, idJenisTopikPertanyaan, namaTopik, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopikPertanyaanImplCopyWith<_$TopikPertanyaanImpl> get copyWith =>
      __$$TopikPertanyaanImplCopyWithImpl<_$TopikPertanyaanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopikPertanyaanImplToJson(
      this,
    );
  }
}

abstract class _TopikPertanyaan implements TopikPertanyaan {
  const factory _TopikPertanyaan(
          {@JsonKey(name: 'id_jetnis_topik_pertanyaan')
          final int? idJenisTopikPertanyaan,
          @JsonKey(name: 'nama_topik') final String? namaTopik,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$TopikPertanyaanImpl;

  factory _TopikPertanyaan.fromJson(Map<String, dynamic> json) =
      _$TopikPertanyaanImpl.fromJson;

  @override
  @JsonKey(name: 'id_jetnis_topik_pertanyaan')
  int? get idJenisTopikPertanyaan;
  @override
  @JsonKey(name: 'nama_topik')
  String? get namaTopik;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TopikPertanyaanImplCopyWith<_$TopikPertanyaanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TanyaAhli _$TanyaAhliFromJson(Map<String, dynamic> json) {
  return _TanyaAhli.fromJson(json);
}

/// @nodoc
mixin _$TanyaAhli {
  @JsonKey(name: 'id_tanya_ahli')
  int? get idTanyaAhli => throw _privateConstructorUsedError;
  @JsonKey(name: 'topik_id')
  int? get topikId => throw _privateConstructorUsedError;
  @JsonKey(name: 'penanya_user_id')
  dynamic get penanyaUserId => throw _privateConstructorUsedError;
  String? get pertanyaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  bool? get statusPertanyaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_tanya')
  DateTime? get waktuTanya => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TanyaAhliCopyWith<TanyaAhli> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TanyaAhliCopyWith<$Res> {
  factory $TanyaAhliCopyWith(TanyaAhli value, $Res Function(TanyaAhli) then) =
      _$TanyaAhliCopyWithImpl<$Res, TanyaAhli>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_tanya_ahli') int? idTanyaAhli,
      @JsonKey(name: 'topik_id') int? topikId,
      @JsonKey(name: 'penanya_user_id') dynamic penanyaUserId,
      String? pertanyaan,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      bool? statusPertanyaan,
      @JsonKey(name: 'waktu_tanya') DateTime? waktuTanya,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$TanyaAhliCopyWithImpl<$Res, $Val extends TanyaAhli>
    implements $TanyaAhliCopyWith<$Res> {
  _$TanyaAhliCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTanyaAhli = freezed,
    Object? topikId = freezed,
    Object? penanyaUserId = freezed,
    Object? pertanyaan = freezed,
    Object? statusPertanyaan = freezed,
    Object? waktuTanya = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      idTanyaAhli: freezed == idTanyaAhli
          ? _value.idTanyaAhli
          : idTanyaAhli // ignore: cast_nullable_to_non_nullable
              as int?,
      topikId: freezed == topikId
          ? _value.topikId
          : topikId // ignore: cast_nullable_to_non_nullable
              as int?,
      penanyaUserId: freezed == penanyaUserId
          ? _value.penanyaUserId
          : penanyaUserId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pertanyaan: freezed == pertanyaan
          ? _value.pertanyaan
          : pertanyaan // ignore: cast_nullable_to_non_nullable
              as String?,
      statusPertanyaan: freezed == statusPertanyaan
          ? _value.statusPertanyaan
          : statusPertanyaan // ignore: cast_nullable_to_non_nullable
              as bool?,
      waktuTanya: freezed == waktuTanya
          ? _value.waktuTanya
          : waktuTanya // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TanyaAhliImplCopyWith<$Res>
    implements $TanyaAhliCopyWith<$Res> {
  factory _$$TanyaAhliImplCopyWith(
          _$TanyaAhliImpl value, $Res Function(_$TanyaAhliImpl) then) =
      __$$TanyaAhliImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_tanya_ahli') int? idTanyaAhli,
      @JsonKey(name: 'topik_id') int? topikId,
      @JsonKey(name: 'penanya_user_id') dynamic penanyaUserId,
      String? pertanyaan,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      bool? statusPertanyaan,
      @JsonKey(name: 'waktu_tanya') DateTime? waktuTanya,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$TanyaAhliImplCopyWithImpl<$Res>
    extends _$TanyaAhliCopyWithImpl<$Res, _$TanyaAhliImpl>
    implements _$$TanyaAhliImplCopyWith<$Res> {
  __$$TanyaAhliImplCopyWithImpl(
      _$TanyaAhliImpl _value, $Res Function(_$TanyaAhliImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTanyaAhli = freezed,
    Object? topikId = freezed,
    Object? penanyaUserId = freezed,
    Object? pertanyaan = freezed,
    Object? statusPertanyaan = freezed,
    Object? waktuTanya = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TanyaAhliImpl(
      idTanyaAhli: freezed == idTanyaAhli
          ? _value.idTanyaAhli
          : idTanyaAhli // ignore: cast_nullable_to_non_nullable
              as int?,
      topikId: freezed == topikId
          ? _value.topikId
          : topikId // ignore: cast_nullable_to_non_nullable
              as int?,
      penanyaUserId:
          freezed == penanyaUserId ? _value.penanyaUserId! : penanyaUserId,
      pertanyaan: freezed == pertanyaan
          ? _value.pertanyaan
          : pertanyaan // ignore: cast_nullable_to_non_nullable
              as String?,
      statusPertanyaan: freezed == statusPertanyaan
          ? _value.statusPertanyaan
          : statusPertanyaan // ignore: cast_nullable_to_non_nullable
              as bool?,
      waktuTanya: freezed == waktuTanya
          ? _value.waktuTanya
          : waktuTanya // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TanyaAhliImpl implements _TanyaAhli {
  const _$TanyaAhliImpl(
      {@JsonKey(name: 'id_tanya_ahli') this.idTanyaAhli,
      @JsonKey(name: 'topik_id') this.topikId,
      @JsonKey(name: 'penanya_user_id') this.penanyaUserId,
      this.pertanyaan,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      this.statusPertanyaan,
      @JsonKey(name: 'waktu_tanya') this.waktuTanya,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$TanyaAhliImpl.fromJson(Map<String, dynamic> json) =>
      _$$TanyaAhliImplFromJson(json);

  @override
  @JsonKey(name: 'id_tanya_ahli')
  final int? idTanyaAhli;
  @override
  @JsonKey(name: 'topik_id')
  final int? topikId;
  @override
  @JsonKey(name: 'penanya_user_id')
  final dynamic penanyaUserId;
  @override
  final String? pertanyaan;
  @override
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  final bool? statusPertanyaan;
  @override
  @JsonKey(name: 'waktu_tanya')
  final DateTime? waktuTanya;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TanyaAhli(idTanyaAhli: $idTanyaAhli, topikId: $topikId, penanyaUserId: $penanyaUserId, pertanyaan: $pertanyaan, statusPertanyaan: $statusPertanyaan, waktuTanya: $waktuTanya, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TanyaAhliImpl &&
            (identical(other.idTanyaAhli, idTanyaAhli) ||
                other.idTanyaAhli == idTanyaAhli) &&
            (identical(other.topikId, topikId) || other.topikId == topikId) &&
            const DeepCollectionEquality()
                .equals(other.penanyaUserId, penanyaUserId) &&
            (identical(other.pertanyaan, pertanyaan) ||
                other.pertanyaan == pertanyaan) &&
            (identical(other.statusPertanyaan, statusPertanyaan) ||
                other.statusPertanyaan == statusPertanyaan) &&
            (identical(other.waktuTanya, waktuTanya) ||
                other.waktuTanya == waktuTanya) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idTanyaAhli,
      topikId,
      const DeepCollectionEquality().hash(penanyaUserId),
      pertanyaan,
      statusPertanyaan,
      waktuTanya,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TanyaAhliImplCopyWith<_$TanyaAhliImpl> get copyWith =>
      __$$TanyaAhliImplCopyWithImpl<_$TanyaAhliImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TanyaAhliImplToJson(
      this,
    );
  }
}

abstract class _TanyaAhli implements TanyaAhli {
  const factory _TanyaAhli(
          {@JsonKey(name: 'id_tanya_ahli') final int? idTanyaAhli,
          @JsonKey(name: 'topik_id') final int? topikId,
          @JsonKey(name: 'penanya_user_id') final dynamic penanyaUserId,
          final String? pertanyaan,
          @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
          final bool? statusPertanyaan,
          @JsonKey(name: 'waktu_tanya') final DateTime? waktuTanya,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$TanyaAhliImpl;

  factory _TanyaAhli.fromJson(Map<String, dynamic> json) =
      _$TanyaAhliImpl.fromJson;

  @override
  @JsonKey(name: 'id_tanya_ahli')
  int? get idTanyaAhli;
  @override
  @JsonKey(name: 'topik_id')
  int? get topikId;
  @override
  @JsonKey(name: 'penanya_user_id')
  dynamic get penanyaUserId;
  @override
  String? get pertanyaan;
  @override
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  bool? get statusPertanyaan;
  @override
  @JsonKey(name: 'waktu_tanya')
  DateTime? get waktuTanya;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TanyaAhliImplCopyWith<_$TanyaAhliImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
