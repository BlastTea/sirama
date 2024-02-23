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
  @JsonKey(name: 'deskripsi')
  String? get deksripsiPodcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi')
  set deksripsiPodcast(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  set isFavorited(bool value) => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'deskripsi') String? deksripsiPodcast,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
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
    Object? deksripsiPodcast = freezed,
    Object? totalLikes = freezed,
    Object? isFavorited = null,
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
      deksripsiPodcast: freezed == deksripsiPodcast
          ? _value.deksripsiPodcast
          : deksripsiPodcast // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: 'deskripsi') String? deksripsiPodcast,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
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
    Object? deksripsiPodcast = freezed,
    Object? totalLikes = freezed,
    Object? isFavorited = null,
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
      deksripsiPodcast: freezed == deksripsiPodcast
          ? _value.deksripsiPodcast
          : deksripsiPodcast // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: 'deskripsi') this.deksripsiPodcast,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) this.totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      this.isFavorited = false,
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
  @JsonKey(name: 'deskripsi')
  String? deksripsiPodcast;
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? totalLikes;
  @override
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool isFavorited;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;

  @override
  String toString() {
    return 'Podcast(idPodcast: $idPodcast, judulPodcast: $judulPodcast, linkPodcast: $linkPodcast, tanggalUpload: $tanggalUpload, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt, deksripsiPodcast: $deksripsiPodcast, totalLikes: $totalLikes, isFavorited: $isFavorited, thumbnailImageData: $thumbnailImageData)';
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
      @JsonKey(name: 'deskripsi') String? deksripsiPodcast,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
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
  @JsonKey(name: 'deskripsi')
  String? get deksripsiPodcast;
  @JsonKey(name: 'deskripsi')
  set deksripsiPodcast(String? value);
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value);
  @override
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool get isFavorited;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  set isFavorited(bool value);
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
  @JsonKey(name: 'deskripsi')
  String? get deksripsiFilm => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi')
  set deksripsiFilm(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  set isFavorited(bool value) => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'deskripsi') String? deksripsiFilm,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
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
    Object? deksripsiFilm = freezed,
    Object? totalLikes = freezed,
    Object? isFavorited = null,
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
      deksripsiFilm: freezed == deksripsiFilm
          ? _value.deksripsiFilm
          : deksripsiFilm // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: 'deskripsi') String? deksripsiFilm,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
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
    Object? deksripsiFilm = freezed,
    Object? totalLikes = freezed,
    Object? isFavorited = null,
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
      deksripsiFilm: freezed == deksripsiFilm
          ? _value.deksripsiFilm
          : deksripsiFilm // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: 'deskripsi') this.deksripsiFilm,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) this.totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      this.isFavorited = false,
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
  @JsonKey(name: 'deskripsi')
  String? deksripsiFilm;
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? totalLikes;
  @override
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool isFavorited;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;

  @override
  String toString() {
    return 'Film(idFilm: $idFilm, judulFilm: $judulFilm, linkFilm: $linkFilm, tanggalUpload: $tanggalUpload, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt, deksripsiFilm: $deksripsiFilm, totalLikes: $totalLikes, isFavorited: $isFavorited, thumbnailImageData: $thumbnailImageData)';
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
      @JsonKey(name: 'deskripsi') String? deksripsiFilm,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
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
  @JsonKey(name: 'deskripsi')
  String? get deksripsiFilm;
  @JsonKey(name: 'deskripsi')
  set deksripsiFilm(String? value);
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value);
  @override
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool get isFavorited;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  set isFavorited(bool value);
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
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool get isFavorited => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited});
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
    Object? isFavorited = null,
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
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited});
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
    Object? isFavorited = null,
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
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: 'total_likes', fromJson: _parseInt) this.totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      this.isFavorited = false});

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
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  final bool isFavorited;

  @override
  String toString() {
    return 'Infografis(idInfografis: $idInfografis, judulInfografis: $judulInfografis, deskripsiInfografis: $deskripsiInfografis, tanggalUpload: $tanggalUpload, gambarInfografis: $gambarInfografis, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt, totalLikes: $totalLikes, isFavorited: $isFavorited)';
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
                other.totalLikes == totalLikes) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited));
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
      totalLikes,
      isFavorited);

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
      @JsonKey(name: 'total_likes', fromJson: _parseInt) final int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      final bool isFavorited}) = _$InfografisImpl;

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
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool get isFavorited;
  @override
  @JsonKey(ignore: true)
  _$$InfografisImplCopyWith<_$InfografisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoEdukasi _$VideoEdukasiFromJson(Map<String, dynamic> json) {
  return _VideoEdukasi.fromJson(json);
}

/// @nodoc
mixin _$VideoEdukasi {
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
  @JsonKey(name: 'deskripsi')
  String? get deksripsiVideoEdukasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi')
  set deksripsiVideoEdukasi(String? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  set isFavorited(bool value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoEdukasiCopyWith<VideoEdukasi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEdukasiCopyWith<$Res> {
  factory $VideoEdukasiCopyWith(
          VideoEdukasi value, $Res Function(VideoEdukasi) then) =
      _$VideoEdukasiCopyWithImpl<$Res, VideoEdukasi>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_video_edukasi') int? idVideoEdukasi,
      @JsonKey(name: 'judul_video_edukasi') String? judulVideoEdukasi,
      @JsonKey(name: 'link_video_edukasi') String? linkVideoEdukasi,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deskripsi') String? deksripsiVideoEdukasi,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData});
}

/// @nodoc
class _$VideoEdukasiCopyWithImpl<$Res, $Val extends VideoEdukasi>
    implements $VideoEdukasiCopyWith<$Res> {
  _$VideoEdukasiCopyWithImpl(this._value, this._then);

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
    Object? deksripsiVideoEdukasi = freezed,
    Object? totalLikes = freezed,
    Object? isFavorited = null,
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
      deksripsiVideoEdukasi: freezed == deksripsiVideoEdukasi
          ? _value.deksripsiVideoEdukasi
          : deksripsiVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoEdukasiImplCopyWith<$Res>
    implements $VideoEdukasiCopyWith<$Res> {
  factory _$$VideoEdukasiImplCopyWith(
          _$VideoEdukasiImpl value, $Res Function(_$VideoEdukasiImpl) then) =
      __$$VideoEdukasiImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'deskripsi') String? deksripsiVideoEdukasi,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData});
}

/// @nodoc
class __$$VideoEdukasiImplCopyWithImpl<$Res>
    extends _$VideoEdukasiCopyWithImpl<$Res, _$VideoEdukasiImpl>
    implements _$$VideoEdukasiImplCopyWith<$Res> {
  __$$VideoEdukasiImplCopyWithImpl(
      _$VideoEdukasiImpl _value, $Res Function(_$VideoEdukasiImpl) _then)
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
    Object? deksripsiVideoEdukasi = freezed,
    Object? totalLikes = freezed,
    Object? isFavorited = null,
    Object? thumbnailImageData = freezed,
  }) {
    return _then(_$VideoEdukasiImpl(
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
      deksripsiVideoEdukasi: freezed == deksripsiVideoEdukasi
          ? _value.deksripsiVideoEdukasi
          : deksripsiVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoEdukasiImpl implements _VideoEdukasi {
  _$VideoEdukasiImpl(
      {@JsonKey(name: 'id_video_edukasi') this.idVideoEdukasi,
      @JsonKey(name: 'judul_video_edukasi') this.judulVideoEdukasi,
      @JsonKey(name: 'link_video_edukasi') this.linkVideoEdukasi,
      @JsonKey(name: 'tgl_upload') this.tanggalUpload,
      @JsonKey(name: 'upload_user_id') this.uploadUserId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deskripsi') this.deksripsiVideoEdukasi,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) this.totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      this.isFavorited = false,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.thumbnailImageData});

  factory _$VideoEdukasiImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoEdukasiImplFromJson(json);

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
  @JsonKey(name: 'deskripsi')
  String? deksripsiVideoEdukasi;
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? totalLikes;
  @override
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool isFavorited;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;

  @override
  String toString() {
    return 'VideoEdukasi(idVideoEdukasi: $idVideoEdukasi, judulVideoEdukasi: $judulVideoEdukasi, linkVideoEdukasi: $linkVideoEdukasi, tanggalUpload: $tanggalUpload, uploadUserId: $uploadUserId, createdAt: $createdAt, updatedAt: $updatedAt, deksripsiVideoEdukasi: $deksripsiVideoEdukasi, totalLikes: $totalLikes, isFavorited: $isFavorited, thumbnailImageData: $thumbnailImageData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoEdukasiImplCopyWith<_$VideoEdukasiImpl> get copyWith =>
      __$$VideoEdukasiImplCopyWithImpl<_$VideoEdukasiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoEdukasiImplToJson(
      this,
    );
  }
}

abstract class _VideoEdukasi implements VideoEdukasi {
  factory _VideoEdukasi(
      {@JsonKey(name: 'id_video_edukasi') int? idVideoEdukasi,
      @JsonKey(name: 'judul_video_edukasi') String? judulVideoEdukasi,
      @JsonKey(name: 'link_video_edukasi') String? linkVideoEdukasi,
      @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
      @JsonKey(name: 'upload_user_id') int? uploadUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deskripsi') String? deksripsiVideoEdukasi,
      @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
      @JsonKey(
          name: 'is_favorited', includeFromJson: false, includeToJson: false)
      bool isFavorited,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData}) = _$VideoEdukasiImpl;

  factory _VideoEdukasi.fromJson(Map<String, dynamic> json) =
      _$VideoEdukasiImpl.fromJson;

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
  @JsonKey(name: 'deskripsi')
  String? get deksripsiVideoEdukasi;
  @JsonKey(name: 'deskripsi')
  set deksripsiVideoEdukasi(String? value);
  @override
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  int? get totalLikes;
  @JsonKey(name: 'total_likes', fromJson: _parseInt)
  set totalLikes(int? value);
  @override
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  bool get isFavorited;
  @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
  set isFavorited(bool value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value);
  @override
  @JsonKey(ignore: true)
  _$$VideoEdukasiImplCopyWith<_$VideoEdukasiImpl> get copyWith =>
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

FavInfografis _$FavInfografisFromJson(Map<String, dynamic> json) {
  return _FavInfografis.fromJson(json);
}

/// @nodoc
mixin _$FavInfografis {
  @JsonKey(name: 'id_fav_infografis')
  int? get idFavInfografis => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_fav_infografis')
  set idFavInfografis(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  set idUser(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'infografis_id', fromJson: _parseInt)
  int? get idInfografis => throw _privateConstructorUsedError;
  @JsonKey(name: 'infografis_id', fromJson: _parseInt)
  set idInfografis(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value) =>
      throw _privateConstructorUsedError;
  Infografis? get infografis => throw _privateConstructorUsedError;
  set infografis(Infografis? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavInfografisCopyWith<FavInfografis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavInfografisCopyWith<$Res> {
  factory $FavInfografisCopyWith(
          FavInfografis value, $Res Function(FavInfografis) then) =
      _$FavInfografisCopyWithImpl<$Res, FavInfografis>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_fav_infografis') int? idFavInfografis,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'infografis_id', fromJson: _parseInt) int? idInfografis,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Infografis? infografis});

  $InfografisCopyWith<$Res>? get infografis;
}

/// @nodoc
class _$FavInfografisCopyWithImpl<$Res, $Val extends FavInfografis>
    implements $FavInfografisCopyWith<$Res> {
  _$FavInfografisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFavInfografis = freezed,
    Object? idUser = freezed,
    Object? idInfografis = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? thumbnailImageData = freezed,
    Object? infografis = freezed,
  }) {
    return _then(_value.copyWith(
      idFavInfografis: freezed == idFavInfografis
          ? _value.idFavInfografis
          : idFavInfografis // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      idInfografis: freezed == idInfografis
          ? _value.idInfografis
          : idInfografis // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      infografis: freezed == infografis
          ? _value.infografis
          : infografis // ignore: cast_nullable_to_non_nullable
              as Infografis?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfografisCopyWith<$Res>? get infografis {
    if (_value.infografis == null) {
      return null;
    }

    return $InfografisCopyWith<$Res>(_value.infografis!, (value) {
      return _then(_value.copyWith(infografis: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavInfografisImplCopyWith<$Res>
    implements $FavInfografisCopyWith<$Res> {
  factory _$$FavInfografisImplCopyWith(
          _$FavInfografisImpl value, $Res Function(_$FavInfografisImpl) then) =
      __$$FavInfografisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_fav_infografis') int? idFavInfografis,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'infografis_id', fromJson: _parseInt) int? idInfografis,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Infografis? infografis});

  @override
  $InfografisCopyWith<$Res>? get infografis;
}

/// @nodoc
class __$$FavInfografisImplCopyWithImpl<$Res>
    extends _$FavInfografisCopyWithImpl<$Res, _$FavInfografisImpl>
    implements _$$FavInfografisImplCopyWith<$Res> {
  __$$FavInfografisImplCopyWithImpl(
      _$FavInfografisImpl _value, $Res Function(_$FavInfografisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFavInfografis = freezed,
    Object? idUser = freezed,
    Object? idInfografis = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? thumbnailImageData = freezed,
    Object? infografis = freezed,
  }) {
    return _then(_$FavInfografisImpl(
      idFavInfografis: freezed == idFavInfografis
          ? _value.idFavInfografis
          : idFavInfografis // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      idInfografis: freezed == idInfografis
          ? _value.idInfografis
          : idInfografis // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      infografis: freezed == infografis
          ? _value.infografis
          : infografis // ignore: cast_nullable_to_non_nullable
              as Infografis?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavInfografisImpl implements _FavInfografis {
  _$FavInfografisImpl(
      {@JsonKey(name: 'id_fav_infografis') this.idFavInfografis,
      @JsonKey(name: 'user_id') this.idUser,
      @JsonKey(name: 'infografis_id', fromJson: _parseInt) this.idInfografis,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.thumbnailImageData,
      this.infografis});

  factory _$FavInfografisImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavInfografisImplFromJson(json);

  @override
  @JsonKey(name: 'id_fav_infografis')
  int? idFavInfografis;
  @override
  @JsonKey(name: 'user_id')
  int? idUser;
  @override
  @JsonKey(name: 'infografis_id', fromJson: _parseInt)
  int? idInfografis;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;
  @override
  Infografis? infografis;

  @override
  String toString() {
    return 'FavInfografis(idFavInfografis: $idFavInfografis, idUser: $idUser, idInfografis: $idInfografis, createdAt: $createdAt, updatedAt: $updatedAt, thumbnailImageData: $thumbnailImageData, infografis: $infografis)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavInfografisImplCopyWith<_$FavInfografisImpl> get copyWith =>
      __$$FavInfografisImplCopyWithImpl<_$FavInfografisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavInfografisImplToJson(
      this,
    );
  }
}

abstract class _FavInfografis implements FavInfografis {
  factory _FavInfografis(
      {@JsonKey(name: 'id_fav_infografis') int? idFavInfografis,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'infografis_id', fromJson: _parseInt) int? idInfografis,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Infografis? infografis}) = _$FavInfografisImpl;

  factory _FavInfografis.fromJson(Map<String, dynamic> json) =
      _$FavInfografisImpl.fromJson;

  @override
  @JsonKey(name: 'id_fav_infografis')
  int? get idFavInfografis;
  @JsonKey(name: 'id_fav_infografis')
  set idFavInfografis(int? value);
  @override
  @JsonKey(name: 'user_id')
  int? get idUser;
  @JsonKey(name: 'user_id')
  set idUser(int? value);
  @override
  @JsonKey(name: 'infografis_id', fromJson: _parseInt)
  int? get idInfografis;
  @JsonKey(name: 'infografis_id', fromJson: _parseInt)
  set idInfografis(int? value);
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value);
  @override
  Infografis? get infografis;
  set infografis(Infografis? value);
  @override
  @JsonKey(ignore: true)
  _$$FavInfografisImplCopyWith<_$FavInfografisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavFilm _$FavFilmFromJson(Map<String, dynamic> json) {
  return _FavFilm.fromJson(json);
}

/// @nodoc
mixin _$FavFilm {
  @JsonKey(name: 'id_fav_film')
  int? get idFavFilm => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_fav_film')
  set idFavFilm(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  set idUser(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'film_id', fromJson: _parseInt)
  int? get idFilm => throw _privateConstructorUsedError;
  @JsonKey(name: 'film_id', fromJson: _parseInt)
  set idFilm(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value) =>
      throw _privateConstructorUsedError;
  Film? get film => throw _privateConstructorUsedError;
  set film(Film? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavFilmCopyWith<FavFilm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavFilmCopyWith<$Res> {
  factory $FavFilmCopyWith(FavFilm value, $Res Function(FavFilm) then) =
      _$FavFilmCopyWithImpl<$Res, FavFilm>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_fav_film') int? idFavFilm,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'film_id', fromJson: _parseInt) int? idFilm,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Film? film});

  $FilmCopyWith<$Res>? get film;
}

/// @nodoc
class _$FavFilmCopyWithImpl<$Res, $Val extends FavFilm>
    implements $FavFilmCopyWith<$Res> {
  _$FavFilmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFavFilm = freezed,
    Object? idUser = freezed,
    Object? idFilm = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? thumbnailImageData = freezed,
    Object? film = freezed,
  }) {
    return _then(_value.copyWith(
      idFavFilm: freezed == idFavFilm
          ? _value.idFavFilm
          : idFavFilm // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      idFilm: freezed == idFilm
          ? _value.idFilm
          : idFilm // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      film: freezed == film
          ? _value.film
          : film // ignore: cast_nullable_to_non_nullable
              as Film?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilmCopyWith<$Res>? get film {
    if (_value.film == null) {
      return null;
    }

    return $FilmCopyWith<$Res>(_value.film!, (value) {
      return _then(_value.copyWith(film: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavFilmImplCopyWith<$Res> implements $FavFilmCopyWith<$Res> {
  factory _$$FavFilmImplCopyWith(
          _$FavFilmImpl value, $Res Function(_$FavFilmImpl) then) =
      __$$FavFilmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_fav_film') int? idFavFilm,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'film_id', fromJson: _parseInt) int? idFilm,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Film? film});

  @override
  $FilmCopyWith<$Res>? get film;
}

/// @nodoc
class __$$FavFilmImplCopyWithImpl<$Res>
    extends _$FavFilmCopyWithImpl<$Res, _$FavFilmImpl>
    implements _$$FavFilmImplCopyWith<$Res> {
  __$$FavFilmImplCopyWithImpl(
      _$FavFilmImpl _value, $Res Function(_$FavFilmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFavFilm = freezed,
    Object? idUser = freezed,
    Object? idFilm = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? thumbnailImageData = freezed,
    Object? film = freezed,
  }) {
    return _then(_$FavFilmImpl(
      idFavFilm: freezed == idFavFilm
          ? _value.idFavFilm
          : idFavFilm // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      idFilm: freezed == idFilm
          ? _value.idFilm
          : idFilm // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      film: freezed == film
          ? _value.film
          : film // ignore: cast_nullable_to_non_nullable
              as Film?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavFilmImpl implements _FavFilm {
  _$FavFilmImpl(
      {@JsonKey(name: 'id_fav_film') this.idFavFilm,
      @JsonKey(name: 'user_id') this.idUser,
      @JsonKey(name: 'film_id', fromJson: _parseInt) this.idFilm,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.thumbnailImageData,
      this.film});

  factory _$FavFilmImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavFilmImplFromJson(json);

  @override
  @JsonKey(name: 'id_fav_film')
  int? idFavFilm;
  @override
  @JsonKey(name: 'user_id')
  int? idUser;
  @override
  @JsonKey(name: 'film_id', fromJson: _parseInt)
  int? idFilm;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;
  @override
  Film? film;

  @override
  String toString() {
    return 'FavFilm(idFavFilm: $idFavFilm, idUser: $idUser, idFilm: $idFilm, createdAt: $createdAt, updatedAt: $updatedAt, thumbnailImageData: $thumbnailImageData, film: $film)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavFilmImplCopyWith<_$FavFilmImpl> get copyWith =>
      __$$FavFilmImplCopyWithImpl<_$FavFilmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavFilmImplToJson(
      this,
    );
  }
}

abstract class _FavFilm implements FavFilm {
  factory _FavFilm(
      {@JsonKey(name: 'id_fav_film') int? idFavFilm,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'film_id', fromJson: _parseInt) int? idFilm,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Film? film}) = _$FavFilmImpl;

  factory _FavFilm.fromJson(Map<String, dynamic> json) = _$FavFilmImpl.fromJson;

  @override
  @JsonKey(name: 'id_fav_film')
  int? get idFavFilm;
  @JsonKey(name: 'id_fav_film')
  set idFavFilm(int? value);
  @override
  @JsonKey(name: 'user_id')
  int? get idUser;
  @JsonKey(name: 'user_id')
  set idUser(int? value);
  @override
  @JsonKey(name: 'film_id', fromJson: _parseInt)
  int? get idFilm;
  @JsonKey(name: 'film_id', fromJson: _parseInt)
  set idFilm(int? value);
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value);
  @override
  Film? get film;
  set film(Film? value);
  @override
  @JsonKey(ignore: true)
  _$$FavFilmImplCopyWith<_$FavFilmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavPodcast _$FavPodcastFromJson(Map<String, dynamic> json) {
  return _FavPodcast.fromJson(json);
}

/// @nodoc
mixin _$FavPodcast {
  @JsonKey(name: 'id_fav_podcast')
  int? get idFavPodcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_fav_podcast')
  set idFavPodcast(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  set idUser(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'podcast_id', fromJson: _parseInt)
  int? get idPodcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'podcast_id', fromJson: _parseInt)
  set idPodcast(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value) =>
      throw _privateConstructorUsedError;
  Podcast? get podcast => throw _privateConstructorUsedError;
  set podcast(Podcast? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavPodcastCopyWith<FavPodcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavPodcastCopyWith<$Res> {
  factory $FavPodcastCopyWith(
          FavPodcast value, $Res Function(FavPodcast) then) =
      _$FavPodcastCopyWithImpl<$Res, FavPodcast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_fav_podcast') int? idFavPodcast,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'podcast_id', fromJson: _parseInt) int? idPodcast,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Podcast? podcast});

  $PodcastCopyWith<$Res>? get podcast;
}

/// @nodoc
class _$FavPodcastCopyWithImpl<$Res, $Val extends FavPodcast>
    implements $FavPodcastCopyWith<$Res> {
  _$FavPodcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFavPodcast = freezed,
    Object? idUser = freezed,
    Object? idPodcast = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? thumbnailImageData = freezed,
    Object? podcast = freezed,
  }) {
    return _then(_value.copyWith(
      idFavPodcast: freezed == idFavPodcast
          ? _value.idFavPodcast
          : idFavPodcast // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      idPodcast: freezed == idPodcast
          ? _value.idPodcast
          : idPodcast // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      podcast: freezed == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as Podcast?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PodcastCopyWith<$Res>? get podcast {
    if (_value.podcast == null) {
      return null;
    }

    return $PodcastCopyWith<$Res>(_value.podcast!, (value) {
      return _then(_value.copyWith(podcast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavPodcastImplCopyWith<$Res>
    implements $FavPodcastCopyWith<$Res> {
  factory _$$FavPodcastImplCopyWith(
          _$FavPodcastImpl value, $Res Function(_$FavPodcastImpl) then) =
      __$$FavPodcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_fav_podcast') int? idFavPodcast,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'podcast_id', fromJson: _parseInt) int? idPodcast,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Podcast? podcast});

  @override
  $PodcastCopyWith<$Res>? get podcast;
}

/// @nodoc
class __$$FavPodcastImplCopyWithImpl<$Res>
    extends _$FavPodcastCopyWithImpl<$Res, _$FavPodcastImpl>
    implements _$$FavPodcastImplCopyWith<$Res> {
  __$$FavPodcastImplCopyWithImpl(
      _$FavPodcastImpl _value, $Res Function(_$FavPodcastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFavPodcast = freezed,
    Object? idUser = freezed,
    Object? idPodcast = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? thumbnailImageData = freezed,
    Object? podcast = freezed,
  }) {
    return _then(_$FavPodcastImpl(
      idFavPodcast: freezed == idFavPodcast
          ? _value.idFavPodcast
          : idFavPodcast // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      idPodcast: freezed == idPodcast
          ? _value.idPodcast
          : idPodcast // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      podcast: freezed == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as Podcast?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavPodcastImpl implements _FavPodcast {
  _$FavPodcastImpl(
      {@JsonKey(name: 'id_fav_podcast') this.idFavPodcast,
      @JsonKey(name: 'user_id') this.idUser,
      @JsonKey(name: 'podcast_id', fromJson: _parseInt) this.idPodcast,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.thumbnailImageData,
      this.podcast});

  factory _$FavPodcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavPodcastImplFromJson(json);

  @override
  @JsonKey(name: 'id_fav_podcast')
  int? idFavPodcast;
  @override
  @JsonKey(name: 'user_id')
  int? idUser;
  @override
  @JsonKey(name: 'podcast_id', fromJson: _parseInt)
  int? idPodcast;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;
  @override
  Podcast? podcast;

  @override
  String toString() {
    return 'FavPodcast(idFavPodcast: $idFavPodcast, idUser: $idUser, idPodcast: $idPodcast, createdAt: $createdAt, updatedAt: $updatedAt, thumbnailImageData: $thumbnailImageData, podcast: $podcast)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavPodcastImplCopyWith<_$FavPodcastImpl> get copyWith =>
      __$$FavPodcastImplCopyWithImpl<_$FavPodcastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavPodcastImplToJson(
      this,
    );
  }
}

abstract class _FavPodcast implements FavPodcast {
  factory _FavPodcast(
      {@JsonKey(name: 'id_fav_podcast') int? idFavPodcast,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'podcast_id', fromJson: _parseInt) int? idPodcast,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      Podcast? podcast}) = _$FavPodcastImpl;

  factory _FavPodcast.fromJson(Map<String, dynamic> json) =
      _$FavPodcastImpl.fromJson;

  @override
  @JsonKey(name: 'id_fav_podcast')
  int? get idFavPodcast;
  @JsonKey(name: 'id_fav_podcast')
  set idFavPodcast(int? value);
  @override
  @JsonKey(name: 'user_id')
  int? get idUser;
  @JsonKey(name: 'user_id')
  set idUser(int? value);
  @override
  @JsonKey(name: 'podcast_id', fromJson: _parseInt)
  int? get idPodcast;
  @JsonKey(name: 'podcast_id', fromJson: _parseInt)
  set idPodcast(int? value);
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value);
  @override
  Podcast? get podcast;
  set podcast(Podcast? value);
  @override
  @JsonKey(ignore: true)
  _$$FavPodcastImplCopyWith<_$FavPodcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavVideoEdukasi _$FavVideoEdukasiFromJson(Map<String, dynamic> json) {
  return _FavVideoEdukasi.fromJson(json);
}

/// @nodoc
mixin _$FavVideoEdukasi {
  @JsonKey(name: 'id_fav_video_edukasi')
  int? get idFavVideoEdukasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_fav_video_edukasi')
  set idFavVideoEdukasi(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  set idUser(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
  int? get idVideoEdukasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
  set idVideoEdukasi(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value) =>
      throw _privateConstructorUsedError;
  VideoEdukasi? get videoEdukasi => throw _privateConstructorUsedError;
  set videoEdukasi(VideoEdukasi? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavVideoEdukasiCopyWith<FavVideoEdukasi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavVideoEdukasiCopyWith<$Res> {
  factory $FavVideoEdukasiCopyWith(
          FavVideoEdukasi value, $Res Function(FavVideoEdukasi) then) =
      _$FavVideoEdukasiCopyWithImpl<$Res, FavVideoEdukasi>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_fav_video_edukasi') int? idFavVideoEdukasi,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
      int? idVideoEdukasi,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      VideoEdukasi? videoEdukasi});

  $VideoEdukasiCopyWith<$Res>? get videoEdukasi;
}

/// @nodoc
class _$FavVideoEdukasiCopyWithImpl<$Res, $Val extends FavVideoEdukasi>
    implements $FavVideoEdukasiCopyWith<$Res> {
  _$FavVideoEdukasiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFavVideoEdukasi = freezed,
    Object? idUser = freezed,
    Object? idVideoEdukasi = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? thumbnailImageData = freezed,
    Object? videoEdukasi = freezed,
  }) {
    return _then(_value.copyWith(
      idFavVideoEdukasi: freezed == idFavVideoEdukasi
          ? _value.idFavVideoEdukasi
          : idFavVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      idVideoEdukasi: freezed == idVideoEdukasi
          ? _value.idVideoEdukasi
          : idVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      videoEdukasi: freezed == videoEdukasi
          ? _value.videoEdukasi
          : videoEdukasi // ignore: cast_nullable_to_non_nullable
              as VideoEdukasi?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoEdukasiCopyWith<$Res>? get videoEdukasi {
    if (_value.videoEdukasi == null) {
      return null;
    }

    return $VideoEdukasiCopyWith<$Res>(_value.videoEdukasi!, (value) {
      return _then(_value.copyWith(videoEdukasi: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavVideoEdukasiImplCopyWith<$Res>
    implements $FavVideoEdukasiCopyWith<$Res> {
  factory _$$FavVideoEdukasiImplCopyWith(_$FavVideoEdukasiImpl value,
          $Res Function(_$FavVideoEdukasiImpl) then) =
      __$$FavVideoEdukasiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_fav_video_edukasi') int? idFavVideoEdukasi,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
      int? idVideoEdukasi,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      VideoEdukasi? videoEdukasi});

  @override
  $VideoEdukasiCopyWith<$Res>? get videoEdukasi;
}

/// @nodoc
class __$$FavVideoEdukasiImplCopyWithImpl<$Res>
    extends _$FavVideoEdukasiCopyWithImpl<$Res, _$FavVideoEdukasiImpl>
    implements _$$FavVideoEdukasiImplCopyWith<$Res> {
  __$$FavVideoEdukasiImplCopyWithImpl(
      _$FavVideoEdukasiImpl _value, $Res Function(_$FavVideoEdukasiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFavVideoEdukasi = freezed,
    Object? idUser = freezed,
    Object? idVideoEdukasi = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? thumbnailImageData = freezed,
    Object? videoEdukasi = freezed,
  }) {
    return _then(_$FavVideoEdukasiImpl(
      idFavVideoEdukasi: freezed == idFavVideoEdukasi
          ? _value.idFavVideoEdukasi
          : idFavVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      idVideoEdukasi: freezed == idVideoEdukasi
          ? _value.idVideoEdukasi
          : idVideoEdukasi // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailImageData: freezed == thumbnailImageData
          ? _value.thumbnailImageData
          : thumbnailImageData // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      videoEdukasi: freezed == videoEdukasi
          ? _value.videoEdukasi
          : videoEdukasi // ignore: cast_nullable_to_non_nullable
              as VideoEdukasi?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavVideoEdukasiImpl implements _FavVideoEdukasi {
  _$FavVideoEdukasiImpl(
      {@JsonKey(name: 'id_fav_video_edukasi') this.idFavVideoEdukasi,
      @JsonKey(name: 'user_id') this.idUser,
      @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
      this.idVideoEdukasi,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.thumbnailImageData,
      this.videoEdukasi});

  factory _$FavVideoEdukasiImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavVideoEdukasiImplFromJson(json);

  @override
  @JsonKey(name: 'id_fav_video_edukasi')
  int? idFavVideoEdukasi;
  @override
  @JsonKey(name: 'user_id')
  int? idUser;
  @override
  @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
  int? idVideoEdukasi;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? thumbnailImageData;
  @override
  VideoEdukasi? videoEdukasi;

  @override
  String toString() {
    return 'FavVideoEdukasi(idFavVideoEdukasi: $idFavVideoEdukasi, idUser: $idUser, idVideoEdukasi: $idVideoEdukasi, createdAt: $createdAt, updatedAt: $updatedAt, thumbnailImageData: $thumbnailImageData, videoEdukasi: $videoEdukasi)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavVideoEdukasiImplCopyWith<_$FavVideoEdukasiImpl> get copyWith =>
      __$$FavVideoEdukasiImplCopyWithImpl<_$FavVideoEdukasiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavVideoEdukasiImplToJson(
      this,
    );
  }
}

abstract class _FavVideoEdukasi implements FavVideoEdukasi {
  factory _FavVideoEdukasi(
      {@JsonKey(name: 'id_fav_video_edukasi') int? idFavVideoEdukasi,
      @JsonKey(name: 'user_id') int? idUser,
      @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
      int? idVideoEdukasi,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<int>? thumbnailImageData,
      VideoEdukasi? videoEdukasi}) = _$FavVideoEdukasiImpl;

  factory _FavVideoEdukasi.fromJson(Map<String, dynamic> json) =
      _$FavVideoEdukasiImpl.fromJson;

  @override
  @JsonKey(name: 'id_fav_video_edukasi')
  int? get idFavVideoEdukasi;
  @JsonKey(name: 'id_fav_video_edukasi')
  set idFavVideoEdukasi(int? value);
  @override
  @JsonKey(name: 'user_id')
  int? get idUser;
  @JsonKey(name: 'user_id')
  set idUser(int? value);
  @override
  @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
  int? get idVideoEdukasi;
  @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt)
  set idVideoEdukasi(int? value);
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
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<int>? get thumbnailImageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set thumbnailImageData(List<int>? value);
  @override
  VideoEdukasi? get videoEdukasi;
  set videoEdukasi(VideoEdukasi? value);
  @override
  @JsonKey(ignore: true)
  _$$FavVideoEdukasiImplCopyWith<_$FavVideoEdukasiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Skrinning _$SkrinningFromJson(Map<String, dynamic> json) {
  return _Skrinning.fromJson(json);
}

/// @nodoc
mixin _$Skrinning {
  @JsonKey(name: 'id_skrinning')
  int? get idSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_skrinning')
  set idSkrinning(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'jenis_skrinning')
  String? get jenisSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'jenis_skrinning')
  set jenisSkrinning(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi_skrinning')
  String? get deskripsiSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi_skrinning')
  set deskripsiSkrinning(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkrinningCopyWith<Skrinning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkrinningCopyWith<$Res> {
  factory $SkrinningCopyWith(Skrinning value, $Res Function(Skrinning) then) =
      _$SkrinningCopyWithImpl<$Res, Skrinning>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_skrinning') int? idSkrinning,
      @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
      @JsonKey(name: 'deskripsi_skrinning') String? deskripsiSkrinning,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$SkrinningCopyWithImpl<$Res, $Val extends Skrinning>
    implements $SkrinningCopyWith<$Res> {
  _$SkrinningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idSkrinning = freezed,
    Object? jenisSkrinning = freezed,
    Object? deskripsiSkrinning = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      idSkrinning: freezed == idSkrinning
          ? _value.idSkrinning
          : idSkrinning // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSkrinning: freezed == jenisSkrinning
          ? _value.jenisSkrinning
          : jenisSkrinning // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsiSkrinning: freezed == deskripsiSkrinning
          ? _value.deskripsiSkrinning
          : deskripsiSkrinning // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SkrinningImplCopyWith<$Res>
    implements $SkrinningCopyWith<$Res> {
  factory _$$SkrinningImplCopyWith(
          _$SkrinningImpl value, $Res Function(_$SkrinningImpl) then) =
      __$$SkrinningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_skrinning') int? idSkrinning,
      @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
      @JsonKey(name: 'deskripsi_skrinning') String? deskripsiSkrinning,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$SkrinningImplCopyWithImpl<$Res>
    extends _$SkrinningCopyWithImpl<$Res, _$SkrinningImpl>
    implements _$$SkrinningImplCopyWith<$Res> {
  __$$SkrinningImplCopyWithImpl(
      _$SkrinningImpl _value, $Res Function(_$SkrinningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idSkrinning = freezed,
    Object? jenisSkrinning = freezed,
    Object? deskripsiSkrinning = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SkrinningImpl(
      idSkrinning: freezed == idSkrinning
          ? _value.idSkrinning
          : idSkrinning // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSkrinning: freezed == jenisSkrinning
          ? _value.jenisSkrinning
          : jenisSkrinning // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsiSkrinning: freezed == deskripsiSkrinning
          ? _value.deskripsiSkrinning
          : deskripsiSkrinning // ignore: cast_nullable_to_non_nullable
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
class _$SkrinningImpl implements _Skrinning {
  _$SkrinningImpl(
      {@JsonKey(name: 'id_skrinning') this.idSkrinning,
      @JsonKey(name: 'jenis_skrinning') this.jenisSkrinning,
      @JsonKey(name: 'deskripsi_skrinning') this.deskripsiSkrinning,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SkrinningImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkrinningImplFromJson(json);

  @override
  @JsonKey(name: 'id_skrinning')
  int? idSkrinning;
  @override
  @JsonKey(name: 'jenis_skrinning')
  String? jenisSkrinning;
  @override
  @JsonKey(name: 'deskripsi_skrinning')
  String? deskripsiSkrinning;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @override
  String toString() {
    return 'Skrinning(idSkrinning: $idSkrinning, jenisSkrinning: $jenisSkrinning, deskripsiSkrinning: $deskripsiSkrinning, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkrinningImplCopyWith<_$SkrinningImpl> get copyWith =>
      __$$SkrinningImplCopyWithImpl<_$SkrinningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkrinningImplToJson(
      this,
    );
  }
}

abstract class _Skrinning implements Skrinning {
  factory _Skrinning(
      {@JsonKey(name: 'id_skrinning') int? idSkrinning,
      @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
      @JsonKey(name: 'deskripsi_skrinning') String? deskripsiSkrinning,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$SkrinningImpl;

  factory _Skrinning.fromJson(Map<String, dynamic> json) =
      _$SkrinningImpl.fromJson;

  @override
  @JsonKey(name: 'id_skrinning')
  int? get idSkrinning;
  @JsonKey(name: 'id_skrinning')
  set idSkrinning(int? value);
  @override
  @JsonKey(name: 'jenis_skrinning')
  String? get jenisSkrinning;
  @JsonKey(name: 'jenis_skrinning')
  set jenisSkrinning(String? value);
  @override
  @JsonKey(name: 'deskripsi_skrinning')
  String? get deskripsiSkrinning;
  @JsonKey(name: 'deskripsi_skrinning')
  set deskripsiSkrinning(String? value);
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
  @JsonKey(ignore: true)
  _$$SkrinningImplCopyWith<_$SkrinningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailSkrinning _$DetailSkrinningFromJson(Map<String, dynamic> json) {
  return _DetailSkrinning.fromJson(json);
}

/// @nodoc
mixin _$DetailSkrinning {
  @JsonKey(name: 'id_bagian_skrinning')
  int? get idBagianSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_bagian_skrinning')
  set idBagianSkrinning(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_bagian')
  String? get namaBagianSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_bagian')
  set namaBagianSkrinning(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'soal_jawab')
  List<SoalJawab>? get soalJawab => throw _privateConstructorUsedError;
  @JsonKey(name: 'soal_jawab')
  set soalJawab(List<SoalJawab>? value) => throw _privateConstructorUsedError;
  SkrinUser? get skrinUser => throw _privateConstructorUsedError;
  set skrinUser(SkrinUser? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailSkrinningCopyWith<DetailSkrinning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSkrinningCopyWith<$Res> {
  factory $DetailSkrinningCopyWith(
          DetailSkrinning value, $Res Function(DetailSkrinning) then) =
      _$DetailSkrinningCopyWithImpl<$Res, DetailSkrinning>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_bagian_skrinning') int? idBagianSkrinning,
      @JsonKey(name: 'nama_bagian') String? namaBagianSkrinning,
      @JsonKey(name: 'soal_jawab') List<SoalJawab>? soalJawab,
      SkrinUser? skrinUser});

  $SkrinUserCopyWith<$Res>? get skrinUser;
}

/// @nodoc
class _$DetailSkrinningCopyWithImpl<$Res, $Val extends DetailSkrinning>
    implements $DetailSkrinningCopyWith<$Res> {
  _$DetailSkrinningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idBagianSkrinning = freezed,
    Object? namaBagianSkrinning = freezed,
    Object? soalJawab = freezed,
    Object? skrinUser = freezed,
  }) {
    return _then(_value.copyWith(
      idBagianSkrinning: freezed == idBagianSkrinning
          ? _value.idBagianSkrinning
          : idBagianSkrinning // ignore: cast_nullable_to_non_nullable
              as int?,
      namaBagianSkrinning: freezed == namaBagianSkrinning
          ? _value.namaBagianSkrinning
          : namaBagianSkrinning // ignore: cast_nullable_to_non_nullable
              as String?,
      soalJawab: freezed == soalJawab
          ? _value.soalJawab
          : soalJawab // ignore: cast_nullable_to_non_nullable
              as List<SoalJawab>?,
      skrinUser: freezed == skrinUser
          ? _value.skrinUser
          : skrinUser // ignore: cast_nullable_to_non_nullable
              as SkrinUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SkrinUserCopyWith<$Res>? get skrinUser {
    if (_value.skrinUser == null) {
      return null;
    }

    return $SkrinUserCopyWith<$Res>(_value.skrinUser!, (value) {
      return _then(_value.copyWith(skrinUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailSkrinningImplCopyWith<$Res>
    implements $DetailSkrinningCopyWith<$Res> {
  factory _$$DetailSkrinningImplCopyWith(_$DetailSkrinningImpl value,
          $Res Function(_$DetailSkrinningImpl) then) =
      __$$DetailSkrinningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_bagian_skrinning') int? idBagianSkrinning,
      @JsonKey(name: 'nama_bagian') String? namaBagianSkrinning,
      @JsonKey(name: 'soal_jawab') List<SoalJawab>? soalJawab,
      SkrinUser? skrinUser});

  @override
  $SkrinUserCopyWith<$Res>? get skrinUser;
}

/// @nodoc
class __$$DetailSkrinningImplCopyWithImpl<$Res>
    extends _$DetailSkrinningCopyWithImpl<$Res, _$DetailSkrinningImpl>
    implements _$$DetailSkrinningImplCopyWith<$Res> {
  __$$DetailSkrinningImplCopyWithImpl(
      _$DetailSkrinningImpl _value, $Res Function(_$DetailSkrinningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idBagianSkrinning = freezed,
    Object? namaBagianSkrinning = freezed,
    Object? soalJawab = freezed,
    Object? skrinUser = freezed,
  }) {
    return _then(_$DetailSkrinningImpl(
      idBagianSkrinning: freezed == idBagianSkrinning
          ? _value.idBagianSkrinning
          : idBagianSkrinning // ignore: cast_nullable_to_non_nullable
              as int?,
      namaBagianSkrinning: freezed == namaBagianSkrinning
          ? _value.namaBagianSkrinning
          : namaBagianSkrinning // ignore: cast_nullable_to_non_nullable
              as String?,
      soalJawab: freezed == soalJawab
          ? _value.soalJawab
          : soalJawab // ignore: cast_nullable_to_non_nullable
              as List<SoalJawab>?,
      skrinUser: freezed == skrinUser
          ? _value.skrinUser
          : skrinUser // ignore: cast_nullable_to_non_nullable
              as SkrinUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailSkrinningImpl implements _DetailSkrinning {
  _$DetailSkrinningImpl(
      {@JsonKey(name: 'id_bagian_skrinning') this.idBagianSkrinning,
      @JsonKey(name: 'nama_bagian') this.namaBagianSkrinning,
      @JsonKey(name: 'soal_jawab') this.soalJawab,
      this.skrinUser});

  factory _$DetailSkrinningImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailSkrinningImplFromJson(json);

  @override
  @JsonKey(name: 'id_bagian_skrinning')
  int? idBagianSkrinning;
  @override
  @JsonKey(name: 'nama_bagian')
  String? namaBagianSkrinning;
  @override
  @JsonKey(name: 'soal_jawab')
  List<SoalJawab>? soalJawab;
  @override
  SkrinUser? skrinUser;

  @override
  String toString() {
    return 'DetailSkrinning(idBagianSkrinning: $idBagianSkrinning, namaBagianSkrinning: $namaBagianSkrinning, soalJawab: $soalJawab, skrinUser: $skrinUser)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSkrinningImplCopyWith<_$DetailSkrinningImpl> get copyWith =>
      __$$DetailSkrinningImplCopyWithImpl<_$DetailSkrinningImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailSkrinningImplToJson(
      this,
    );
  }
}

abstract class _DetailSkrinning implements DetailSkrinning {
  factory _DetailSkrinning(
      {@JsonKey(name: 'id_bagian_skrinning') int? idBagianSkrinning,
      @JsonKey(name: 'nama_bagian') String? namaBagianSkrinning,
      @JsonKey(name: 'soal_jawab') List<SoalJawab>? soalJawab,
      SkrinUser? skrinUser}) = _$DetailSkrinningImpl;

  factory _DetailSkrinning.fromJson(Map<String, dynamic> json) =
      _$DetailSkrinningImpl.fromJson;

  @override
  @JsonKey(name: 'id_bagian_skrinning')
  int? get idBagianSkrinning;
  @JsonKey(name: 'id_bagian_skrinning')
  set idBagianSkrinning(int? value);
  @override
  @JsonKey(name: 'nama_bagian')
  String? get namaBagianSkrinning;
  @JsonKey(name: 'nama_bagian')
  set namaBagianSkrinning(String? value);
  @override
  @JsonKey(name: 'soal_jawab')
  List<SoalJawab>? get soalJawab;
  @JsonKey(name: 'soal_jawab')
  set soalJawab(List<SoalJawab>? value);
  @override
  SkrinUser? get skrinUser;
  set skrinUser(SkrinUser? value);
  @override
  @JsonKey(ignore: true)
  _$$DetailSkrinningImplCopyWith<_$DetailSkrinningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SkrinUser _$SkrinUserFromJson(Map<String, dynamic> json) {
  return _SkrinUser.fromJson(json);
}

/// @nodoc
mixin _$SkrinUser {
  @JsonKey(name: 'tgl_pengisian')
  DateTime? get tglPengisian => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_pengisian')
  set tglPengisian(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'skrinning_id')
  int? get skrinningId => throw _privateConstructorUsedError;
  @JsonKey(name: 'skrinning_id')
  set skrinningId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_skrin_user')
  int? get idSkrinUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_skrin_user')
  set idSkrinUser(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkrinUserCopyWith<SkrinUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkrinUserCopyWith<$Res> {
  factory $SkrinUserCopyWith(SkrinUser value, $Res Function(SkrinUser) then) =
      _$SkrinUserCopyWithImpl<$Res, SkrinUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
      @JsonKey(name: 'skrinning_id') int? skrinningId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'id_skrin_user') int? idSkrinUser});
}

/// @nodoc
class _$SkrinUserCopyWithImpl<$Res, $Val extends SkrinUser>
    implements $SkrinUserCopyWith<$Res> {
  _$SkrinUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tglPengisian = freezed,
    Object? skrinningId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? idSkrinUser = freezed,
  }) {
    return _then(_value.copyWith(
      tglPengisian: freezed == tglPengisian
          ? _value.tglPengisian
          : tglPengisian // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      skrinningId: freezed == skrinningId
          ? _value.skrinningId
          : skrinningId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      idSkrinUser: freezed == idSkrinUser
          ? _value.idSkrinUser
          : idSkrinUser // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkrinUserImplCopyWith<$Res>
    implements $SkrinUserCopyWith<$Res> {
  factory _$$SkrinUserImplCopyWith(
          _$SkrinUserImpl value, $Res Function(_$SkrinUserImpl) then) =
      __$$SkrinUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
      @JsonKey(name: 'skrinning_id') int? skrinningId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'id_skrin_user') int? idSkrinUser});
}

/// @nodoc
class __$$SkrinUserImplCopyWithImpl<$Res>
    extends _$SkrinUserCopyWithImpl<$Res, _$SkrinUserImpl>
    implements _$$SkrinUserImplCopyWith<$Res> {
  __$$SkrinUserImplCopyWithImpl(
      _$SkrinUserImpl _value, $Res Function(_$SkrinUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tglPengisian = freezed,
    Object? skrinningId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? idSkrinUser = freezed,
  }) {
    return _then(_$SkrinUserImpl(
      tglPengisian: freezed == tglPengisian
          ? _value.tglPengisian
          : tglPengisian // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      skrinningId: freezed == skrinningId
          ? _value.skrinningId
          : skrinningId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      idSkrinUser: freezed == idSkrinUser
          ? _value.idSkrinUser
          : idSkrinUser // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkrinUserImpl implements _SkrinUser {
  _$SkrinUserImpl(
      {@JsonKey(name: 'tgl_pengisian') this.tglPengisian,
      @JsonKey(name: 'skrinning_id') this.skrinningId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'id_skrin_user') this.idSkrinUser});

  factory _$SkrinUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkrinUserImplFromJson(json);

  @override
  @JsonKey(name: 'tgl_pengisian')
  DateTime? tglPengisian;
  @override
  @JsonKey(name: 'skrinning_id')
  int? skrinningId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  @JsonKey(name: 'id_skrin_user')
  int? idSkrinUser;

  @override
  String toString() {
    return 'SkrinUser(tglPengisian: $tglPengisian, skrinningId: $skrinningId, createdAt: $createdAt, updatedAt: $updatedAt, idSkrinUser: $idSkrinUser)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkrinUserImplCopyWith<_$SkrinUserImpl> get copyWith =>
      __$$SkrinUserImplCopyWithImpl<_$SkrinUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkrinUserImplToJson(
      this,
    );
  }
}

abstract class _SkrinUser implements SkrinUser {
  factory _SkrinUser(
      {@JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
      @JsonKey(name: 'skrinning_id') int? skrinningId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'id_skrin_user') int? idSkrinUser}) = _$SkrinUserImpl;

  factory _SkrinUser.fromJson(Map<String, dynamic> json) =
      _$SkrinUserImpl.fromJson;

  @override
  @JsonKey(name: 'tgl_pengisian')
  DateTime? get tglPengisian;
  @JsonKey(name: 'tgl_pengisian')
  set tglPengisian(DateTime? value);
  @override
  @JsonKey(name: 'skrinning_id')
  int? get skrinningId;
  @JsonKey(name: 'skrinning_id')
  set skrinningId(int? value);
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
  @JsonKey(name: 'id_skrin_user')
  int? get idSkrinUser;
  @JsonKey(name: 'id_skrin_user')
  set idSkrinUser(int? value);
  @override
  @JsonKey(ignore: true)
  _$$SkrinUserImplCopyWith<_$SkrinUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SoalJawab _$SoalJawabFromJson(Map<String, dynamic> json) {
  return _SoalJawab.fromJson(json);
}

/// @nodoc
mixin _$SoalJawab {
  @JsonKey(name: 'id_soal')
  int? get idSoal => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_soal')
  set idSoal(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'soal')
  String? get soal => throw _privateConstructorUsedError;
  @JsonKey(name: 'soal')
  set soal(String? value) => throw _privateConstructorUsedError;
  List<Jawaban>? get jawaban => throw _privateConstructorUsedError;
  set jawaban(List<Jawaban>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoalJawabCopyWith<SoalJawab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoalJawabCopyWith<$Res> {
  factory $SoalJawabCopyWith(SoalJawab value, $Res Function(SoalJawab) then) =
      _$SoalJawabCopyWithImpl<$Res, SoalJawab>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_soal') int? idSoal,
      @JsonKey(name: 'soal') String? soal,
      List<Jawaban>? jawaban});
}

/// @nodoc
class _$SoalJawabCopyWithImpl<$Res, $Val extends SoalJawab>
    implements $SoalJawabCopyWith<$Res> {
  _$SoalJawabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idSoal = freezed,
    Object? soal = freezed,
    Object? jawaban = freezed,
  }) {
    return _then(_value.copyWith(
      idSoal: freezed == idSoal
          ? _value.idSoal
          : idSoal // ignore: cast_nullable_to_non_nullable
              as int?,
      soal: freezed == soal
          ? _value.soal
          : soal // ignore: cast_nullable_to_non_nullable
              as String?,
      jawaban: freezed == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as List<Jawaban>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoalJawabImplCopyWith<$Res>
    implements $SoalJawabCopyWith<$Res> {
  factory _$$SoalJawabImplCopyWith(
          _$SoalJawabImpl value, $Res Function(_$SoalJawabImpl) then) =
      __$$SoalJawabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_soal') int? idSoal,
      @JsonKey(name: 'soal') String? soal,
      List<Jawaban>? jawaban});
}

/// @nodoc
class __$$SoalJawabImplCopyWithImpl<$Res>
    extends _$SoalJawabCopyWithImpl<$Res, _$SoalJawabImpl>
    implements _$$SoalJawabImplCopyWith<$Res> {
  __$$SoalJawabImplCopyWithImpl(
      _$SoalJawabImpl _value, $Res Function(_$SoalJawabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idSoal = freezed,
    Object? soal = freezed,
    Object? jawaban = freezed,
  }) {
    return _then(_$SoalJawabImpl(
      idSoal: freezed == idSoal
          ? _value.idSoal
          : idSoal // ignore: cast_nullable_to_non_nullable
              as int?,
      soal: freezed == soal
          ? _value.soal
          : soal // ignore: cast_nullable_to_non_nullable
              as String?,
      jawaban: freezed == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as List<Jawaban>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoalJawabImpl implements _SoalJawab {
  _$SoalJawabImpl(
      {@JsonKey(name: 'id_soal') this.idSoal,
      @JsonKey(name: 'soal') this.soal,
      this.jawaban});

  factory _$SoalJawabImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoalJawabImplFromJson(json);

  @override
  @JsonKey(name: 'id_soal')
  int? idSoal;
  @override
  @JsonKey(name: 'soal')
  String? soal;
  @override
  List<Jawaban>? jawaban;

  @override
  String toString() {
    return 'SoalJawab(idSoal: $idSoal, soal: $soal, jawaban: $jawaban)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoalJawabImplCopyWith<_$SoalJawabImpl> get copyWith =>
      __$$SoalJawabImplCopyWithImpl<_$SoalJawabImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoalJawabImplToJson(
      this,
    );
  }
}

abstract class _SoalJawab implements SoalJawab {
  factory _SoalJawab(
      {@JsonKey(name: 'id_soal') int? idSoal,
      @JsonKey(name: 'soal') String? soal,
      List<Jawaban>? jawaban}) = _$SoalJawabImpl;

  factory _SoalJawab.fromJson(Map<String, dynamic> json) =
      _$SoalJawabImpl.fromJson;

  @override
  @JsonKey(name: 'id_soal')
  int? get idSoal;
  @JsonKey(name: 'id_soal')
  set idSoal(int? value);
  @override
  @JsonKey(name: 'soal')
  String? get soal;
  @JsonKey(name: 'soal')
  set soal(String? value);
  @override
  List<Jawaban>? get jawaban;
  set jawaban(List<Jawaban>? value);
  @override
  @JsonKey(ignore: true)
  _$$SoalJawabImplCopyWith<_$SoalJawabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Jawaban _$JawabanFromJson(Map<String, dynamic> json) {
  return _Jawaban.fromJson(json);
}

/// @nodoc
mixin _$Jawaban {
  @JsonKey(name: 'id_jawaban_skrinning')
  int? get idJawabanSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_jawaban_skrinning')
  set idJawabanSkrinning(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'jawaban')
  String? get jawaban => throw _privateConstructorUsedError;
  @JsonKey(name: 'jawaban')
  set jawaban(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'poin_jawaban')
  int? get poinJawaban => throw _privateConstructorUsedError;
  @JsonKey(name: 'poin_jawaban')
  set poinJawaban(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JawabanCopyWith<Jawaban> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JawabanCopyWith<$Res> {
  factory $JawabanCopyWith(Jawaban value, $Res Function(Jawaban) then) =
      _$JawabanCopyWithImpl<$Res, Jawaban>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_jawaban_skrinning') int? idJawabanSkrinning,
      @JsonKey(name: 'jawaban') String? jawaban,
      @JsonKey(name: 'poin_jawaban') int? poinJawaban});
}

/// @nodoc
class _$JawabanCopyWithImpl<$Res, $Val extends Jawaban>
    implements $JawabanCopyWith<$Res> {
  _$JawabanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idJawabanSkrinning = freezed,
    Object? jawaban = freezed,
    Object? poinJawaban = freezed,
  }) {
    return _then(_value.copyWith(
      idJawabanSkrinning: freezed == idJawabanSkrinning
          ? _value.idJawabanSkrinning
          : idJawabanSkrinning // ignore: cast_nullable_to_non_nullable
              as int?,
      jawaban: freezed == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as String?,
      poinJawaban: freezed == poinJawaban
          ? _value.poinJawaban
          : poinJawaban // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JawabanImplCopyWith<$Res> implements $JawabanCopyWith<$Res> {
  factory _$$JawabanImplCopyWith(
          _$JawabanImpl value, $Res Function(_$JawabanImpl) then) =
      __$$JawabanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_jawaban_skrinning') int? idJawabanSkrinning,
      @JsonKey(name: 'jawaban') String? jawaban,
      @JsonKey(name: 'poin_jawaban') int? poinJawaban});
}

/// @nodoc
class __$$JawabanImplCopyWithImpl<$Res>
    extends _$JawabanCopyWithImpl<$Res, _$JawabanImpl>
    implements _$$JawabanImplCopyWith<$Res> {
  __$$JawabanImplCopyWithImpl(
      _$JawabanImpl _value, $Res Function(_$JawabanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idJawabanSkrinning = freezed,
    Object? jawaban = freezed,
    Object? poinJawaban = freezed,
  }) {
    return _then(_$JawabanImpl(
      idJawabanSkrinning: freezed == idJawabanSkrinning
          ? _value.idJawabanSkrinning
          : idJawabanSkrinning // ignore: cast_nullable_to_non_nullable
              as int?,
      jawaban: freezed == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as String?,
      poinJawaban: freezed == poinJawaban
          ? _value.poinJawaban
          : poinJawaban // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JawabanImpl implements _Jawaban {
  _$JawabanImpl(
      {@JsonKey(name: 'id_jawaban_skrinning') this.idJawabanSkrinning,
      @JsonKey(name: 'jawaban') this.jawaban,
      @JsonKey(name: 'poin_jawaban') this.poinJawaban});

  factory _$JawabanImpl.fromJson(Map<String, dynamic> json) =>
      _$$JawabanImplFromJson(json);

  @override
  @JsonKey(name: 'id_jawaban_skrinning')
  int? idJawabanSkrinning;
  @override
  @JsonKey(name: 'jawaban')
  String? jawaban;
  @override
  @JsonKey(name: 'poin_jawaban')
  int? poinJawaban;

  @override
  String toString() {
    return 'Jawaban(idJawabanSkrinning: $idJawabanSkrinning, jawaban: $jawaban, poinJawaban: $poinJawaban)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JawabanImplCopyWith<_$JawabanImpl> get copyWith =>
      __$$JawabanImplCopyWithImpl<_$JawabanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JawabanImplToJson(
      this,
    );
  }
}

abstract class _Jawaban implements Jawaban {
  factory _Jawaban(
      {@JsonKey(name: 'id_jawaban_skrinning') int? idJawabanSkrinning,
      @JsonKey(name: 'jawaban') String? jawaban,
      @JsonKey(name: 'poin_jawaban') int? poinJawaban}) = _$JawabanImpl;

  factory _Jawaban.fromJson(Map<String, dynamic> json) = _$JawabanImpl.fromJson;

  @override
  @JsonKey(name: 'id_jawaban_skrinning')
  int? get idJawabanSkrinning;
  @JsonKey(name: 'id_jawaban_skrinning')
  set idJawabanSkrinning(int? value);
  @override
  @JsonKey(name: 'jawaban')
  String? get jawaban;
  @JsonKey(name: 'jawaban')
  set jawaban(String? value);
  @override
  @JsonKey(name: 'poin_jawaban')
  int? get poinJawaban;
  @JsonKey(name: 'poin_jawaban')
  set poinJawaban(int? value);
  @override
  @JsonKey(ignore: true)
  _$$JawabanImplCopyWith<_$JawabanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RiwayatSkrinning _$RiwayatSkrinningFromJson(Map<String, dynamic> json) {
  return _RiwayatSkrinning.fromJson(json);
}

/// @nodoc
mixin _$RiwayatSkrinning {
  @JsonKey(name: 'id_skrin_user')
  int? get idSkrinUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_skrin_user')
  set idSkrinUser(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_pengisian')
  DateTime? get tglPengisian => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_pengisian')
  set tglPengisian(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'skrinning_id')
  int? get skrinningId => throw _privateConstructorUsedError;
  @JsonKey(name: 'skrinning_id')
  set skrinningId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  set userId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  int? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  set idUser(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  set username(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  set password(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  set role(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_skrinning')
  int? get idSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_skrinning')
  set idSkrinning(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'jenis_skrinning')
  String? get jenisSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'jenis_skrinning')
  set jenisSkrinning(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi_skrinning')
  String? get deskripsiSkrinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi_skrinning')
  set deskripsiSkrinning(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiwayatSkrinningCopyWith<RiwayatSkrinning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiwayatSkrinningCopyWith<$Res> {
  factory $RiwayatSkrinningCopyWith(
          RiwayatSkrinning value, $Res Function(RiwayatSkrinning) then) =
      _$RiwayatSkrinningCopyWithImpl<$Res, RiwayatSkrinning>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_skrin_user') int? idSkrinUser,
      @JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
      @JsonKey(name: 'skrinning_id') int? skrinningId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'id_user') int? idUser,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'id_skrinning') int? idSkrinning,
      @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
      @JsonKey(name: 'deskripsi_skrinning') String? deskripsiSkrinning});
}

/// @nodoc
class _$RiwayatSkrinningCopyWithImpl<$Res, $Val extends RiwayatSkrinning>
    implements $RiwayatSkrinningCopyWith<$Res> {
  _$RiwayatSkrinningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idSkrinUser = freezed,
    Object? tglPengisian = freezed,
    Object? skrinningId = freezed,
    Object? userId = freezed,
    Object? idUser = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? idSkrinning = freezed,
    Object? jenisSkrinning = freezed,
    Object? deskripsiSkrinning = freezed,
  }) {
    return _then(_value.copyWith(
      idSkrinUser: freezed == idSkrinUser
          ? _value.idSkrinUser
          : idSkrinUser // ignore: cast_nullable_to_non_nullable
              as int?,
      tglPengisian: freezed == tglPengisian
          ? _value.tglPengisian
          : tglPengisian // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      skrinningId: freezed == skrinningId
          ? _value.skrinningId
          : skrinningId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      idSkrinning: freezed == idSkrinning
          ? _value.idSkrinning
          : idSkrinning // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSkrinning: freezed == jenisSkrinning
          ? _value.jenisSkrinning
          : jenisSkrinning // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsiSkrinning: freezed == deskripsiSkrinning
          ? _value.deskripsiSkrinning
          : deskripsiSkrinning // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiwayatSkrinningImplCopyWith<$Res>
    implements $RiwayatSkrinningCopyWith<$Res> {
  factory _$$RiwayatSkrinningImplCopyWith(_$RiwayatSkrinningImpl value,
          $Res Function(_$RiwayatSkrinningImpl) then) =
      __$$RiwayatSkrinningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_skrin_user') int? idSkrinUser,
      @JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
      @JsonKey(name: 'skrinning_id') int? skrinningId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'id_user') int? idUser,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'id_skrinning') int? idSkrinning,
      @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
      @JsonKey(name: 'deskripsi_skrinning') String? deskripsiSkrinning});
}

/// @nodoc
class __$$RiwayatSkrinningImplCopyWithImpl<$Res>
    extends _$RiwayatSkrinningCopyWithImpl<$Res, _$RiwayatSkrinningImpl>
    implements _$$RiwayatSkrinningImplCopyWith<$Res> {
  __$$RiwayatSkrinningImplCopyWithImpl(_$RiwayatSkrinningImpl _value,
      $Res Function(_$RiwayatSkrinningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idSkrinUser = freezed,
    Object? tglPengisian = freezed,
    Object? skrinningId = freezed,
    Object? userId = freezed,
    Object? idUser = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? idSkrinning = freezed,
    Object? jenisSkrinning = freezed,
    Object? deskripsiSkrinning = freezed,
  }) {
    return _then(_$RiwayatSkrinningImpl(
      idSkrinUser: freezed == idSkrinUser
          ? _value.idSkrinUser
          : idSkrinUser // ignore: cast_nullable_to_non_nullable
              as int?,
      tglPengisian: freezed == tglPengisian
          ? _value.tglPengisian
          : tglPengisian // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      skrinningId: freezed == skrinningId
          ? _value.skrinningId
          : skrinningId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      idSkrinning: freezed == idSkrinning
          ? _value.idSkrinning
          : idSkrinning // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisSkrinning: freezed == jenisSkrinning
          ? _value.jenisSkrinning
          : jenisSkrinning // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsiSkrinning: freezed == deskripsiSkrinning
          ? _value.deskripsiSkrinning
          : deskripsiSkrinning // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiwayatSkrinningImpl implements _RiwayatSkrinning {
  _$RiwayatSkrinningImpl(
      {@JsonKey(name: 'id_skrin_user') this.idSkrinUser,
      @JsonKey(name: 'tgl_pengisian') this.tglPengisian,
      @JsonKey(name: 'skrinning_id') this.skrinningId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'id_skrinning') this.idSkrinning,
      @JsonKey(name: 'jenis_skrinning') this.jenisSkrinning,
      @JsonKey(name: 'deskripsi_skrinning') this.deskripsiSkrinning});

  factory _$RiwayatSkrinningImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiwayatSkrinningImplFromJson(json);

  @override
  @JsonKey(name: 'id_skrin_user')
  int? idSkrinUser;
  @override
  @JsonKey(name: 'tgl_pengisian')
  DateTime? tglPengisian;
  @override
  @JsonKey(name: 'skrinning_id')
  int? skrinningId;
  @override
  @JsonKey(name: 'user_id')
  int? userId;
  @override
  @JsonKey(name: 'id_user')
  int? idUser;
  @override
  @JsonKey(name: 'username')
  String? username;
  @override
  @JsonKey(name: 'email')
  String? email;
  @override
  @JsonKey(name: 'password')
  String? password;
  @override
  @JsonKey(name: 'role')
  String? role;
  @override
  @JsonKey(name: 'id_skrinning')
  int? idSkrinning;
  @override
  @JsonKey(name: 'jenis_skrinning')
  String? jenisSkrinning;
  @override
  @JsonKey(name: 'deskripsi_skrinning')
  String? deskripsiSkrinning;

  @override
  String toString() {
    return 'RiwayatSkrinning(idSkrinUser: $idSkrinUser, tglPengisian: $tglPengisian, skrinningId: $skrinningId, userId: $userId, idUser: $idUser, username: $username, email: $email, password: $password, role: $role, idSkrinning: $idSkrinning, jenisSkrinning: $jenisSkrinning, deskripsiSkrinning: $deskripsiSkrinning)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiwayatSkrinningImplCopyWith<_$RiwayatSkrinningImpl> get copyWith =>
      __$$RiwayatSkrinningImplCopyWithImpl<_$RiwayatSkrinningImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiwayatSkrinningImplToJson(
      this,
    );
  }
}

abstract class _RiwayatSkrinning implements RiwayatSkrinning {
  factory _RiwayatSkrinning(
          {@JsonKey(name: 'id_skrin_user') int? idSkrinUser,
          @JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
          @JsonKey(name: 'skrinning_id') int? skrinningId,
          @JsonKey(name: 'user_id') int? userId,
          @JsonKey(name: 'id_user') int? idUser,
          @JsonKey(name: 'username') String? username,
          @JsonKey(name: 'email') String? email,
          @JsonKey(name: 'password') String? password,
          @JsonKey(name: 'role') String? role,
          @JsonKey(name: 'id_skrinning') int? idSkrinning,
          @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
          @JsonKey(name: 'deskripsi_skrinning') String? deskripsiSkrinning}) =
      _$RiwayatSkrinningImpl;

  factory _RiwayatSkrinning.fromJson(Map<String, dynamic> json) =
      _$RiwayatSkrinningImpl.fromJson;

  @override
  @JsonKey(name: 'id_skrin_user')
  int? get idSkrinUser;
  @JsonKey(name: 'id_skrin_user')
  set idSkrinUser(int? value);
  @override
  @JsonKey(name: 'tgl_pengisian')
  DateTime? get tglPengisian;
  @JsonKey(name: 'tgl_pengisian')
  set tglPengisian(DateTime? value);
  @override
  @JsonKey(name: 'skrinning_id')
  int? get skrinningId;
  @JsonKey(name: 'skrinning_id')
  set skrinningId(int? value);
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @JsonKey(name: 'user_id')
  set userId(int? value);
  @override
  @JsonKey(name: 'id_user')
  int? get idUser;
  @JsonKey(name: 'id_user')
  set idUser(int? value);
  @override
  @JsonKey(name: 'username')
  String? get username;
  @JsonKey(name: 'username')
  set username(String? value);
  @override
  @JsonKey(name: 'email')
  String? get email;
  @JsonKey(name: 'email')
  set email(String? value);
  @override
  @JsonKey(name: 'password')
  String? get password;
  @JsonKey(name: 'password')
  set password(String? value);
  @override
  @JsonKey(name: 'role')
  String? get role;
  @JsonKey(name: 'role')
  set role(String? value);
  @override
  @JsonKey(name: 'id_skrinning')
  int? get idSkrinning;
  @JsonKey(name: 'id_skrinning')
  set idSkrinning(int? value);
  @override
  @JsonKey(name: 'jenis_skrinning')
  String? get jenisSkrinning;
  @JsonKey(name: 'jenis_skrinning')
  set jenisSkrinning(String? value);
  @override
  @JsonKey(name: 'deskripsi_skrinning')
  String? get deskripsiSkrinning;
  @JsonKey(name: 'deskripsi_skrinning')
  set deskripsiSkrinning(String? value);
  @override
  @JsonKey(ignore: true)
  _$$RiwayatSkrinningImplCopyWith<_$RiwayatSkrinningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomChatMe _$RoomChatMeFromJson(Map<String, dynamic> json) {
  return _RoomChatMe.fromJson(json);
}

/// @nodoc
mixin _$RoomChatMe {
  @JsonKey(name: 'id_room_chat_me')
  int? get idRoomChatMe => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_room_chat_me')
  set idRoomChatMe(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaja_user_id')
  int? get remajaUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaja_user_id')
  set remajaUserId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  List<RiwayatChatMe>? get riwayats => throw _privateConstructorUsedError;
  set riwayats(List<RiwayatChatMe>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomChatMeCopyWith<RoomChatMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomChatMeCopyWith<$Res> {
  factory $RoomChatMeCopyWith(
          RoomChatMe value, $Res Function(RoomChatMe) then) =
      _$RoomChatMeCopyWithImpl<$Res, RoomChatMe>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_room_chat_me') int? idRoomChatMe,
      @JsonKey(name: 'remaja_user_id') int? remajaUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<RiwayatChatMe>? riwayats});
}

/// @nodoc
class _$RoomChatMeCopyWithImpl<$Res, $Val extends RoomChatMe>
    implements $RoomChatMeCopyWith<$Res> {
  _$RoomChatMeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRoomChatMe = freezed,
    Object? remajaUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? riwayats = freezed,
  }) {
    return _then(_value.copyWith(
      idRoomChatMe: freezed == idRoomChatMe
          ? _value.idRoomChatMe
          : idRoomChatMe // ignore: cast_nullable_to_non_nullable
              as int?,
      remajaUserId: freezed == remajaUserId
          ? _value.remajaUserId
          : remajaUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riwayats: freezed == riwayats
          ? _value.riwayats
          : riwayats // ignore: cast_nullable_to_non_nullable
              as List<RiwayatChatMe>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomChatMeImplCopyWith<$Res>
    implements $RoomChatMeCopyWith<$Res> {
  factory _$$RoomChatMeImplCopyWith(
          _$RoomChatMeImpl value, $Res Function(_$RoomChatMeImpl) then) =
      __$$RoomChatMeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_room_chat_me') int? idRoomChatMe,
      @JsonKey(name: 'remaja_user_id') int? remajaUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<RiwayatChatMe>? riwayats});
}

/// @nodoc
class __$$RoomChatMeImplCopyWithImpl<$Res>
    extends _$RoomChatMeCopyWithImpl<$Res, _$RoomChatMeImpl>
    implements _$$RoomChatMeImplCopyWith<$Res> {
  __$$RoomChatMeImplCopyWithImpl(
      _$RoomChatMeImpl _value, $Res Function(_$RoomChatMeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRoomChatMe = freezed,
    Object? remajaUserId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? riwayats = freezed,
  }) {
    return _then(_$RoomChatMeImpl(
      idRoomChatMe: freezed == idRoomChatMe
          ? _value.idRoomChatMe
          : idRoomChatMe // ignore: cast_nullable_to_non_nullable
              as int?,
      remajaUserId: freezed == remajaUserId
          ? _value.remajaUserId
          : remajaUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riwayats: freezed == riwayats
          ? _value.riwayats
          : riwayats // ignore: cast_nullable_to_non_nullable
              as List<RiwayatChatMe>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomChatMeImpl implements _RoomChatMe {
  _$RoomChatMeImpl(
      {@JsonKey(name: 'id_room_chat_me') this.idRoomChatMe,
      @JsonKey(name: 'remaja_user_id') this.remajaUserId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.riwayats});

  factory _$RoomChatMeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomChatMeImplFromJson(json);

  @override
  @JsonKey(name: 'id_room_chat_me')
  int? idRoomChatMe;
  @override
  @JsonKey(name: 'remaja_user_id')
  int? remajaUserId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @override
  List<RiwayatChatMe>? riwayats;

  @override
  String toString() {
    return 'RoomChatMe(idRoomChatMe: $idRoomChatMe, remajaUserId: $remajaUserId, createdAt: $createdAt, updatedAt: $updatedAt, riwayats: $riwayats)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomChatMeImplCopyWith<_$RoomChatMeImpl> get copyWith =>
      __$$RoomChatMeImplCopyWithImpl<_$RoomChatMeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomChatMeImplToJson(
      this,
    );
  }
}

abstract class _RoomChatMe implements RoomChatMe {
  factory _RoomChatMe(
      {@JsonKey(name: 'id_room_chat_me') int? idRoomChatMe,
      @JsonKey(name: 'remaja_user_id') int? remajaUserId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<RiwayatChatMe>? riwayats}) = _$RoomChatMeImpl;

  factory _RoomChatMe.fromJson(Map<String, dynamic> json) =
      _$RoomChatMeImpl.fromJson;

  @override
  @JsonKey(name: 'id_room_chat_me')
  int? get idRoomChatMe;
  @JsonKey(name: 'id_room_chat_me')
  set idRoomChatMe(int? value);
  @override
  @JsonKey(name: 'remaja_user_id')
  int? get remajaUserId;
  @JsonKey(name: 'remaja_user_id')
  set remajaUserId(int? value);
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
  List<RiwayatChatMe>? get riwayats;
  set riwayats(List<RiwayatChatMe>? value);
  @override
  @JsonKey(ignore: true)
  _$$RoomChatMeImplCopyWith<_$RoomChatMeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RiwayatChatMe _$RiwayatChatMeFromJson(Map<String, dynamic> json) {
  return _RiwayatChatMe.fromJson(json);
}

/// @nodoc
mixin _$RiwayatChatMe {
  @JsonKey(name: 'id_riwayat_chat')
  int? get idRiwayatChat => throw _privateConstructorUsedError;
  String? get pesan => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_chat')
  DateTime? get tglChat => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_chat')
  String? get waktuChat => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_chat_id')
  int? get roomChatId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiwayatChatMeCopyWith<RiwayatChatMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiwayatChatMeCopyWith<$Res> {
  factory $RiwayatChatMeCopyWith(
          RiwayatChatMe value, $Res Function(RiwayatChatMe) then) =
      _$RiwayatChatMeCopyWithImpl<$Res, RiwayatChatMe>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_riwayat_chat') int? idRiwayatChat,
      String? pesan,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'tgl_chat') DateTime? tglChat,
      @JsonKey(name: 'waktu_chat') String? waktuChat,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'room_chat_id') int? roomChatId});
}

/// @nodoc
class _$RiwayatChatMeCopyWithImpl<$Res, $Val extends RiwayatChatMe>
    implements $RiwayatChatMeCopyWith<$Res> {
  _$RiwayatChatMeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRiwayatChat = freezed,
    Object? pesan = freezed,
    Object? userId = freezed,
    Object? tglChat = freezed,
    Object? waktuChat = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? roomChatId = freezed,
  }) {
    return _then(_value.copyWith(
      idRiwayatChat: freezed == idRiwayatChat
          ? _value.idRiwayatChat
          : idRiwayatChat // ignore: cast_nullable_to_non_nullable
              as int?,
      pesan: freezed == pesan
          ? _value.pesan
          : pesan // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      tglChat: freezed == tglChat
          ? _value.tglChat
          : tglChat // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      waktuChat: freezed == waktuChat
          ? _value.waktuChat
          : waktuChat // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      roomChatId: freezed == roomChatId
          ? _value.roomChatId
          : roomChatId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiwayatChatMeImplCopyWith<$Res>
    implements $RiwayatChatMeCopyWith<$Res> {
  factory _$$RiwayatChatMeImplCopyWith(
          _$RiwayatChatMeImpl value, $Res Function(_$RiwayatChatMeImpl) then) =
      __$$RiwayatChatMeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_riwayat_chat') int? idRiwayatChat,
      String? pesan,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'tgl_chat') DateTime? tglChat,
      @JsonKey(name: 'waktu_chat') String? waktuChat,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'room_chat_id') int? roomChatId});
}

/// @nodoc
class __$$RiwayatChatMeImplCopyWithImpl<$Res>
    extends _$RiwayatChatMeCopyWithImpl<$Res, _$RiwayatChatMeImpl>
    implements _$$RiwayatChatMeImplCopyWith<$Res> {
  __$$RiwayatChatMeImplCopyWithImpl(
      _$RiwayatChatMeImpl _value, $Res Function(_$RiwayatChatMeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRiwayatChat = freezed,
    Object? pesan = freezed,
    Object? userId = freezed,
    Object? tglChat = freezed,
    Object? waktuChat = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? roomChatId = freezed,
  }) {
    return _then(_$RiwayatChatMeImpl(
      idRiwayatChat: freezed == idRiwayatChat
          ? _value.idRiwayatChat
          : idRiwayatChat // ignore: cast_nullable_to_non_nullable
              as int?,
      pesan: freezed == pesan
          ? _value.pesan
          : pesan // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      tglChat: freezed == tglChat
          ? _value.tglChat
          : tglChat // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      waktuChat: freezed == waktuChat
          ? _value.waktuChat
          : waktuChat // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      roomChatId: freezed == roomChatId
          ? _value.roomChatId
          : roomChatId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiwayatChatMeImpl implements _RiwayatChatMe {
  const _$RiwayatChatMeImpl(
      {@JsonKey(name: 'id_riwayat_chat') this.idRiwayatChat,
      this.pesan,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'tgl_chat') this.tglChat,
      @JsonKey(name: 'waktu_chat') this.waktuChat,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'room_chat_id') this.roomChatId});

  factory _$RiwayatChatMeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiwayatChatMeImplFromJson(json);

  @override
  @JsonKey(name: 'id_riwayat_chat')
  final int? idRiwayatChat;
  @override
  final String? pesan;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'tgl_chat')
  final DateTime? tglChat;
  @override
  @JsonKey(name: 'waktu_chat')
  final String? waktuChat;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'room_chat_id')
  final int? roomChatId;

  @override
  String toString() {
    return 'RiwayatChatMe(idRiwayatChat: $idRiwayatChat, pesan: $pesan, userId: $userId, tglChat: $tglChat, waktuChat: $waktuChat, createdAt: $createdAt, updatedAt: $updatedAt, roomChatId: $roomChatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiwayatChatMeImpl &&
            (identical(other.idRiwayatChat, idRiwayatChat) ||
                other.idRiwayatChat == idRiwayatChat) &&
            (identical(other.pesan, pesan) || other.pesan == pesan) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tglChat, tglChat) || other.tglChat == tglChat) &&
            (identical(other.waktuChat, waktuChat) ||
                other.waktuChat == waktuChat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.roomChatId, roomChatId) ||
                other.roomChatId == roomChatId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idRiwayatChat, pesan, userId,
      tglChat, waktuChat, createdAt, updatedAt, roomChatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiwayatChatMeImplCopyWith<_$RiwayatChatMeImpl> get copyWith =>
      __$$RiwayatChatMeImplCopyWithImpl<_$RiwayatChatMeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiwayatChatMeImplToJson(
      this,
    );
  }
}

abstract class _RiwayatChatMe implements RiwayatChatMe {
  const factory _RiwayatChatMe(
          {@JsonKey(name: 'id_riwayat_chat') final int? idRiwayatChat,
          final String? pesan,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'tgl_chat') final DateTime? tglChat,
          @JsonKey(name: 'waktu_chat') final String? waktuChat,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'room_chat_id') final int? roomChatId}) =
      _$RiwayatChatMeImpl;

  factory _RiwayatChatMe.fromJson(Map<String, dynamic> json) =
      _$RiwayatChatMeImpl.fromJson;

  @override
  @JsonKey(name: 'id_riwayat_chat')
  int? get idRiwayatChat;
  @override
  String? get pesan;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'tgl_chat')
  DateTime? get tglChat;
  @override
  @JsonKey(name: 'waktu_chat')
  String? get waktuChat;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'room_chat_id')
  int? get roomChatId;
  @override
  @JsonKey(ignore: true)
  _$$RiwayatChatMeImplCopyWith<_$RiwayatChatMeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageBubbleList {
  List<List<MessageBubbleData>> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageBubbleListCopyWith<MessageBubbleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBubbleListCopyWith<$Res> {
  factory $MessageBubbleListCopyWith(
          MessageBubbleList value, $Res Function(MessageBubbleList) then) =
      _$MessageBubbleListCopyWithImpl<$Res, MessageBubbleList>;
  @useResult
  $Res call({List<List<MessageBubbleData>> data});
}

/// @nodoc
class _$MessageBubbleListCopyWithImpl<$Res, $Val extends MessageBubbleList>
    implements $MessageBubbleListCopyWith<$Res> {
  _$MessageBubbleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<List<MessageBubbleData>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageBubbleListImplCopyWith<$Res>
    implements $MessageBubbleListCopyWith<$Res> {
  factory _$$MessageBubbleListImplCopyWith(_$MessageBubbleListImpl value,
          $Res Function(_$MessageBubbleListImpl) then) =
      __$$MessageBubbleListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<MessageBubbleData>> data});
}

/// @nodoc
class __$$MessageBubbleListImplCopyWithImpl<$Res>
    extends _$MessageBubbleListCopyWithImpl<$Res, _$MessageBubbleListImpl>
    implements _$$MessageBubbleListImplCopyWith<$Res> {
  __$$MessageBubbleListImplCopyWithImpl(_$MessageBubbleListImpl _value,
      $Res Function(_$MessageBubbleListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MessageBubbleListImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<List<MessageBubbleData>>,
    ));
  }
}

/// @nodoc

class _$MessageBubbleListImpl implements _MessageBubbleList {
  const _$MessageBubbleListImpl(
      {required final List<List<MessageBubbleData>> data})
      : _data = data;

  final List<List<MessageBubbleData>> _data;
  @override
  List<List<MessageBubbleData>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MessageBubbleList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageBubbleListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageBubbleListImplCopyWith<_$MessageBubbleListImpl> get copyWith =>
      __$$MessageBubbleListImplCopyWithImpl<_$MessageBubbleListImpl>(
          this, _$identity);
}

abstract class _MessageBubbleList implements MessageBubbleList {
  const factory _MessageBubbleList(
          {required final List<List<MessageBubbleData>> data}) =
      _$MessageBubbleListImpl;

  @override
  List<List<MessageBubbleData>> get data;
  @override
  @JsonKey(ignore: true)
  _$$MessageBubbleListImplCopyWith<_$MessageBubbleListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageBubbleData _$MessageBubbleDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'dateTime':
      return MessageBubbleDataDateTime.fromJson(json);
    case 'text':
      return MessageBubbleDataText.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MessageBubbleData',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MessageBubbleData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? dateTime) dateTime,
    required TResult Function(String? message, DateTime? sentAt, bool isSender)
        text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? dateTime)? dateTime,
    TResult? Function(String? message, DateTime? sentAt, bool isSender)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? dateTime)? dateTime,
    TResult Function(String? message, DateTime? sentAt, bool isSender)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageBubbleDataDateTime value) dateTime,
    required TResult Function(MessageBubbleDataText value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageBubbleDataDateTime value)? dateTime,
    TResult? Function(MessageBubbleDataText value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageBubbleDataDateTime value)? dateTime,
    TResult Function(MessageBubbleDataText value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBubbleDataCopyWith<$Res> {
  factory $MessageBubbleDataCopyWith(
          MessageBubbleData value, $Res Function(MessageBubbleData) then) =
      _$MessageBubbleDataCopyWithImpl<$Res, MessageBubbleData>;
}

/// @nodoc
class _$MessageBubbleDataCopyWithImpl<$Res, $Val extends MessageBubbleData>
    implements $MessageBubbleDataCopyWith<$Res> {
  _$MessageBubbleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MessageBubbleDataDateTimeImplCopyWith<$Res> {
  factory _$$MessageBubbleDataDateTimeImplCopyWith(
          _$MessageBubbleDataDateTimeImpl value,
          $Res Function(_$MessageBubbleDataDateTimeImpl) then) =
      __$$MessageBubbleDataDateTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? dateTime});
}

/// @nodoc
class __$$MessageBubbleDataDateTimeImplCopyWithImpl<$Res>
    extends _$MessageBubbleDataCopyWithImpl<$Res,
        _$MessageBubbleDataDateTimeImpl>
    implements _$$MessageBubbleDataDateTimeImplCopyWith<$Res> {
  __$$MessageBubbleDataDateTimeImplCopyWithImpl(
      _$MessageBubbleDataDateTimeImpl _value,
      $Res Function(_$MessageBubbleDataDateTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_$MessageBubbleDataDateTimeImpl(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageBubbleDataDateTimeImpl implements MessageBubbleDataDateTime {
  const _$MessageBubbleDataDateTimeImpl({this.dateTime, final String? $type})
      : $type = $type ?? 'dateTime';

  factory _$MessageBubbleDataDateTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageBubbleDataDateTimeImplFromJson(json);

  @override
  final DateTime? dateTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageBubbleData.dateTime(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageBubbleDataDateTimeImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageBubbleDataDateTimeImplCopyWith<_$MessageBubbleDataDateTimeImpl>
      get copyWith => __$$MessageBubbleDataDateTimeImplCopyWithImpl<
          _$MessageBubbleDataDateTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? dateTime) dateTime,
    required TResult Function(String? message, DateTime? sentAt, bool isSender)
        text,
  }) {
    return dateTime(this.dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? dateTime)? dateTime,
    TResult? Function(String? message, DateTime? sentAt, bool isSender)? text,
  }) {
    return dateTime?.call(this.dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? dateTime)? dateTime,
    TResult Function(String? message, DateTime? sentAt, bool isSender)? text,
    required TResult orElse(),
  }) {
    if (dateTime != null) {
      return dateTime(this.dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageBubbleDataDateTime value) dateTime,
    required TResult Function(MessageBubbleDataText value) text,
  }) {
    return dateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageBubbleDataDateTime value)? dateTime,
    TResult? Function(MessageBubbleDataText value)? text,
  }) {
    return dateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageBubbleDataDateTime value)? dateTime,
    TResult Function(MessageBubbleDataText value)? text,
    required TResult orElse(),
  }) {
    if (dateTime != null) {
      return dateTime(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageBubbleDataDateTimeImplToJson(
      this,
    );
  }
}

abstract class MessageBubbleDataDateTime implements MessageBubbleData {
  const factory MessageBubbleDataDateTime({final DateTime? dateTime}) =
      _$MessageBubbleDataDateTimeImpl;

  factory MessageBubbleDataDateTime.fromJson(Map<String, dynamic> json) =
      _$MessageBubbleDataDateTimeImpl.fromJson;

  DateTime? get dateTime;
  @JsonKey(ignore: true)
  _$$MessageBubbleDataDateTimeImplCopyWith<_$MessageBubbleDataDateTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageBubbleDataTextImplCopyWith<$Res> {
  factory _$$MessageBubbleDataTextImplCopyWith(
          _$MessageBubbleDataTextImpl value,
          $Res Function(_$MessageBubbleDataTextImpl) then) =
      __$$MessageBubbleDataTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, DateTime? sentAt, bool isSender});
}

/// @nodoc
class __$$MessageBubbleDataTextImplCopyWithImpl<$Res>
    extends _$MessageBubbleDataCopyWithImpl<$Res, _$MessageBubbleDataTextImpl>
    implements _$$MessageBubbleDataTextImplCopyWith<$Res> {
  __$$MessageBubbleDataTextImplCopyWithImpl(_$MessageBubbleDataTextImpl _value,
      $Res Function(_$MessageBubbleDataTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? sentAt = freezed,
    Object? isSender = null,
  }) {
    return _then(_$MessageBubbleDataTextImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageBubbleDataTextImpl implements MessageBubbleDataText {
  const _$MessageBubbleDataTextImpl(
      {this.message, this.sentAt, this.isSender = true, final String? $type})
      : $type = $type ?? 'text';

  factory _$MessageBubbleDataTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageBubbleDataTextImplFromJson(json);

  @override
  final String? message;
  @override
  final DateTime? sentAt;
  @override
  @JsonKey()
  final bool isSender;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageBubbleData.text(message: $message, sentAt: $sentAt, isSender: $isSender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageBubbleDataTextImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isSender, isSender) ||
                other.isSender == isSender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, sentAt, isSender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageBubbleDataTextImplCopyWith<_$MessageBubbleDataTextImpl>
      get copyWith => __$$MessageBubbleDataTextImplCopyWithImpl<
          _$MessageBubbleDataTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? dateTime) dateTime,
    required TResult Function(String? message, DateTime? sentAt, bool isSender)
        text,
  }) {
    return text(message, sentAt, isSender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? dateTime)? dateTime,
    TResult? Function(String? message, DateTime? sentAt, bool isSender)? text,
  }) {
    return text?.call(message, sentAt, isSender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? dateTime)? dateTime,
    TResult Function(String? message, DateTime? sentAt, bool isSender)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(message, sentAt, isSender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageBubbleDataDateTime value) dateTime,
    required TResult Function(MessageBubbleDataText value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageBubbleDataDateTime value)? dateTime,
    TResult? Function(MessageBubbleDataText value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageBubbleDataDateTime value)? dateTime,
    TResult Function(MessageBubbleDataText value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageBubbleDataTextImplToJson(
      this,
    );
  }
}

abstract class MessageBubbleDataText implements MessageBubbleData {
  const factory MessageBubbleDataText(
      {final String? message,
      final DateTime? sentAt,
      final bool isSender}) = _$MessageBubbleDataTextImpl;

  factory MessageBubbleDataText.fromJson(Map<String, dynamic> json) =
      _$MessageBubbleDataTextImpl.fromJson;

  String? get message;
  DateTime? get sentAt;
  bool get isSender;
  @JsonKey(ignore: true)
  _$$MessageBubbleDataTextImplCopyWith<_$MessageBubbleDataTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}
