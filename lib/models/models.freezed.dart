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
  @JsonKey(name: 'id_jenis_topik_pertanyaan')
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
      {@JsonKey(name: 'id_jenis_topik_pertanyaan') int? idJenisTopikPertanyaan,
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
      {@JsonKey(name: 'id_jenis_topik_pertanyaan') int? idJenisTopikPertanyaan,
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
      {@JsonKey(name: 'id_jenis_topik_pertanyaan') this.idJenisTopikPertanyaan,
      @JsonKey(name: 'nama_topik') this.namaTopik,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$TopikPertanyaanImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopikPertanyaanImplFromJson(json);

  @override
  @JsonKey(name: 'id_jenis_topik_pertanyaan')
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
          {@JsonKey(name: 'id_jenis_topik_pertanyaan')
          final int? idJenisTopikPertanyaan,
          @JsonKey(name: 'nama_topik') final String? namaTopik,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$TopikPertanyaanImpl;

  factory _TopikPertanyaan.fromJson(Map<String, dynamic> json) =
      _$TopikPertanyaanImpl.fromJson;

  @override
  @JsonKey(name: 'id_jenis_topik_pertanyaan')
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
  @JsonKey(name: 'id_tanya_ahli')
  set idTanyaAhli(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'topik_id')
  int? get topikId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topik_id')
  set topikId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'penanya_user_id')
  dynamic get penanyaUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'penanya_user_id')
  set penanyaUserId(dynamic value) => throw _privateConstructorUsedError;
  String? get pertanyaan => throw _privateConstructorUsedError;
  set pertanyaan(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  bool? get statusPertanyaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  set statusPertanyaan(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_tanya')
  DateTime? get waktuTanya => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_tanya')
  set waktuTanya(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  JawabanAhli? get jawabanAhli => throw _privateConstructorUsedError;
  set jawabanAhli(JawabanAhli? value) => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      JawabanAhli? jawabanAhli});

  $JawabanAhliCopyWith<$Res>? get jawabanAhli;
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
    Object? jawabanAhli = freezed,
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
      jawabanAhli: freezed == jawabanAhli
          ? _value.jawabanAhli
          : jawabanAhli // ignore: cast_nullable_to_non_nullable
              as JawabanAhli?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JawabanAhliCopyWith<$Res>? get jawabanAhli {
    if (_value.jawabanAhli == null) {
      return null;
    }

    return $JawabanAhliCopyWith<$Res>(_value.jawabanAhli!, (value) {
      return _then(_value.copyWith(jawabanAhli: value) as $Val);
    });
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
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      JawabanAhli? jawabanAhli});

  @override
  $JawabanAhliCopyWith<$Res>? get jawabanAhli;
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
    Object? jawabanAhli = freezed,
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
      jawabanAhli: freezed == jawabanAhli
          ? _value.jawabanAhli
          : jawabanAhli // ignore: cast_nullable_to_non_nullable
              as JawabanAhli?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TanyaAhliImpl implements _TanyaAhli {
  _$TanyaAhliImpl(
      {@JsonKey(name: 'id_tanya_ahli') this.idTanyaAhli,
      @JsonKey(name: 'topik_id') this.topikId,
      @JsonKey(name: 'penanya_user_id') this.penanyaUserId,
      this.pertanyaan,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      this.statusPertanyaan,
      @JsonKey(name: 'waktu_tanya') this.waktuTanya,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.jawabanAhli});

  factory _$TanyaAhliImpl.fromJson(Map<String, dynamic> json) =>
      _$$TanyaAhliImplFromJson(json);

  @override
  @JsonKey(name: 'id_tanya_ahli')
  int? idTanyaAhli;
  @override
  @JsonKey(name: 'topik_id')
  int? topikId;
  @override
  @JsonKey(name: 'penanya_user_id')
  dynamic penanyaUserId;
  @override
  String? pertanyaan;
  @override
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  bool? statusPertanyaan;
  @override
  @JsonKey(name: 'waktu_tanya')
  DateTime? waktuTanya;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  JawabanAhli? jawabanAhli;

  @override
  String toString() {
    return 'TanyaAhli(idTanyaAhli: $idTanyaAhli, topikId: $topikId, penanyaUserId: $penanyaUserId, pertanyaan: $pertanyaan, statusPertanyaan: $statusPertanyaan, waktuTanya: $waktuTanya, createdAt: $createdAt, updatedAt: $updatedAt, jawabanAhli: $jawabanAhli)';
  }

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
  factory _TanyaAhli(
      {@JsonKey(name: 'id_tanya_ahli') int? idTanyaAhli,
      @JsonKey(name: 'topik_id') int? topikId,
      @JsonKey(name: 'penanya_user_id') dynamic penanyaUserId,
      String? pertanyaan,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      bool? statusPertanyaan,
      @JsonKey(name: 'waktu_tanya') DateTime? waktuTanya,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      JawabanAhli? jawabanAhli}) = _$TanyaAhliImpl;

  factory _TanyaAhli.fromJson(Map<String, dynamic> json) =
      _$TanyaAhliImpl.fromJson;

  @override
  @JsonKey(name: 'id_tanya_ahli')
  int? get idTanyaAhli;
  @JsonKey(name: 'id_tanya_ahli')
  set idTanyaAhli(int? value);
  @override
  @JsonKey(name: 'topik_id')
  int? get topikId;
  @JsonKey(name: 'topik_id')
  set topikId(int? value);
  @override
  @JsonKey(name: 'penanya_user_id')
  dynamic get penanyaUserId;
  @JsonKey(name: 'penanya_user_id')
  set penanyaUserId(dynamic value);
  @override
  String? get pertanyaan;
  set pertanyaan(String? value);
  @override
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  bool? get statusPertanyaan;
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  set statusPertanyaan(bool? value);
  @override
  @JsonKey(name: 'waktu_tanya')
  DateTime? get waktuTanya;
  @JsonKey(name: 'waktu_tanya')
  set waktuTanya(DateTime? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  JawabanAhli? get jawabanAhli;
  set jawabanAhli(JawabanAhli? value);
  @override
  @JsonKey(ignore: true)
  _$$TanyaAhliImplCopyWith<_$TanyaAhliImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JawabanAhli _$JawabanAhliFromJson(Map<String, dynamic> json) {
  return _JawabanAhli.fromJson(json);
}

/// @nodoc
mixin _$JawabanAhli {
  @JsonKey(name: 'id_jawaban_ahli')
  int? get idJawabanAhli => throw _privateConstructorUsedError;
  @JsonKey(name: 'penjawab_user_id')
  int? get penjawabUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanya_ahli_id')
  int? get tanyaAhliId => throw _privateConstructorUsedError;
  @JsonKey(name: 'jawaban_ahli')
  String? get jawabanAhli => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_jawaban')
  DateTime? get waktuJawaban => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get pertanyaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'penanya_user_id')
  int? get penanyaUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  bool? get statusPertanyaan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JawabanAhliCopyWith<JawabanAhli> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JawabanAhliCopyWith<$Res> {
  factory $JawabanAhliCopyWith(
          JawabanAhli value, $Res Function(JawabanAhli) then) =
      _$JawabanAhliCopyWithImpl<$Res, JawabanAhli>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_jawaban_ahli') int? idJawabanAhli,
      @JsonKey(name: 'penjawab_user_id') int? penjawabUserId,
      @JsonKey(name: 'tanya_ahli_id') int? tanyaAhliId,
      @JsonKey(name: 'jawaban_ahli') String? jawabanAhli,
      @JsonKey(name: 'waktu_jawaban') DateTime? waktuJawaban,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? pertanyaan,
      @JsonKey(name: 'penanya_user_id') int? penanyaUserId,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      bool? statusPertanyaan});
}

/// @nodoc
class _$JawabanAhliCopyWithImpl<$Res, $Val extends JawabanAhli>
    implements $JawabanAhliCopyWith<$Res> {
  _$JawabanAhliCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idJawabanAhli = freezed,
    Object? penjawabUserId = freezed,
    Object? tanyaAhliId = freezed,
    Object? jawabanAhli = freezed,
    Object? waktuJawaban = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pertanyaan = freezed,
    Object? penanyaUserId = freezed,
    Object? statusPertanyaan = freezed,
  }) {
    return _then(_value.copyWith(
      idJawabanAhli: freezed == idJawabanAhli
          ? _value.idJawabanAhli
          : idJawabanAhli // ignore: cast_nullable_to_non_nullable
              as int?,
      penjawabUserId: freezed == penjawabUserId
          ? _value.penjawabUserId
          : penjawabUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanyaAhliId: freezed == tanyaAhliId
          ? _value.tanyaAhliId
          : tanyaAhliId // ignore: cast_nullable_to_non_nullable
              as int?,
      jawabanAhli: freezed == jawabanAhli
          ? _value.jawabanAhli
          : jawabanAhli // ignore: cast_nullable_to_non_nullable
              as String?,
      waktuJawaban: freezed == waktuJawaban
          ? _value.waktuJawaban
          : waktuJawaban // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pertanyaan: freezed == pertanyaan
          ? _value.pertanyaan
          : pertanyaan // ignore: cast_nullable_to_non_nullable
              as String?,
      penanyaUserId: freezed == penanyaUserId
          ? _value.penanyaUserId
          : penanyaUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusPertanyaan: freezed == statusPertanyaan
          ? _value.statusPertanyaan
          : statusPertanyaan // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JawabanAhliImplCopyWith<$Res>
    implements $JawabanAhliCopyWith<$Res> {
  factory _$$JawabanAhliImplCopyWith(
          _$JawabanAhliImpl value, $Res Function(_$JawabanAhliImpl) then) =
      __$$JawabanAhliImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_jawaban_ahli') int? idJawabanAhli,
      @JsonKey(name: 'penjawab_user_id') int? penjawabUserId,
      @JsonKey(name: 'tanya_ahli_id') int? tanyaAhliId,
      @JsonKey(name: 'jawaban_ahli') String? jawabanAhli,
      @JsonKey(name: 'waktu_jawaban') DateTime? waktuJawaban,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? pertanyaan,
      @JsonKey(name: 'penanya_user_id') int? penanyaUserId,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      bool? statusPertanyaan});
}

/// @nodoc
class __$$JawabanAhliImplCopyWithImpl<$Res>
    extends _$JawabanAhliCopyWithImpl<$Res, _$JawabanAhliImpl>
    implements _$$JawabanAhliImplCopyWith<$Res> {
  __$$JawabanAhliImplCopyWithImpl(
      _$JawabanAhliImpl _value, $Res Function(_$JawabanAhliImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idJawabanAhli = freezed,
    Object? penjawabUserId = freezed,
    Object? tanyaAhliId = freezed,
    Object? jawabanAhli = freezed,
    Object? waktuJawaban = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pertanyaan = freezed,
    Object? penanyaUserId = freezed,
    Object? statusPertanyaan = freezed,
  }) {
    return _then(_$JawabanAhliImpl(
      idJawabanAhli: freezed == idJawabanAhli
          ? _value.idJawabanAhli
          : idJawabanAhli // ignore: cast_nullable_to_non_nullable
              as int?,
      penjawabUserId: freezed == penjawabUserId
          ? _value.penjawabUserId
          : penjawabUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      tanyaAhliId: freezed == tanyaAhliId
          ? _value.tanyaAhliId
          : tanyaAhliId // ignore: cast_nullable_to_non_nullable
              as int?,
      jawabanAhli: freezed == jawabanAhli
          ? _value.jawabanAhli
          : jawabanAhli // ignore: cast_nullable_to_non_nullable
              as String?,
      waktuJawaban: freezed == waktuJawaban
          ? _value.waktuJawaban
          : waktuJawaban // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pertanyaan: freezed == pertanyaan
          ? _value.pertanyaan
          : pertanyaan // ignore: cast_nullable_to_non_nullable
              as String?,
      penanyaUserId: freezed == penanyaUserId
          ? _value.penanyaUserId
          : penanyaUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusPertanyaan: freezed == statusPertanyaan
          ? _value.statusPertanyaan
          : statusPertanyaan // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JawabanAhliImpl implements _JawabanAhli {
  const _$JawabanAhliImpl(
      {@JsonKey(name: 'id_jawaban_ahli') this.idJawabanAhli,
      @JsonKey(name: 'penjawab_user_id') this.penjawabUserId,
      @JsonKey(name: 'tanya_ahli_id') this.tanyaAhliId,
      @JsonKey(name: 'jawaban_ahli') this.jawabanAhli,
      @JsonKey(name: 'waktu_jawaban') this.waktuJawaban,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.pertanyaan,
      @JsonKey(name: 'penanya_user_id') this.penanyaUserId,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      this.statusPertanyaan});

  factory _$JawabanAhliImpl.fromJson(Map<String, dynamic> json) =>
      _$$JawabanAhliImplFromJson(json);

  @override
  @JsonKey(name: 'id_jawaban_ahli')
  final int? idJawabanAhli;
  @override
  @JsonKey(name: 'penjawab_user_id')
  final int? penjawabUserId;
  @override
  @JsonKey(name: 'tanya_ahli_id')
  final int? tanyaAhliId;
  @override
  @JsonKey(name: 'jawaban_ahli')
  final String? jawabanAhli;
  @override
  @JsonKey(name: 'waktu_jawaban')
  final DateTime? waktuJawaban;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? pertanyaan;
  @override
  @JsonKey(name: 'penanya_user_id')
  final int? penanyaUserId;
  @override
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  final bool? statusPertanyaan;

  @override
  String toString() {
    return 'JawabanAhli(idJawabanAhli: $idJawabanAhli, penjawabUserId: $penjawabUserId, tanyaAhliId: $tanyaAhliId, jawabanAhli: $jawabanAhli, waktuJawaban: $waktuJawaban, createdAt: $createdAt, updatedAt: $updatedAt, pertanyaan: $pertanyaan, penanyaUserId: $penanyaUserId, statusPertanyaan: $statusPertanyaan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JawabanAhliImpl &&
            (identical(other.idJawabanAhli, idJawabanAhli) ||
                other.idJawabanAhli == idJawabanAhli) &&
            (identical(other.penjawabUserId, penjawabUserId) ||
                other.penjawabUserId == penjawabUserId) &&
            (identical(other.tanyaAhliId, tanyaAhliId) ||
                other.tanyaAhliId == tanyaAhliId) &&
            (identical(other.jawabanAhli, jawabanAhli) ||
                other.jawabanAhli == jawabanAhli) &&
            (identical(other.waktuJawaban, waktuJawaban) ||
                other.waktuJawaban == waktuJawaban) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.pertanyaan, pertanyaan) ||
                other.pertanyaan == pertanyaan) &&
            (identical(other.penanyaUserId, penanyaUserId) ||
                other.penanyaUserId == penanyaUserId) &&
            (identical(other.statusPertanyaan, statusPertanyaan) ||
                other.statusPertanyaan == statusPertanyaan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idJawabanAhli,
      penjawabUserId,
      tanyaAhliId,
      jawabanAhli,
      waktuJawaban,
      createdAt,
      updatedAt,
      pertanyaan,
      penanyaUserId,
      statusPertanyaan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JawabanAhliImplCopyWith<_$JawabanAhliImpl> get copyWith =>
      __$$JawabanAhliImplCopyWithImpl<_$JawabanAhliImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JawabanAhliImplToJson(
      this,
    );
  }
}

abstract class _JawabanAhli implements JawabanAhli {
  const factory _JawabanAhli(
      {@JsonKey(name: 'id_jawaban_ahli') final int? idJawabanAhli,
      @JsonKey(name: 'penjawab_user_id') final int? penjawabUserId,
      @JsonKey(name: 'tanya_ahli_id') final int? tanyaAhliId,
      @JsonKey(name: 'jawaban_ahli') final String? jawabanAhli,
      @JsonKey(name: 'waktu_jawaban') final DateTime? waktuJawaban,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? pertanyaan,
      @JsonKey(name: 'penanya_user_id') final int? penanyaUserId,
      @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
      final bool? statusPertanyaan}) = _$JawabanAhliImpl;

  factory _JawabanAhli.fromJson(Map<String, dynamic> json) =
      _$JawabanAhliImpl.fromJson;

  @override
  @JsonKey(name: 'id_jawaban_ahli')
  int? get idJawabanAhli;
  @override
  @JsonKey(name: 'penjawab_user_id')
  int? get penjawabUserId;
  @override
  @JsonKey(name: 'tanya_ahli_id')
  int? get tanyaAhliId;
  @override
  @JsonKey(name: 'jawaban_ahli')
  String? get jawabanAhli;
  @override
  @JsonKey(name: 'waktu_jawaban')
  DateTime? get waktuJawaban;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get pertanyaan;
  @override
  @JsonKey(name: 'penanya_user_id')
  int? get penanyaUserId;
  @override
  @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
  bool? get statusPertanyaan;
  @override
  @JsonKey(ignore: true)
  _$$JawabanAhliImplCopyWith<_$JawabanAhliImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Podcast _$PodcastFromJson(Map<String, dynamic> json) {
  return _Podcast.fromJson(json);
}

/// @nodoc
mixin _$Podcast {
  @JsonKey(name: 'id_podcast')
  int? get idPodcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_podcast')
  set idPodcast(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'judul_podcast')
  String? get judulPodcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'judul_podcast')
  set judulPodcast(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_podcast')
  String? get linkPodcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_podcast')
  set linkPodcast(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_upload')
  DateTime? get tanggalUpload => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_upload')
  set tanggalUpload(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_user_id')
  set uploadUserId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastCopyWith<Podcast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastCopyWith<$Res> {
  factory $PodcastCopyWith(Podcast value, $Res Function(Podcast) then) =
      _$PodcastCopyWithImpl<$Res, Podcast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_podcast') int? idPodcast,
      @JsonKey(name: 'judul_podcast') String? judulPodcast,
      @JsonKey(name: 'link_podcast') String? linkPodcast,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData});
}

/// @nodoc
class _$PodcastCopyWithImpl<$Res, $Val extends Podcast>
    implements $PodcastCopyWith<$Res> {
  _$PodcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPodcast = freezed,
    Object? judulPodcast = freezed,
    Object? linkPodcast = freezed,
    Object? tanggalUpload = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalLikes = freezed,
    Object? thumbnailImageData = freezed,
  }) {
    return _then(_value.copyWith(
      idPodcast: freezed == idPodcast
          ? _value.idPodcast
          : idPodcast // ignore: cast_nullable_to_non_nullable
              as int?,
      judulPodcast: freezed == judulPodcast
          ? _value.judulPodcast
          : judulPodcast // ignore: cast_nullable_to_non_nullable
              as String?,
      linkPodcast: freezed == linkPodcast
          ? _value.linkPodcast
          : linkPodcast // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalUpload: freezed == tanggalUpload
          ? _value.tanggalUpload
          : tanggalUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastImplCopyWith<$Res> implements $PodcastCopyWith<$Res> {
  factory _$$PodcastImplCopyWith(
          _$PodcastImpl value, $Res Function(_$PodcastImpl) then) =
      __$$PodcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_podcast') int? idPodcast,
      @JsonKey(name: 'judul_podcast') String? judulPodcast,
      @JsonKey(name: 'link_podcast') String? linkPodcast,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData});
}

/// @nodoc
class __$$PodcastImplCopyWithImpl<$Res>
    extends _$PodcastCopyWithImpl<$Res, _$PodcastImpl>
    implements _$$PodcastImplCopyWith<$Res> {
  __$$PodcastImplCopyWithImpl(
      _$PodcastImpl _value, $Res Function(_$PodcastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPodcast = freezed,
    Object? judulPodcast = freezed,
    Object? linkPodcast = freezed,
    Object? tanggalUpload = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalLikes = freezed,
    Object? thumbnailImageData = freezed,
  }) {
    return _then(_$PodcastImpl(
      idPodcast: freezed == idPodcast
          ? _value.idPodcast
          : idPodcast // ignore: cast_nullable_to_non_nullable
              as int?,
      judulPodcast: freezed == judulPodcast
          ? _value.judulPodcast
          : judulPodcast // ignore: cast_nullable_to_non_nullable
              as String?,
      linkPodcast: freezed == linkPodcast
          ? _value.linkPodcast
          : linkPodcast // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalUpload: freezed == tanggalUpload
          ? _value.tanggalUpload
          : tanggalUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastImpl implements _Podcast {
  _$PodcastImpl(
      {@JsonKey(name: 'id_podcast') this.idPodcast,
      @JsonKey(name: 'judul_podcast') this.judulPodcast,
      @JsonKey(name: 'link_podcast') this.linkPodcast,
      @JsonKey(name: 'tgl_upload') this.tanggalUpload,
      @JsonKey(name: 'upload_user_id') this.uploadUserId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) this.totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.thumbnailImageData});

  factory _$PodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastImplFromJson(json);

  @override
  @JsonKey(name: 'id_podcast')
  int? idPodcast;
  @override
  @JsonKey(name: 'judul_podcast')
  String? judulPodcast;
  @override
  @JsonKey(name: 'link_podcast')
  String? linkPodcast;
  @override
  @JsonKey(name: 'tgl_upload')
  DateTime? tanggalUpload;
  @override
  @JsonKey(name: 'upload_user_id')
  int? uploadUserId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? totalLikes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;

  @override
  String toString() {
    return 'Podcast(idPodcast: $idPodcast, judulPodcast: $judulPodcast, linkPodcast: $linkPodcast, tanggalUpload: $tanggalUpload, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt, totalLikes: $totalLikes, thumbnailImageData: $thumbnailImageData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastImplCopyWith<_$PodcastImpl> get copyWith =>
      __$$PodcastImplCopyWithImpl<_$PodcastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastImplToJson(
      this,
    );
  }
}

abstract class _Podcast implements Podcast {
  factory _Podcast(
      {@JsonKey(name: 'id_podcast') int? idPodcast,
      @JsonKey(name: 'judul_podcast') String? judulPodcast,
      @JsonKey(name: 'link_podcast') String? linkPodcast,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData}) = _$PodcastImpl;

  factory _Podcast.fromJson(Map<String, dynamic> json) = _$PodcastImpl.fromJson;

  @override
  @JsonKey(name: 'id_podcast')
  int? get idPodcast;
  @JsonKey(name: 'id_podcast')
  set idPodcast(int? value);
  @override
  @JsonKey(name: 'judul_podcast')
  String? get judulPodcast;
  @JsonKey(name: 'judul_podcast')
  set judulPodcast(String? value);
  @override
  @JsonKey(name: 'link_podcast')
  String? get linkPodcast;
  @JsonKey(name: 'link_podcast')
  set linkPodcast(String? value);
  @override
  @JsonKey(name: 'tgl_upload')
  DateTime? get tanggalUpload;
  @JsonKey(name: 'tgl_upload')
  set tanggalUpload(DateTime? value);
  @override
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId;
  @JsonKey(name: 'upload_user_id')
  set uploadUserId(int? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value);
  @override
  @JsonKey(ignore: true)
  _$$PodcastImplCopyWith<_$PodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Film _$FilmFromJson(Map<String, dynamic> json) {
  return _Film.fromJson(json);
}

/// @nodoc
mixin _$Film {
  @JsonKey(name: 'id_film')
  int? get idFilm => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_film')
  set idFilm(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'judul_film')
  String? get judulFilm => throw _privateConstructorUsedError;
  @JsonKey(name: 'judul_film')
  set judulFilm(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_film')
  String? get linkFilm => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_film')
  set linkFilm(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_upload')
  DateTime? get tanggalUpload => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_upload')
  set tanggalUpload(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_user_id')
  set uploadUserId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmCopyWith<Film> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmCopyWith<$Res> {
  factory $FilmCopyWith(Film value, $Res Function(Film) then) =
      _$FilmCopyWithImpl<$Res, Film>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_film') int? idFilm,
      @JsonKey(name: 'judul_film') String? judulFilm,
      @JsonKey(name: 'link_film') String? linkFilm,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData});
}

/// @nodoc
class _$FilmCopyWithImpl<$Res, $Val extends Film>
    implements $FilmCopyWith<$Res> {
  _$FilmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFilm = freezed,
    Object? judulFilm = freezed,
    Object? linkFilm = freezed,
    Object? tanggalUpload = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalLikes = freezed,
    Object? thumbnailImageData = freezed,
  }) {
    return _then(_value.copyWith(
      idFilm: freezed == idFilm
          ? _value.idFilm
          : idFilm // ignore: cast_nullable_to_non_nullable
              as int?,
      judulFilm: freezed == judulFilm
          ? _value.judulFilm
          : judulFilm // ignore: cast_nullable_to_non_nullable
              as String?,
      linkFilm: freezed == linkFilm
          ? _value.linkFilm
          : linkFilm // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalUpload: freezed == tanggalUpload
          ? _value.tanggalUpload
          : tanggalUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilmImplCopyWith<$Res> implements $FilmCopyWith<$Res> {
  factory _$$FilmImplCopyWith(
          _$FilmImpl value, $Res Function(_$FilmImpl) then) =
      __$$FilmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_film') int? idFilm,
      @JsonKey(name: 'judul_film') String? judulFilm,
      @JsonKey(name: 'link_film') String? linkFilm,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData});
}

/// @nodoc
class __$$FilmImplCopyWithImpl<$Res>
    extends _$FilmCopyWithImpl<$Res, _$FilmImpl>
    implements _$$FilmImplCopyWith<$Res> {
  __$$FilmImplCopyWithImpl(_$FilmImpl _value, $Res Function(_$FilmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFilm = freezed,
    Object? judulFilm = freezed,
    Object? linkFilm = freezed,
    Object? tanggalUpload = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalLikes = freezed,
    Object? thumbnailImageData = freezed,
  }) {
    return _then(_$FilmImpl(
      idFilm: freezed == idFilm
          ? _value.idFilm
          : idFilm // ignore: cast_nullable_to_non_nullable
              as int?,
      judulFilm: freezed == judulFilm
          ? _value.judulFilm
          : judulFilm // ignore: cast_nullable_to_non_nullable
              as String?,
      linkFilm: freezed == linkFilm
          ? _value.linkFilm
          : linkFilm // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalUpload: freezed == tanggalUpload
          ? _value.tanggalUpload
          : tanggalUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilmImpl implements _Film {
  _$FilmImpl(
      {@JsonKey(name: 'id_film') this.idFilm,
      @JsonKey(name: 'judul_film') this.judulFilm,
      @JsonKey(name: 'link_film') this.linkFilm,
      @JsonKey(name: 'tgl_upload') this.tanggalUpload,
      @JsonKey(name: 'upload_user_id') this.uploadUserId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) this.totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.thumbnailImageData});

  factory _$FilmImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilmImplFromJson(json);

  @override
  @JsonKey(name: 'id_film')
  int? idFilm;
  @override
  @JsonKey(name: 'judul_film')
  String? judulFilm;
  @override
  @JsonKey(name: 'link_film')
  String? linkFilm;
  @override
  @JsonKey(name: 'tgl_upload')
  DateTime? tanggalUpload;
  @override
  @JsonKey(name: 'upload_user_id')
  int? uploadUserId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? totalLikes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;

  @override
  String toString() {
    return 'Film(idFilm: $idFilm, judulFilm: $judulFilm, linkFilm: $linkFilm, tanggalUpload: $tanggalUpload, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt, totalLikes: $totalLikes, thumbnailImageData: $thumbnailImageData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilmImplCopyWith<_$FilmImpl> get copyWith =>
      __$$FilmImplCopyWithImpl<_$FilmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilmImplToJson(
      this,
    );
  }
}

abstract class _Film implements Film {
  factory _Film(
      {@JsonKey(name: 'id_film') int? idFilm,
      @JsonKey(name: 'judul_film') String? judulFilm,
      @JsonKey(name: 'link_film') String? linkFilm,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData}) = _$FilmImpl;

  factory _Film.fromJson(Map<String, dynamic> json) = _$FilmImpl.fromJson;

  @override
  @JsonKey(name: 'id_film')
  int? get idFilm;
  @JsonKey(name: 'id_film')
  set idFilm(int? value);
  @override
  @JsonKey(name: 'judul_film')
  String? get judulFilm;
  @JsonKey(name: 'judul_film')
  set judulFilm(String? value);
  @override
  @JsonKey(name: 'link_film')
  String? get linkFilm;
  @JsonKey(name: 'link_film')
  set linkFilm(String? value);
  @override
  @JsonKey(name: 'tgl_upload')
  DateTime? get tanggalUpload;
  @JsonKey(name: 'tgl_upload')
  set tanggalUpload(DateTime? value);
  @override
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId;
  @JsonKey(name: 'upload_user_id')
  set uploadUserId(int? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value);
  @override
  @JsonKey(ignore: true)
  _$$FilmImplCopyWith<_$FilmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Infografis _$InfografisFromJson(Map<String, dynamic> json) {
  return _Infografis.fromJson(json);
}

/// @nodoc
mixin _$Infografis {
  @JsonKey(name: 'id_infografis')
  int? get idInfografis => throw _privateConstructorUsedError;
  @JsonKey(name: 'judul_infografis')
  String? get judulInfografis => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi_infografis')
  String? get deskripsiInfografis => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_upload')
  DateTime? get tanggalUpload => throw _privateConstructorUsedError;
  @JsonKey(name: 'gambar_infografis')
  String? get gambarInfografis => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfografisCopyWith<Infografis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfografisCopyWith<$Res> {
  factory $InfografisCopyWith(
          Infografis value, $Res Function(Infografis) then) =
      _$InfografisCopyWithImpl<$Res, Infografis>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_infografis') int? idInfografis,
      @JsonKey(name: 'judul_infografis') String? judulInfografis,
      @JsonKey(name: 'deskripsi_infografis') String? deskripsiInfografis,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'gambar_infografis') String? gambarInfografis,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes});
}

/// @nodoc
class _$InfografisCopyWithImpl<$Res, $Val extends Infografis>
    implements $InfografisCopyWith<$Res> {
  _$InfografisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idInfografis = freezed,
    Object? judulInfografis = freezed,
    Object? deskripsiInfografis = freezed,
    Object? tanggalUpload = freezed,
    Object? gambarInfografis = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_value.copyWith(
      idInfografis: freezed == idInfografis
          ? _value.idInfografis
          : idInfografis // ignore: cast_nullable_to_non_nullable
              as int?,
      judulInfografis: freezed == judulInfografis
          ? _value.judulInfografis
          : judulInfografis // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsiInfografis: freezed == deskripsiInfografis
          ? _value.deskripsiInfografis
          : deskripsiInfografis // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalUpload: freezed == tanggalUpload
          ? _value.tanggalUpload
          : tanggalUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gambarInfografis: freezed == gambarInfografis
          ? _value.gambarInfografis
          : gambarInfografis // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfografisImplCopyWith<$Res>
    implements $InfografisCopyWith<$Res> {
  factory _$$InfografisImplCopyWith(
          _$InfografisImpl value, $Res Function(_$InfografisImpl) then) =
      __$$InfografisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_infografis') int? idInfografis,
      @JsonKey(name: 'judul_infografis') String? judulInfografis,
      @JsonKey(name: 'deskripsi_infografis') String? deskripsiInfografis,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'gambar_infografis') String? gambarInfografis,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes});
}

/// @nodoc
class __$$InfografisImplCopyWithImpl<$Res>
    extends _$InfografisCopyWithImpl<$Res, _$InfografisImpl>
    implements _$$InfografisImplCopyWith<$Res> {
  __$$InfografisImplCopyWithImpl(
      _$InfografisImpl _value, $Res Function(_$InfografisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idInfografis = freezed,
    Object? judulInfografis = freezed,
    Object? deskripsiInfografis = freezed,
    Object? tanggalUpload = freezed,
    Object? gambarInfografis = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalLikes = freezed,
  }) {
    return _then(_$InfografisImpl(
      idInfografis: freezed == idInfografis
          ? _value.idInfografis
          : idInfografis // ignore: cast_nullable_to_non_nullable
              as int?,
      judulInfografis: freezed == judulInfografis
          ? _value.judulInfografis
          : judulInfografis // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsiInfografis: freezed == deskripsiInfografis
          ? _value.deskripsiInfografis
          : deskripsiInfografis // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalUpload: freezed == tanggalUpload
          ? _value.tanggalUpload
          : tanggalUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gambarInfografis: freezed == gambarInfografis
          ? _value.gambarInfografis
          : gambarInfografis // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfografisImpl implements _Infografis {
  _$InfografisImpl(
      {@JsonKey(name: 'id_infografis') this.idInfografis,
      @JsonKey(name: 'judul_infografis') this.judulInfografis,
      @JsonKey(name: 'deskripsi_infografis') this.deskripsiInfografis,
      @JsonKey(name: 'tgl_upload') this.tanggalUpload,
      @JsonKey(name: 'gambar_infografis') this.gambarInfografis,
      @JsonKey(name: 'upload_user_id') this.uploadUserId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) this.totalLikes});

  factory _$InfografisImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfografisImplFromJson(json);

  @override
  @JsonKey(name: 'id_infografis')
  final int? idInfografis;
  @override
  @JsonKey(name: 'judul_infografis')
  final String? judulInfografis;
  @override
  @JsonKey(name: 'deskripsi_infografis')
  final String? deskripsiInfografis;
  @override
  @JsonKey(name: 'tgl_upload')
  final DateTime? tanggalUpload;
  @override
  @JsonKey(name: 'gambar_infografis')
  final String? gambarInfografis;
  @override
  @JsonKey(name: 'upload_user_id')
  final int? uploadUserId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  final int? totalLikes;

  @override
  String toString() {
    return 'Infografis(idInfografis: $idInfografis, judulInfografis: $judulInfografis, deskripsiInfografis: $deskripsiInfografis, tanggalUpload: $tanggalUpload, gambarInfografis: $gambarInfografis, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt, totalLikes: $totalLikes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfografisImpl &&
            (identical(other.idInfografis, idInfografis) ||
                other.idInfografis == idInfografis) &&
            (identical(other.judulInfografis, judulInfografis) ||
                other.judulInfografis == judulInfografis) &&
            (identical(other.deskripsiInfografis, deskripsiInfografis) ||
                other.deskripsiInfografis == deskripsiInfografis) &&
            (identical(other.tanggalUpload, tanggalUpload) ||
                other.tanggalUpload == tanggalUpload) &&
            (identical(other.gambarInfografis, gambarInfografis) ||
                other.gambarInfografis == gambarInfografis) &&
            (identical(other.uploadUserId, uploadUserId) ||
                other.uploadUserId == uploadUserId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idInfografis,
      judulInfografis,
      deskripsiInfografis,
      tanggalUpload,
      gambarInfografis,
      uploadUserId,
      createdAt,
      updatedAt,
      totalLikes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfografisImplCopyWith<_$InfografisImpl> get copyWith =>
      __$$InfografisImplCopyWithImpl<_$InfografisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfografisImplToJson(
      this,
    );
  }
}

abstract class _Infografis implements Infografis {
  factory _Infografis(
      {@JsonKey(name: 'id_infografis') final int? idInfografis,
      @JsonKey(name: 'judul_infografis') final String? judulInfografis,
      @JsonKey(name: 'deskripsi_infografis') final String? deskripsiInfografis,
      @JsonKey(name: 'tgl_upload') final DateTime? tanggalUpload,
      @JsonKey(name: 'gambar_infografis') final String? gambarInfografis,
      @JsonKey(name: 'upload_user_id') final int? uploadUserId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt)
      final int? totalLikes}) = _$InfografisImpl;

  factory _Infografis.fromJson(Map<String, dynamic> json) =
      _$InfografisImpl.fromJson;

  @override
  @JsonKey(name: 'id_infografis')
  int? get idInfografis;
  @override
  @JsonKey(name: 'judul_infografis')
  String? get judulInfografis;
  @override
  @JsonKey(name: 'deskripsi_infografis')
  String? get deskripsiInfografis;
  @override
  @JsonKey(name: 'tgl_upload')
  DateTime? get tanggalUpload;
  @override
  @JsonKey(name: 'gambar_infografis')
  String? get gambarInfografis;
  @override
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes;
  @override
  @JsonKey(ignore: true)
  _$$InfografisImplCopyWith<_$InfografisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EducationalVideo _$EducationalVideoFromJson(Map<String, dynamic> json) {
  return _EducationalVideo.fromJson(json);
}

/// @nodoc
mixin _$EducationalVideo {
  @JsonKey(name: 'id_video_edukasi')
  int? get idVideoEdukasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_video_edukasi')
  set idVideoEdukasi(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'judul_video_edukasi')
  String? get judulVideoEdukasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'judul_video_edukasi')
  set judulVideoEdukasi(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_video_edukasi')
  String? get linkVideoEdukasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_video_edukasi')
  set linkVideoEdukasi(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_upload')
  DateTime? get tanggalUpload => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_upload')
  set tanggalUpload(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_user_id')
  set uploadUserId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationalVideoCopyWith<EducationalVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationalVideoCopyWith<$Res> {
  factory $EducationalVideoCopyWith(
          EducationalVideo value, $Res Function(EducationalVideo) then) =
      _$EducationalVideoCopyWithImpl<$Res, EducationalVideo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_video_edukasi') int? idVideoEdukasi,
      @JsonKey(name: 'judul_video_edukasi') String? judulVideoEdukasi,
      @JsonKey(name: 'link_video_edukasi') String? linkVideoEdukasi,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData});
}

/// @nodoc
class _$EducationalVideoCopyWithImpl<$Res, $Val extends EducationalVideo>
    implements $EducationalVideoCopyWith<$Res> {
  _$EducationalVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idVideoEdukasi = freezed,
    Object? judulVideoEdukasi = freezed,
    Object? linkVideoEdukasi = freezed,
    Object? tanggalUpload = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalLikes = freezed,
    Object? thumbnailImageData = freezed,
  }) {
    return _then(_value.copyWith(
      idVideoEdukasi: freezed == idVideoEdukasi
          ? _value.idVideoEdukasi
          : idVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as int?,
      judulVideoEdukasi: freezed == judulVideoEdukasi
          ? _value.judulVideoEdukasi
          : judulVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as String?,
      linkVideoEdukasi: freezed == linkVideoEdukasi
          ? _value.linkVideoEdukasi
          : linkVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalUpload: freezed == tanggalUpload
          ? _value.tanggalUpload
          : tanggalUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationalVideoImplCopyWith<$Res>
    implements $EducationalVideoCopyWith<$Res> {
  factory _$$EducationalVideoImplCopyWith(_$EducationalVideoImpl value,
          $Res Function(_$EducationalVideoImpl) then) =
      __$$EducationalVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_video_edukasi') int? idVideoEdukasi,
      @JsonKey(name: 'judul_video_edukasi') String? judulVideoEdukasi,
      @JsonKey(name: 'link_video_edukasi') String? linkVideoEdukasi,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData});
}

/// @nodoc
class __$$EducationalVideoImplCopyWithImpl<$Res>
    extends _$EducationalVideoCopyWithImpl<$Res, _$EducationalVideoImpl>
    implements _$$EducationalVideoImplCopyWith<$Res> {
  __$$EducationalVideoImplCopyWithImpl(_$EducationalVideoImpl _value,
      $Res Function(_$EducationalVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idVideoEdukasi = freezed,
    Object? judulVideoEdukasi = freezed,
    Object? linkVideoEdukasi = freezed,
    Object? tanggalUpload = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? totalLikes = freezed,
    Object? thumbnailImageData = freezed,
  }) {
    return _then(_$EducationalVideoImpl(
      idVideoEdukasi: freezed == idVideoEdukasi
          ? _value.idVideoEdukasi
          : idVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as int?,
      judulVideoEdukasi: freezed == judulVideoEdukasi
          ? _value.judulVideoEdukasi
          : judulVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as String?,
      linkVideoEdukasi: freezed == linkVideoEdukasi
          ? _value.linkVideoEdukasi
          : linkVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalUpload: freezed == tanggalUpload
          ? _value.tanggalUpload
          : tanggalUpload // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationalVideoImpl implements _EducationalVideo {
  _$EducationalVideoImpl(
      {@JsonKey(name: 'id_video_edukasi') this.idVideoEdukasi,
      @JsonKey(name: 'judul_video_edukasi') this.judulVideoEdukasi,
      @JsonKey(name: 'link_video_edukasi') this.linkVideoEdukasi,
      @JsonKey(name: 'tgl_upload') this.tanggalUpload,
      @JsonKey(name: 'upload_user_id') this.uploadUserId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) this.totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.thumbnailImageData});

  factory _$EducationalVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationalVideoImplFromJson(json);

  @override
  @JsonKey(name: 'id_video_edukasi')
  int? idVideoEdukasi;
  @override
  @JsonKey(name: 'judul_video_edukasi')
  String? judulVideoEdukasi;
  @override
  @JsonKey(name: 'link_video_edukasi')
  String? linkVideoEdukasi;
  @override
  @JsonKey(name: 'tgl_upload')
  DateTime? tanggalUpload;
  @override
  @JsonKey(name: 'upload_user_id')
  int? uploadUserId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? totalLikes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;

  @override
  String toString() {
    return 'EducationalVideo(idVideoEdukasi: $idVideoEdukasi, judulVideoEdukasi: $judulVideoEdukasi, linkVideoEdukasi: $linkVideoEdukasi, tanggalUpload: $tanggalUpload, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt, totalLikes: $totalLikes, thumbnailImageData: $thumbnailImageData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationalVideoImplCopyWith<_$EducationalVideoImpl> get copyWith =>
      __$$EducationalVideoImplCopyWithImpl<_$EducationalVideoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationalVideoImplToJson(
      this,
    );
  }
}

abstract class _EducationalVideo implements EducationalVideo {
  factory _EducationalVideo(
      {@JsonKey(name: 'id_video_edukasi') int? idVideoEdukasi,
      @JsonKey(name: 'judul_video_edukasi') String? judulVideoEdukasi,
      @JsonKey(name: 'link_video_edukasi') String? linkVideoEdukasi,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData}) = _$EducationalVideoImpl;

  factory _EducationalVideo.fromJson(Map<String, dynamic> json) =
      _$EducationalVideoImpl.fromJson;

  @override
  @JsonKey(name: 'id_video_edukasi')
  int? get idVideoEdukasi;
  @JsonKey(name: 'id_video_edukasi')
  set idVideoEdukasi(int? value);
  @override
  @JsonKey(name: 'judul_video_edukasi')
  String? get judulVideoEdukasi;
  @JsonKey(name: 'judul_video_edukasi')
  set judulVideoEdukasi(String? value);
  @override
  @JsonKey(name: 'link_video_edukasi')
  String? get linkVideoEdukasi;
  @JsonKey(name: 'link_video_edukasi')
  set linkVideoEdukasi(String? value);
  @override
  @JsonKey(name: 'tgl_upload')
  DateTime? get tanggalUpload;
  @JsonKey(name: 'tgl_upload')
  set tanggalUpload(DateTime? value);
  @override
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId;
  @JsonKey(name: 'upload_user_id')
  set uploadUserId(int? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value);
  @override
  @JsonKey(ignore: true)
  _$$EducationalVideoImplCopyWith<_$EducationalVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

/// @nodoc
mixin _$Quote {
  @JsonKey(name: 'id_quote')
  int? get idQuote => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_quote')
  String? get namaQuote => throw _privateConstructorUsedError;
  @JsonKey(name: 'gambar_quote')
  String? get gambarQuote => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res, Quote>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_quote') int? idQuote,
      @JsonKey(name: 'nama_quote') String? namaQuote,
      @JsonKey(name: 'gambar_quote') String? gambarQuote,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res, $Val extends Quote>
    implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idQuote = freezed,
    Object? namaQuote = freezed,
    Object? gambarQuote = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      idQuote: freezed == idQuote
          ? _value.idQuote
          : idQuote // ignore: cast_nullable_to_non_nullable
              as int?,
      namaQuote: freezed == namaQuote
          ? _value.namaQuote
          : namaQuote // ignore: cast_nullable_to_non_nullable
              as String?,
      gambarQuote: freezed == gambarQuote
          ? _value.gambarQuote
          : gambarQuote // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$QuoteImplCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$QuoteImplCopyWith(
          _$QuoteImpl value, $Res Function(_$QuoteImpl) then) =
      __$$QuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_quote') int? idQuote,
      @JsonKey(name: 'nama_quote') String? namaQuote,
      @JsonKey(name: 'gambar_quote') String? gambarQuote,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$QuoteImplCopyWithImpl<$Res>
    extends _$QuoteCopyWithImpl<$Res, _$QuoteImpl>
    implements _$$QuoteImplCopyWith<$Res> {
  __$$QuoteImplCopyWithImpl(
      _$QuoteImpl _value, $Res Function(_$QuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idQuote = freezed,
    Object? namaQuote = freezed,
    Object? gambarQuote = freezed,
    Object? uploadUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$QuoteImpl(
      idQuote: freezed == idQuote
          ? _value.idQuote
          : idQuote // ignore: cast_nullable_to_non_nullable
              as int?,
      namaQuote: freezed == namaQuote
          ? _value.namaQuote
          : namaQuote // ignore: cast_nullable_to_non_nullable
              as String?,
      gambarQuote: freezed == gambarQuote
          ? _value.gambarQuote
          : gambarQuote // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadUserId: freezed == uploadUserId
          ? _value.uploadUserId
          : uploadUserId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$QuoteImpl implements _Quote {
  const _$QuoteImpl(
      {@JsonKey(name: 'id_quote') this.idQuote,
      @JsonKey(name: 'nama_quote') this.namaQuote,
      @JsonKey(name: 'gambar_quote') this.gambarQuote,
      @JsonKey(name: 'upload_user_id') this.uploadUserId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$QuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteImplFromJson(json);

  @override
  @JsonKey(name: 'id_quote')
  final int? idQuote;
  @override
  @JsonKey(name: 'nama_quote')
  final String? namaQuote;
  @override
  @JsonKey(name: 'gambar_quote')
  final String? gambarQuote;
  @override
  @JsonKey(name: 'upload_user_id')
  final int? uploadUserId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Quote(idQuote: $idQuote, namaQuote: $namaQuote, gambarQuote: $gambarQuote, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteImpl &&
            (identical(other.idQuote, idQuote) || other.idQuote == idQuote) &&
            (identical(other.namaQuote, namaQuote) ||
                other.namaQuote == namaQuote) &&
            (identical(other.gambarQuote, gambarQuote) ||
                other.gambarQuote == gambarQuote) &&
            (identical(other.uploadUserId, uploadUserId) ||
                other.uploadUserId == uploadUserId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idQuote, namaQuote, gambarQuote,
      uploadUserId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      __$$QuoteImplCopyWithImpl<_$QuoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteImplToJson(
      this,
    );
  }
}

abstract class _Quote implements Quote {
  const factory _Quote(
      {@JsonKey(name: 'id_quote') final int? idQuote,
      @JsonKey(name: 'nama_quote') final String? namaQuote,
      @JsonKey(name: 'gambar_quote') final String? gambarQuote,
      @JsonKey(name: 'upload_user_id') final int? uploadUserId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$QuoteImpl;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$QuoteImpl.fromJson;

  @override
  @JsonKey(name: 'id_quote')
  int? get idQuote;
  @override
  @JsonKey(name: 'nama_quote')
  String? get namaQuote;
  @override
  @JsonKey(name: 'gambar_quote')
  String? get gambarQuote;
  @override
  @JsonKey(name: 'upload_user_id')
  int? get uploadUserId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
