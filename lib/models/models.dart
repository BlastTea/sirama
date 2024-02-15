import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

bool? _parseBool(dynamic data) => data is int? && data != null
    ? data == 1
    : data is bool
        ? data
        : null;

int? _parseInt(dynamic data) => data is String? && data != null
    ? int.tryParse(data) ?? 0
    : data is int
        ? data
        : 0;

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

@unfreezed
class PodcastVideo with _$PodcastVideo {
  factory PodcastVideo({
    @JsonKey(name: 'id_podcast') int? idPodcast,
    @JsonKey(name: 'judul_podcast') String? judulPodcast,
    @JsonKey(name: 'link_podcast') String? linkPodcast,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deskripsi') String? deksripsiPodcast,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
    @JsonKey(includeFromJson: false, includeToJson: false) List<int>? thumbnailImageData,
  }) = _PodcastVideo;

  factory PodcastVideo.fromJson(Map<String, dynamic> json) => _$PodcastVideoFromJson(json);
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
    @JsonKey(name: 'deskripsi') String? deksripsiFilm,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
    @JsonKey(includeFromJson: false, includeToJson: false) List<int>? thumbnailImageData,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}

@freezed
class Infografis with _$Infografis {
  factory Infografis({
    @JsonKey(name: 'id_infografis') int? idInfografis,
    @JsonKey(name: 'judul_infografis') String? judulInfografis,
    @JsonKey(name: 'deskripsi_infografis') String? deskripsiInfografis,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'gambar_infografis') String? gambarInfografis,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
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
    @JsonKey(name: 'deskripsi') String? deksripsiVideoEdukasi,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
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

@unfreezed
class FavInfografis with _$FavInfografis {
  factory FavInfografis({
    @JsonKey(name: 'id_fav_infografis') int? idFavInfografis,
    @JsonKey(name: 'user_id') int? idUser,
    @JsonKey(name: 'infografis_id') int? idInfografis,
    @JsonKey(name: 'judul_infografis') String? judulInfografis,
    @JsonKey(name: 'deskripsi_infografis') String? deskripsiInfografis,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'gambar_infografis') String? gambarInfografis,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false) List<int>? thumbnailImageData,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
  }) = _FavInfografis;

  factory FavInfografis.fromJson(Map<String, dynamic> json) => _$FavInfografisFromJson(json);
}

@unfreezed
class FavFilmVideo with _$FavFilmVideo {
  factory FavFilmVideo({
    @JsonKey(name: 'id_fav_film') int? idFavFilm,
    @JsonKey(name: 'user_id') int? idUser,
    @JsonKey(name: 'film_id') int? idFilm,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false) List<int>? thumbnailImageData,
    Film? film,
  }) = _FavFilmVideo;

  factory FavFilmVideo.fromJson(Map<String, dynamic> json) => _$FavFilmVideoFromJson(json);
}

@unfreezed
class FavPodcastVideo with _$FavPodcastVideo {
  factory FavPodcastVideo({
    @JsonKey(name: 'id_fav_podcast') int? idFavPodcast,
    @JsonKey(name: 'user_id') int? idUser,
    @JsonKey(name: 'podcast_id') int? idPodcast,
    @JsonKey(name: 'judul_podcast') String? judulPodcast,
    @JsonKey(name: 'link_podcast') String? linkPodcast,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'deskripsi') String? deksripsiPodcast,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false) List<int>? thumbnailImageData,
  }) = _FavPodcastVideo;

  factory FavPodcastVideo.fromJson(Map<String, dynamic> json) => _$FavPodcastVideoFromJson(json);
}

@unfreezed
class FavVideoEdukasi with _$FavVideoEdukasi {
  factory FavVideoEdukasi({
    @JsonKey(name: 'id_fav_video_edukasi') int? idFavVideoEdukasi,
    @JsonKey(name: 'user_id') int? idUser,
    @JsonKey(name: 'video_edukasi_id') int? idVideoEdukasi,
    @JsonKey(name: 'judul_video_edukasi') String? judulVideoEdukasi,
    @JsonKey(name: 'link_video_edukasi') String? linkVideoEdukasi,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'deskripsi') String? deksripsiVideoEdukasi,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false) List<int>? thumbnailImageData,
  }) = _FavVideoEdukasi;

  factory FavVideoEdukasi.fromJson(Map<String, dynamic> json) => _$FavVideoEdukasiFromJson(json);
}

enum UserRole {
  remaja,
  @JsonValue('orangtua')
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
  @JsonValue('L')
  lakiLaki,
  @JsonValue('P')
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

enum SchoolLevel {
  @JsonValue('SD')
  sd,
  @JsonValue('SMP')
  smp,
  @JsonValue('SMA')
  sma;

  String get text => switch (this) {
        sd => 'SD',
        smp => 'SMP',
        sma => 'SMA',
      };

  String get serverValue => switch (this) {
        sd => 'SD',
        smp => 'SMP',
        sma => 'SMA',
      };
}

enum ExpertsType {
  @JsonValue('Spesialis Keperawatan Jiwa')
  spesialisKeperawatanJiwa,
  @JsonValue('Spesialis Keperawatan Anak')
  spesialisKeperawatanAnak,
  @JsonValue('Psikolog')
  psikolog,
  @JsonValue('Psikiater')
  psikiater;

  String get text => switch (this) {
        spesialisKeperawatanJiwa => 'Spesialis Keperawatan Jiwa',
        spesialisKeperawatanAnak => 'Spesialis Keperawatan Anak',
        psikolog => 'Psikolog',
        psikiater => 'Psikiater',
      };

  String get serverValue => switch (this) {
        spesialisKeperawatanJiwa => 'Spesialis Keperawatan Jiwa',
        spesialisKeperawatanAnak => 'Spesialis Keperawatan Anak',
        psikolog => 'Psikolog',
        psikiater => 'Psikiater',
      };
}

enum InvalidType {
  none,
  usernameIsStillEmpty,
  emailIsStillEmpty,
  passwordIsStillEmpty,
  nameIsStillEmpty,
  phoneNumberIsStillEmpty,
  phoneNumberIsNotValid,
  schoolIsStillEmpty,
  descriptionIsStillEmpty,
  ageIsStillEmpty,
  builtAreaIsStillEmpty;

  String get text => switch (this) {
        usernameIsStillEmpty => 'Username masih kosong',
        emailIsStillEmpty => 'Email masih kosong',
        passwordIsStillEmpty => 'Password masih kosong',
        nameIsStillEmpty => 'Nama masih kosong',
        phoneNumberIsStillEmpty => 'Nomor Handphone masih kosong',
        phoneNumberIsNotValid => 'Nomor Handphone tidak valid',
        schoolIsStillEmpty => 'Sekolah masih kosong',
        descriptionIsStillEmpty => 'Deskripsi masih kosong',
        ageIsStillEmpty => 'Umur masih kosong',
        builtAreaIsStillEmpty => 'Wilayah Binaan masih kosong',
        _ => '',
      };
}
