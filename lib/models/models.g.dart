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
      idBagianSkrinning: json['id_bagian_skrinning'] as int?,
      namaBagianSkrinning: json['nama_bagian'] as String?,
      soalJawab: json['soalJawab'] == null
          ? null
          : SoalJawab.fromJson(json['soalJawab'] as Map<String, dynamic>),
      skrinUser: json['skrinUser'] == null
          ? null
          : SkrinUser.fromJson(json['skrinUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailSkrinningImplToJson(
        _$DetailSkrinningImpl instance) =>
    <String, dynamic>{
      'id_bagian_skrinning': instance.idBagianSkrinning,
      'nama_bagian': instance.namaBagianSkrinning,
      'soalJawab': instance.soalJawab,
      'skrinUser': instance.skrinUser,
    };

_$SkrinUserImpl _$$SkrinUserImplFromJson(Map<String, dynamic> json) =>
    _$SkrinUserImpl(
      tglPengisian: json['tgl_pengisian'] == null
          ? null
          : DateTime.parse(json['tgl_pengisian'] as String),
      skrinningId: json['skrinning_id'] as int?,
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
      jawaban: json['jawaban'] == null
          ? null
          : Jawaban.fromJson(json['jawaban'] as Map<String, dynamic>),
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
      tglPengisian: json['tgl_pengisian'] == null
          ? null
          : DateTime.parse(json['tgl_pengisian'] as String),
      skrinningId: json['skrinning_id'] as int?,
      userId: json['user_id'] as int?,
      idUser: json['id_user'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      idSkrinning: json['id_skrinning'] as int?,
      jenisSkrinning: json['jenis_skrinning'] as String?,
      deskripsiSkrinning: json['deskripsi_skrinning'] as String?,
    );

Map<String, dynamic> _$$RiwayatSkrinningImplToJson(
        _$RiwayatSkrinningImpl instance) =>
    <String, dynamic>{
      'id_skrin_user': instance.idSkrinUser,
      'tgl_pengisian': instance.tglPengisian?.toIso8601String(),
      'skrinning_id': instance.skrinningId,
      'user_id': instance.userId,
      'id_user': instance.idUser,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'id_skrinning': instance.idSkrinning,
      'jenis_skrinning': instance.jenisSkrinning,
      'deskripsi_skrinning': instance.deskripsiSkrinning,
    };
