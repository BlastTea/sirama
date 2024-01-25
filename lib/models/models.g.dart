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
      jawabanAhli: json['jawabanAhli'] == null
          ? null
          : JawabanAhli.fromJson(json['jawabanAhli'] as Map<String, dynamic>),
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
      'jawabanAhli': instance.jawabanAhli,
    };

_$JawabanAhliImpl _$$JawabanAhliImplFromJson(Map<String, dynamic> json) =>
    _$JawabanAhliImpl(
      idJawabanAhli: json['id_jawaban_ahli'] as int?,
      penjawabUserId: json['penjawab_user_id'] as int?,
      tanyaAhliId: json['tanya_ahli_id'] as int?,
      jawabanAhli: json['jawaban_ahli'] as String?,
      waktuJawaban: json['waktu_jawaban'] == null
          ? null
          : DateTime.parse(json['waktu_jawaban'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      pertanyaan: json['pertanyaan'] as String?,
      penanyaUserId: json['penanya_user_id'] as int?,
      statusPertanyaan: _parseBool(json['status_pertanyaan']),
    );

Map<String, dynamic> _$$JawabanAhliImplToJson(_$JawabanAhliImpl instance) =>
    <String, dynamic>{
      'id_jawaban_ahli': instance.idJawabanAhli,
      'penjawab_user_id': instance.penjawabUserId,
      'tanya_ahli_id': instance.tanyaAhliId,
      'jawaban_ahli': instance.jawabanAhli,
      'waktu_jawaban': instance.waktuJawaban?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'pertanyaan': instance.pertanyaan,
      'penanya_user_id': instance.penanyaUserId,
      'status_pertanyaan': instance.statusPertanyaan,
    };

_$PodcastImpl _$$PodcastImplFromJson(Map<String, dynamic> json) =>
    _$PodcastImpl(
      idPodcast: json['id_podcast'] as int?,
      judulPodcast: json['judul_podcast'] as String?,
      linkPodcast: json['link_podcast'] as String?,
      tanggalUpload: json['tgl_upload'] == null
          ? null
          : DateTime.parse(json['tgl_upload'] as String),
      uploadUserId: json['upload_user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PodcastImplToJson(_$PodcastImpl instance) =>
    <String, dynamic>{
      'id_podcast': instance.idPodcast,
      'judul_podcast': instance.judulPodcast,
      'link_podcast': instance.linkPodcast,
      'tgl_upload': instance.tanggalUpload?.toIso8601String(),
      'upload_user_id': instance.uploadUserId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$FilmImpl _$$FilmImplFromJson(Map<String, dynamic> json) => _$FilmImpl(
      idFilm: json['id_film'] as int?,
      judulFilm: json['judul_film'] as String?,
      linkFilm: json['link_film'] as String?,
      tanggalUpload: json['tgl_upload'] == null
          ? null
          : DateTime.parse(json['tgl_upload'] as String),
      uploadUserId: json['upload_user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$FilmImplToJson(_$FilmImpl instance) =>
    <String, dynamic>{
      'id_film': instance.idFilm,
      'judul_film': instance.judulFilm,
      'link_film': instance.linkFilm,
      'tgl_upload': instance.tanggalUpload?.toIso8601String(),
      'upload_user_id': instance.uploadUserId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$InfografisImpl _$$InfografisImplFromJson(Map<String, dynamic> json) =>
    _$InfografisImpl(
      idiInfografis: json['id_infografis'] as int?,
      judulInfografis: json['judul_infografis'] as String?,
      deskripsiInfografis: json['deskripsi_infografis'] as String?,
      tanggalUpload: json['tgl_upload'] == null
          ? null
          : DateTime.parse(json['tgl_upload'] as String),
      gambarInfografis: json['gambar_infografis'] as String?,
      uploadUserId: json['upload_user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$InfografisImplToJson(_$InfografisImpl instance) =>
    <String, dynamic>{
      'id_infografis': instance.idiInfografis,
      'judul_infografis': instance.judulInfografis,
      'deskripsi_infografis': instance.deskripsiInfografis,
      'tgl_upload': instance.tanggalUpload?.toIso8601String(),
      'gambar_infografis': instance.gambarInfografis,
      'upload_user_id': instance.uploadUserId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
