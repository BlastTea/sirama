// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      idUser: json['id_user'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'username': instance.username,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'userDetail': instance.userDetail,
    };

const _$UserRoleEnumMap = {
  UserRole.remaja: 'remaja',
  UserRole.orangTua: 'orangtua',
  UserRole.tenagaAhli: 'ahli',
  UserRole.kaderKesehatan: 'kader',
  UserRole.guru: 'guru',
  UserRole.superAdmin: 'superadmin',
};

_$RemajaImpl _$$RemajaImplFromJson(Map<String, dynamic> json) => _$RemajaImpl(
      idRemaja: json['id_remaja'] as int?,
      nama: json['nama'] as String?,
      noHp: json['no_hp'] as String?,
      tglLahir: json['tgl_lahir'] == null
          ? null
          : DateTime.parse(json['tgl_lahir'] as String),
      jenisKelamin: $enumDecodeNullable(_$GenderEnumMap, json['jenis_kelamin']),
      sekolah: json['sekolah'] as String?,
      fotoProfile: json['foto_profile'] as String?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$RemajaImplToJson(_$RemajaImpl instance) =>
    <String, dynamic>{
      'id_remaja': instance.idRemaja,
      'nama': instance.nama,
      'no_hp': instance.noHp,
      'tgl_lahir': instance.tglLahir?.toIso8601String(),
      'jenis_kelamin': _$GenderEnumMap[instance.jenisKelamin],
      'sekolah': instance.sekolah,
      'foto_profile': instance.fotoProfile,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
    };

const _$GenderEnumMap = {
  Gender.lakiLaki: 'L',
  Gender.perempuan: 'P',
};

_$OrangTuaImpl _$$OrangTuaImplFromJson(Map<String, dynamic> json) =>
    _$OrangTuaImpl(
      idOrangTua: json['id_orangtua'] as int?,
      nama: json['nama'] as String?,
      noHp: json['no_hp'] as String?,
      tingkatSekolahAnak: $enumDecodeNullable(
          _$SchoolLevelEnumMap, json['tingkat_sekolah_anak']),
      fotoProfile: json['foto_profile'] as String?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$OrangTuaImplToJson(_$OrangTuaImpl instance) =>
    <String, dynamic>{
      'id_orangtua': instance.idOrangTua,
      'nama': instance.nama,
      'no_hp': instance.noHp,
      'tingkat_sekolah_anak': _$SchoolLevelEnumMap[instance.tingkatSekolahAnak],
      'foto_profile': instance.fotoProfile,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
    };

const _$SchoolLevelEnumMap = {
  SchoolLevel.sd: 'SD',
  SchoolLevel.smp: 'SMP',
  SchoolLevel.sma: 'SMA',
};

_$TenagaAhliImpl _$$TenagaAhliImplFromJson(Map<String, dynamic> json) =>
    _$TenagaAhliImpl(
      idAhli: json['id_ahli'] as int?,
      nama: json['nama'] as String?,
      noHp: json['no_hp'] as String?,
      jenisAhli: $enumDecodeNullable(_$ExpertsTypeEnumMap, json['jenis_ahli']),
      deskripsiAhli: json['deskripsi_ahli'] as String?,
      fotoProfile: json['foto_profile'] as String?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$TenagaAhliImplToJson(_$TenagaAhliImpl instance) =>
    <String, dynamic>{
      'id_ahli': instance.idAhli,
      'nama': instance.nama,
      'no_hp': instance.noHp,
      'jenis_ahli': _$ExpertsTypeEnumMap[instance.jenisAhli],
      'deskripsi_ahli': instance.deskripsiAhli,
      'foto_profile': instance.fotoProfile,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
    };

const _$ExpertsTypeEnumMap = {
  ExpertsType.spesialisKeperawatanJiwa: 'Spesialis Keperawatan Jiwa',
  ExpertsType.spesialisKeperawatanAnak: 'Spesialis Keperawatan Anak',
  ExpertsType.psikolog: 'Psikolog',
  ExpertsType.psikiater: 'Psikiater',
};

_$KaderKesehatanImpl _$$KaderKesehatanImplFromJson(Map<String, dynamic> json) =>
    _$KaderKesehatanImpl(
      idKader: json['id_kader'] as int?,
      nama: json['nama'] as String?,
      noHp: json['no_hp'] as String?,
      usia: json['usia'] as int?,
      wilayahBinaan: json['wilayah_binaan'] as String?,
      fotoProfile: json['foto_profile'] as String?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$KaderKesehatanImplToJson(
        _$KaderKesehatanImpl instance) =>
    <String, dynamic>{
      'id_kader': instance.idKader,
      'nama': instance.nama,
      'no_hp': instance.noHp,
      'usia': instance.usia,
      'wilayah_binaan': instance.wilayahBinaan,
      'foto_profile': instance.fotoProfile,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
    };

_$GuruImpl _$$GuruImplFromJson(Map<String, dynamic> json) => _$GuruImpl(
      idGuru: json['id_guru'] as int?,
      nama: json['nama'] as String?,
      noHp: json['no_hp'] as String?,
      jenisGuru: json['jenis_guru'] as String?,
      sekolah: json['sekolah'] as String?,
      fotoProfile: json['foto_profile'] as String?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$GuruImplToJson(_$GuruImpl instance) =>
    <String, dynamic>{
      'id_guru': instance.idGuru,
      'nama': instance.nama,
      'no_hp': instance.noHp,
      'jenis_guru': instance.jenisGuru,
      'sekolah': instance.sekolah,
      'foto_profile': instance.fotoProfile,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
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
      fotoProfile: json['foto_profile'] as String?,
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
      'foto_profile': instance.fotoProfile,
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
      deksripsiPodcast: json['deskripsi'] as String?,
      totalLikes: _parseInt(json['total_likes']),
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
      'deskripsi': instance.deksripsiPodcast,
      'total_likes': instance.totalLikes,
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
      deksripsiFilm: json['deskripsi'] as String?,
      totalLikes: _parseInt(json['total_likes']),
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
      'deskripsi': instance.deksripsiFilm,
      'total_likes': instance.totalLikes,
    };

_$InfografisImpl _$$InfografisImplFromJson(Map<String, dynamic> json) =>
    _$InfografisImpl(
      idInfografis: json['id_infografis'] as int?,
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
      totalLikes: _parseInt(json['total_likes']),
    );

Map<String, dynamic> _$$InfografisImplToJson(_$InfografisImpl instance) =>
    <String, dynamic>{
      'id_infografis': instance.idInfografis,
      'judul_infografis': instance.judulInfografis,
      'deskripsi_infografis': instance.deskripsiInfografis,
      'tgl_upload': instance.tanggalUpload?.toIso8601String(),
      'gambar_infografis': instance.gambarInfografis,
      'upload_user_id': instance.uploadUserId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'total_likes': instance.totalLikes,
    };

_$VideoEdukasiImpl _$$VideoEdukasiImplFromJson(Map<String, dynamic> json) =>
    _$VideoEdukasiImpl(
      idVideoEdukasi: json['id_video_edukasi'] as int?,
      judulVideoEdukasi: json['judul_video_edukasi'] as String?,
      linkVideoEdukasi: json['link_video_edukasi'] as String?,
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
      deksripsiVideoEdukasi: json['deskripsi'] as String?,
      totalLikes: _parseInt(json['total_likes']),
    );

Map<String, dynamic> _$$VideoEdukasiImplToJson(_$VideoEdukasiImpl instance) =>
    <String, dynamic>{
      'id_video_edukasi': instance.idVideoEdukasi,
      'judul_video_edukasi': instance.judulVideoEdukasi,
      'link_video_edukasi': instance.linkVideoEdukasi,
      'tgl_upload': instance.tanggalUpload?.toIso8601String(),
      'upload_user_id': instance.uploadUserId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deskripsi': instance.deksripsiVideoEdukasi,
      'total_likes': instance.totalLikes,
    };

_$QuoteImpl _$$QuoteImplFromJson(Map<String, dynamic> json) => _$QuoteImpl(
      idQuote: json['id_quote'] as int?,
      namaQuote: json['nama_quote'] as String?,
      gambarQuote: json['gambar_quote'] as String?,
      uploadUserId: json['upload_user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$QuoteImplToJson(_$QuoteImpl instance) =>
    <String, dynamic>{
      'id_quote': instance.idQuote,
      'nama_quote': instance.namaQuote,
      'gambar_quote': instance.gambarQuote,
      'upload_user_id': instance.uploadUserId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$FavInfografisImpl _$$FavInfografisImplFromJson(Map<String, dynamic> json) =>
    _$FavInfografisImpl(
      idFavInfografis: json['id_fav_infografis'] as int?,
      idUser: json['user_id'] as int?,
      idInfografis: _parseInt(json['infografis_id']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      infografis: json['infografis'] == null
          ? null
          : Infografis.fromJson(json['infografis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavInfografisImplToJson(_$FavInfografisImpl instance) =>
    <String, dynamic>{
      'id_fav_infografis': instance.idFavInfografis,
      'user_id': instance.idUser,
      'infografis_id': instance.idInfografis,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'infografis': instance.infografis,
    };

_$FavFilmImpl _$$FavFilmImplFromJson(Map<String, dynamic> json) =>
    _$FavFilmImpl(
      idFavFilm: json['id_fav_film'] as int?,
      idUser: json['user_id'] as int?,
      idFilm: _parseInt(json['film_id']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      film: json['film'] == null
          ? null
          : Film.fromJson(json['film'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavFilmImplToJson(_$FavFilmImpl instance) =>
    <String, dynamic>{
      'id_fav_film': instance.idFavFilm,
      'user_id': instance.idUser,
      'film_id': instance.idFilm,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'film': instance.film,
    };

_$FavPodcastImpl _$$FavPodcastImplFromJson(Map<String, dynamic> json) =>
    _$FavPodcastImpl(
      idFavPodcast: json['id_fav_podcast'] as int?,
      idUser: json['user_id'] as int?,
      idPodcast: _parseInt(json['podcast_id']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      podcast: json['podcast'] == null
          ? null
          : Podcast.fromJson(json['podcast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavPodcastImplToJson(_$FavPodcastImpl instance) =>
    <String, dynamic>{
      'id_fav_podcast': instance.idFavPodcast,
      'user_id': instance.idUser,
      'podcast_id': instance.idPodcast,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'podcast': instance.podcast,
    };

_$FavVideoEdukasiImpl _$$FavVideoEdukasiImplFromJson(
        Map<String, dynamic> json) =>
    _$FavVideoEdukasiImpl(
      idFavVideoEdukasi: json['id_fav_video_edukasi'] as int?,
      idUser: json['user_id'] as int?,
      idVideoEdukasi: _parseInt(json['video_edukasi_id']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      videoEdukasi: json['videoEdukasi'] == null
          ? null
          : VideoEdukasi.fromJson(json['videoEdukasi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavVideoEdukasiImplToJson(
        _$FavVideoEdukasiImpl instance) =>
    <String, dynamic>{
      'id_fav_video_edukasi': instance.idFavVideoEdukasi,
      'user_id': instance.idUser,
      'video_edukasi_id': instance.idVideoEdukasi,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'videoEdukasi': instance.videoEdukasi,
    };

_$SkrinningImpl _$$SkrinningImplFromJson(Map<String, dynamic> json) =>
    _$SkrinningImpl(
      idSkrinning: json['id_skrinning'] as int?,
      jenisSkrinning: json['jenis_skrinning'] as String?,
      deskripsiSkrinning: json['deskripsi_skrinning'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SkrinningImplToJson(_$SkrinningImpl instance) =>
    <String, dynamic>{
      'id_skrinning': instance.idSkrinning,
      'jenis_skrinning': instance.jenisSkrinning,
      'deskripsi_skrinning': instance.deskripsiSkrinning,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$DetailSkrinningImpl _$$DetailSkrinningImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailSkrinningImpl(
      idBagianSkrinning: json['id_bagian_skrining'] as int?,
      namaBagianSkrinning: json['nama_bagian'] as String?,
      soalJawab: (json['soal_jawab'] as List<dynamic>?)
          ?.map((e) => SoalJawab.fromJson(e as Map<String, dynamic>))
          .toList(),
      skrinUser: json['skrinUser'] == null
          ? null
          : SkrinUser.fromJson(json['skrinUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailSkrinningImplToJson(
        _$DetailSkrinningImpl instance) =>
    <String, dynamic>{
      'id_bagian_skrining': instance.idBagianSkrinning,
      'nama_bagian': instance.namaBagianSkrinning,
      'soal_jawab': instance.soalJawab,
      'skrinUser': instance.skrinUser,
    };

_$SkrinUserImpl _$$SkrinUserImplFromJson(Map<String, dynamic> json) =>
    _$SkrinUserImpl(
      tglPengisian: json['tgl_pengisian'] == null
          ? null
          : DateTime.parse(json['tgl_pengisian'] as String),
      skrinningId: _parseInt(json['skrinning_id']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      idSkrinUser: json['id_skrin_user'] as int?,
    );

Map<String, dynamic> _$$SkrinUserImplToJson(_$SkrinUserImpl instance) =>
    <String, dynamic>{
      'tgl_pengisian': instance.tglPengisian?.toIso8601String(),
      'skrinning_id': instance.skrinningId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'id_skrin_user': instance.idSkrinUser,
    };

_$SoalJawabImpl _$$SoalJawabImplFromJson(Map<String, dynamic> json) =>
    _$SoalJawabImpl(
      idSoal: json['id_soal'] as int?,
      soal: json['soal'] as String?,
      jawaban: (json['jawaban'] as List<dynamic>?)
          ?.map((e) => Jawaban.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SoalJawabImplToJson(_$SoalJawabImpl instance) =>
    <String, dynamic>{
      'id_soal': instance.idSoal,
      'soal': instance.soal,
      'jawaban': instance.jawaban,
    };

_$JawabanImpl _$$JawabanImplFromJson(Map<String, dynamic> json) =>
    _$JawabanImpl(
      idJawabanSkrinning: json['id_jawaban_skrinning'] as int?,
      jawaban: json['jawaban'] as String?,
      poinJawaban: json['poin_jawaban'] as int?,
    );

Map<String, dynamic> _$$JawabanImplToJson(_$JawabanImpl instance) =>
    <String, dynamic>{
      'id_jawaban_skrinning': instance.idJawabanSkrinning,
      'jawaban': instance.jawaban,
      'poin_jawaban': instance.poinJawaban,
    };

_$RiwayatSkrinningImpl _$$RiwayatSkrinningImplFromJson(
        Map<String, dynamic> json) =>
    _$RiwayatSkrinningImpl(
      idSkrinUser: json['id_skrin_user'] as int?,
      idUser: json['id_user'] as int?,
      idSkrinning: json['id_skrinning'] as int?,
      idBagSkrinUser: json['id_bag_skrin_user'] as int?,
      tglPengisian: json['tgl_pengisian'] == null
          ? null
          : DateTime.parse(json['tgl_pengisian'] as String),
      jenisSkrinning: json['jenis_skrinning'] as String?,
      namaBagian: json['nama_bagian'] as String?,
      deskripsiSkrinning: json['deskripsi_skrinning'] as String?,
      jenisHasil: json['jenis_hasil'] as String?,
      hasil: json['hasil'] as String?,
      poinJawaban: json['poin_jawaban'] as int?,
    );

Map<String, dynamic> _$$RiwayatSkrinningImplToJson(
        _$RiwayatSkrinningImpl instance) =>
    <String, dynamic>{
      'id_skrin_user': instance.idSkrinUser,
      'id_user': instance.idUser,
      'id_skrinning': instance.idSkrinning,
      'id_bag_skrin_user': instance.idBagSkrinUser,
      'tgl_pengisian': instance.tglPengisian?.toIso8601String(),
      'jenis_skrinning': instance.jenisSkrinning,
      'nama_bagian': instance.namaBagian,
      'deskripsi_skrinning': instance.deskripsiSkrinning,
      'jenis_hasil': instance.jenisHasil,
      'hasil': instance.hasil,
      'poin_jawaban': instance.poinJawaban,
    };

_$DetailRiwayatSkrinningImpl _$$DetailRiwayatSkrinningImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailRiwayatSkrinningImpl(
      idSkrinning: json['id_skrinning'] as int?,
      idBagSkrinUser: json['id_bag_skrin_user'] as int?,
      jenisSkrinning: json['jenis_skrinning'] as String?,
      namaBagian: json['nama_bagian'] as String?,
      tglPengisian: json['tgl_pengisian'] == null
          ? null
          : DateTime.parse(json['tgl_pengisian'] as String),
      jenisHasil: json['jenis_hasil'] as String?,
      hasil: json['hasil'] as String?,
      pointotal: json['poin_total'] as String?,
      soalJawab: (json['soal_jawab'] as List<dynamic>?)
          ?.map((e) => SoalJawabRiwayat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailRiwayatSkrinningImplToJson(
        _$DetailRiwayatSkrinningImpl instance) =>
    <String, dynamic>{
      'id_skrinning': instance.idSkrinning,
      'id_bag_skrin_user': instance.idBagSkrinUser,
      'jenis_skrinning': instance.jenisSkrinning,
      'nama_bagian': instance.namaBagian,
      'tgl_pengisian': instance.tglPengisian?.toIso8601String(),
      'jenis_hasil': instance.jenisHasil,
      'hasil': instance.hasil,
      'poin_total': instance.pointotal,
      'soal_jawab': instance.soalJawab,
    };

_$SoalJawabRiwayatImpl _$$SoalJawabRiwayatImplFromJson(
        Map<String, dynamic> json) =>
    _$SoalJawabRiwayatImpl(
      noSoal: json['no_soal'] as int?,
      soal: json['soal'] as String?,
      jawaban: json['jawaban'] as String?,
      poinJawaban: json['poin_jawaban'] as int?,
    );

Map<String, dynamic> _$$SoalJawabRiwayatImplToJson(
        _$SoalJawabRiwayatImpl instance) =>
    <String, dynamic>{
      'no_soal': instance.noSoal,
      'soal': instance.soal,
      'jawaban': instance.jawaban,
      'poin_jawaban': instance.poinJawaban,
    };

_$HasilSkrinningImpl _$$HasilSkrinningImplFromJson(Map<String, dynamic> json) =>
    _$HasilSkrinningImpl(
      jenisHasil: json['jenis_hasil'] as String?,
      deskripsi: json['deskripsi'] as String?,
      poin: json['poin'] as String?,
    );

Map<String, dynamic> _$$HasilSkrinningImplToJson(
        _$HasilSkrinningImpl instance) =>
    <String, dynamic>{
      'jenis_hasil': instance.jenisHasil,
      'deskripsi': instance.deskripsi,
      'poin': instance.poin,
    };

_$RoomChatMeImpl _$$RoomChatMeImplFromJson(Map<String, dynamic> json) =>
    _$RoomChatMeImpl(
      idRoomChatMe: json['id_room_chat_me'] as int?,
      remajaUserId: json['remaja_user_id'] as int?,
      guruUserId: json['guru_user_id'] as int?,
      nama: json['nama'] as String?,
      fotoProfile: json['foto_profile'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      riwayats: (json['riwayats'] as List<dynamic>?)
          ?.map((e) => RiwayatChatMe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomChatMeImplToJson(_$RoomChatMeImpl instance) =>
    <String, dynamic>{
      'id_room_chat_me': instance.idRoomChatMe,
      'remaja_user_id': instance.remajaUserId,
      'guru_user_id': instance.guruUserId,
      'nama': instance.nama,
      'foto_profile': instance.fotoProfile,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'riwayats': instance.riwayats,
    };

_$RiwayatChatMeImpl _$$RiwayatChatMeImplFromJson(Map<String, dynamic> json) =>
    _$RiwayatChatMeImpl(
      idRiwayatChat: json['id_riwayat_chat'] as int?,
      pesan: json['pesan'] as String?,
      userId: json['user_id'] as int?,
      tglChat: json['tgl_chat'] == null
          ? null
          : DateTime.parse(json['tgl_chat'] as String),
      waktuChat: json['waktu_chat'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      roomChatId: json['room_chat_id'] as int?,
    );

Map<String, dynamic> _$$RiwayatChatMeImplToJson(_$RiwayatChatMeImpl instance) =>
    <String, dynamic>{
      'id_riwayat_chat': instance.idRiwayatChat,
      'pesan': instance.pesan,
      'user_id': instance.userId,
      'tgl_chat': instance.tglChat?.toIso8601String(),
      'waktu_chat': instance.waktuChat,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'room_chat_id': instance.roomChatId,
    };

_$JadwalAhliImpl _$$JadwalAhliImplFromJson(Map<String, dynamic> json) =>
    _$JadwalAhliImpl(
      idJadwalAhli: json['id_jadwal_ahli'] as int?,
      ahliUserId: json['ahli_user_id'] as int?,
      jamMulai: json['jam_mulai'] == null
          ? null
          : DateTime.parse(json['jam_mulai'] as String),
      jamBerakhir: json['jam_berakhir'] == null
          ? null
          : DateTime.parse(json['jam_berakhir'] as String),
      idAhli: json['id_ahli'] as int?,
      nama: json['nama'] as String?,
      noHp: json['no_hp'] as String?,
      jenisAhli: json['jenis_ahli'] as String?,
      deskripsiAhli: json['deskripsi_ahli'] as String?,
      fotoProfile: json['foto_profile'] as String?,
      userId: json['user_id'] as int?,
      detailPendidikanAhli: (json['detailPendidikanAhli'] as List<dynamic>?)
          ?.map((e) => DetailPendidikanAhli.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JadwalAhliImplToJson(_$JadwalAhliImpl instance) =>
    <String, dynamic>{
      'id_jadwal_ahli': instance.idJadwalAhli,
      'ahli_user_id': instance.ahliUserId,
      'jam_mulai': instance.jamMulai?.toIso8601String(),
      'jam_berakhir': instance.jamBerakhir?.toIso8601String(),
      'id_ahli': instance.idAhli,
      'nama': instance.nama,
      'no_hp': instance.noHp,
      'jenis_ahli': instance.jenisAhli,
      'deskripsi_ahli': instance.deskripsiAhli,
      'foto_profile': instance.fotoProfile,
      'user_id': instance.userId,
      'detailPendidikanAhli': instance.detailPendidikanAhli,
    };

_$DetailPendidikanAhliImpl _$$DetailPendidikanAhliImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailPendidikanAhliImpl(
      idRiwayatpendAhli: json['id_riwayatpend_ahli'] as int?,
      riwayatPendidikan: json['riwayat_pendidikan'] as String?,
    );

Map<String, dynamic> _$$DetailPendidikanAhliImplToJson(
        _$DetailPendidikanAhliImpl instance) =>
    <String, dynamic>{
      'id_riwayatpend_ahli': instance.idRiwayatpendAhli,
      'riwayat_pendidikan': instance.riwayatPendidikan,
    };

_$MessageBubbleDataDateTimeImpl _$$MessageBubbleDataDateTimeImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageBubbleDataDateTimeImpl(
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MessageBubbleDataDateTimeImplToJson(
        _$MessageBubbleDataDateTimeImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$MessageBubbleDataTextImpl _$$MessageBubbleDataTextImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageBubbleDataTextImpl(
      message: json['message'] as String?,
      sentAt: json['sentAt'] == null
          ? null
          : DateTime.parse(json['sentAt'] as String),
      isSender: json['isSender'] as bool? ?? true,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MessageBubbleDataTextImplToJson(
        _$MessageBubbleDataTextImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sentAt': instance.sentAt?.toIso8601String(),
      'isSender': instance.isSender,
      'runtimeType': instance.$type,
    };
