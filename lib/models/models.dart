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

@unfreezed
class TanyaAhli with _$TanyaAhli {
  factory TanyaAhli({
    @JsonKey(name: 'id_tanya_ahli') int? idTanyaAhli,
    @JsonKey(name: 'topik_id') int? topikId,
    @JsonKey(name: 'penanya_user_id') penanyaUserId,
    String? pertanyaan,
    @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool) bool? statusPertanyaan,
    @JsonKey(name: 'waktu_tanya') DateTime? waktuTanya,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    JawabanAhli? jawabanAhli,
  }) = _TanyaAhli;

  factory TanyaAhli.fromJson(Map<String, dynamic> json) => _$TanyaAhliFromJson(json);
}

@freezed
class JawabanAhli with _$JawabanAhli {
  const factory JawabanAhli({
    @JsonKey(name: 'id_jawaban_ahli') int? idJawabanAhli,
    @JsonKey(name: 'penjawab_user_id') int? penjawabUserId,
    @JsonKey(name: 'tanya_ahli_id') int? tanyaAhliId,
    @JsonKey(name: 'jawaban_ahli') String? jawabanAhli,
    @JsonKey(name: 'waktu_jawaban') DateTime? waktuJawaban,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? pertanyaan,
    @JsonKey(name: 'penanya_user_id') int? penanyaUserId,
    @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool) bool? statusPertanyaan,
  }) = _JawabanAhli;

  factory JawabanAhli.fromJson(Map<String, dynamic> json) => _$JawabanAhliFromJson(json);
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

@unfreezed
class Film with _$Film {
  factory Film({
    @JsonKey(name: 'id_film') int? idFilm,
    @JsonKey(name: 'judul_film') String? judulFilm,
    @JsonKey(name: 'link_film') String? linkFilm,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false) List<int>? thumbnailImageData,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}

@freezed
class Infografis with _$Infografis {
  const factory Infografis({
    @JsonKey(name: 'id_infografis') int? idInfografis,
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

@unfreezed
class EducationalVideo with _$EducationalVideo {
  factory EducationalVideo({
    @JsonKey(name: 'id_video_edukasi') int? idVideoEdukasi,
    @JsonKey(name: 'judul_video_edukasi') String? judulVideoEdukasi,
    @JsonKey(name: 'link_video_edukasi') String? linkVideoEdukasi,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false) List<int>? thumbnailImageData,
  }) = _EducationalVideo;

  factory EducationalVideo.fromJson(Map<String, dynamic> json) => _$EducationalVideoFromJson(json);
}

@freezed
class Quote with _$Quote {
  const factory Quote({
    @JsonKey(name: 'id_quote') int? idQuote,
    @JsonKey(name: 'nama_quote') String? namaQuote,
    @JsonKey(name: 'gambar_quote') String? gambarQuote,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}

enum UserRole {
  remaja,
  orangTua,
  @JsonValue('ahli')
  tenagaAhli,
  @JsonValue('kader')
  kaderKesehatan,
  guru;

  String get text => switch (this) {
        remaja => 'Remaja',
        orangTua => 'Orang Tua',
        tenagaAhli => 'Tenaga Ahli',
        kaderKesehatan => 'Kader Kesehatan',
        guru => 'Guru',
      };

  String get serverValue => switch (this) {
        remaja => 'remaja',
        orangTua => 'orangtua',
        tenagaAhli => 'ahli',
        kaderKesehatan => 'kader',
        guru => 'guru',
      };
}

enum Gender {
  lakiLaki,
  perempuan;

  String get text => switch (this) {
        lakiLaki => 'Laki-Laki',
        perempuan => 'Perempuan',
      };

  String get serverValue => switch (this) {
        lakiLaki => 'L',
        perempuan => 'P',
      };
}
