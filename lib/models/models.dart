import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

bool? _parseBool(dynamic data) => data is int? && data != null
    ? (data == 1)
    : data is bool
        ? data
        : null;

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id_user') int? idUser,
    String? username,
    String? email,
    String? role,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class TopikPertanyaan with _$TopikPertanyaan {
  const factory TopikPertanyaan({
    @JsonKey(name: 'id_jenis_topik_pertanyaan') int? idJenisTopikPertanyaan,
    @JsonKey(name: 'nama_topik') String? namaTopik,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TopikPertanyaan;

  factory TopikPertanyaan.fromJson(Map<String, dynamic> json) => _$TopikPertanyaanFromJson(json);
}

@freezed
class TanyaAhli with _$TanyaAhli {
  const factory TanyaAhli({
    @JsonKey(name: 'id_tanya_ahli') int? idTanyaAhli,
    @JsonKey(name: 'topik_id') int? topikId,
    @JsonKey(name: 'penanya_user_id') penanyaUserId,
    String? pertanyaan,
    @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool) bool? statusPertanyaan,
    @JsonKey(name: 'waktu_tanya') DateTime? waktuTanya,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TanyaAhli;

  factory TanyaAhli.fromJson(Map<String, dynamic> json) => _$TanyaAhliFromJson(json);
}

@freezed
class Podcast with _$Podcast {
  const factory Podcast({
    @JsonKey(name: 'id_podcast') int? idPodcast,
    @JsonKey(name: 'judul_podcast') String? judulPodcast,
    @JsonKey(name: 'link_podcast') String? linkPodcast,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Podcast;

  factory Podcast.fromJson(Map<String, dynamic> json) => _$PodcastFromJson(json);
}

@freezed
class Film with _$Film {
  const factory Film({
    @JsonKey(name: 'id_film') int? idFilm,
    @JsonKey(name: 'judul_film') String? judulFilm,
    @JsonKey(name: 'link_film') String? linkFilm,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}

@freezed
class Infografis with _$Infografis {
  const factory Infografis({
    @JsonKey(name: 'id_infografis') int? idiInfografis,
    @JsonKey(name: 'judul_infografis') String? judulInfografis,
    @JsonKey(name: 'deskripsi_infografis') String? deskripsiInfografis,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'gambar_infografis') String? gambarInfografis,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Infografis;

  factory Infografis.fromJson(Map<String, dynamic> json) => _$InfografisFromJson(json);
}
