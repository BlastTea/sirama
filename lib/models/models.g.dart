// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      idUser: json['id_user'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'username': instance.username,
      'email': instance.email,
      'role': instance.role,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$TopikPertanyaanImpl _$$TopikPertanyaanImplFromJson(
        Map<String, dynamic> json) =>
    _$TopikPertanyaanImpl(
      idJenisTopikPertanyaan: json['id_jenis_topik_pertanyaan'] as int?,
      namaTopik: json['nama_topik'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TopikPertanyaanImplToJson(
        _$TopikPertanyaanImpl instance) =>
    <String, dynamic>{
      'id_jenis_topik_pertanyaan': instance.idJenisTopikPertanyaan,
      'nama_topik': instance.namaTopik,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$TanyaAhliImpl _$$TanyaAhliImplFromJson(Map<String, dynamic> json) =>
    _$TanyaAhliImpl(
      idTanyaAhli: json['id_tanya_ahli'] as int?,
      topikId: json['topik_id'] as int?,
      penanyaUserId: json['penanya_user_id'],
      pertanyaan: json['pertanyaan'] as String?,
      statusPertanyaan: _parseBool(json['status_pertanyaan']),
      waktuTanya: json['waktu_tanya'] == null
          ? null
          : DateTime.parse(json['waktu_tanya'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TanyaAhliImplToJson(_$TanyaAhliImpl instance) =>
    <String, dynamic>{
      'id_tanya_ahli': instance.idTanyaAhli,
      'topik_id': instance.topikId,
      'penanya_user_id': instance.penanyaUserId,
      'pertanyaan': instance.pertanyaan,
      'status_pertanyaan': instance.statusPertanyaan,
      'waktu_tanya': instance.waktuTanya?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
