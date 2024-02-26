import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sirama/utils/utils.dart';

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

  factory TopikPertanyaan.fromJson(Map<String, dynamic> json) =>
      _$TopikPertanyaanFromJson(json);
}

@unfreezed
class TanyaAhli with _$TanyaAhli {
  factory TanyaAhli({
    @JsonKey(name: 'id_tanya_ahli') int? idTanyaAhli,
    @JsonKey(name: 'topik_id') int? topikId,
    @JsonKey(name: 'penanya_user_id') penanyaUserId,
    String? pertanyaan,
    @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
    bool? statusPertanyaan,
    @JsonKey(name: 'waktu_tanya') DateTime? waktuTanya,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    JawabanAhli? jawabanAhli,
  }) = _TanyaAhli;

  factory TanyaAhli.fromJson(Map<String, dynamic> json) =>
      _$TanyaAhliFromJson(json);
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
    @JsonKey(name: 'status_pertanyaan', fromJson: _parseBool)
    bool? statusPertanyaan,
  }) = _JawabanAhli;

  factory JawabanAhli.fromJson(Map<String, dynamic> json) =>
      _$JawabanAhliFromJson(json);
}

@unfreezed
class Podcast with _$Podcast {
  factory Podcast({
    @JsonKey(name: 'id_podcast') int? idPodcast,
    @JsonKey(name: 'judul_podcast') String? judulPodcast,
    @JsonKey(name: 'link_podcast') String? linkPodcast,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deskripsi') String? deksripsiPodcast,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
    @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
    @Default(false)
    bool isFavorited,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<int>? thumbnailImageData,
  }) = _Podcast;

  factory Podcast.fromJson(Map<String, dynamic> json) =>
      _$PodcastFromJson(json);
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
    @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
    @Default(false)
    bool isFavorited,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<int>? thumbnailImageData,
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
    @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
    @Default(false)
    bool isFavorited,
  }) = _Infografis;

  factory Infografis.fromJson(Map<String, dynamic> json) =>
      _$InfografisFromJson(json);
}

@unfreezed
class VideoEdukasi with _$VideoEdukasi {
  factory VideoEdukasi({
    @JsonKey(name: 'id_video_edukasi') int? idVideoEdukasi,
    @JsonKey(name: 'judul_video_edukasi') String? judulVideoEdukasi,
    @JsonKey(name: 'link_video_edukasi') String? linkVideoEdukasi,
    @JsonKey(name: 'tgl_upload') DateTime? tanggalUpload,
    @JsonKey(name: 'upload_user_id') int? uploadUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deskripsi') String? deksripsiVideoEdukasi,
    @JsonKey(name: 'total_likes', fromJson: _parseInt) int? totalLikes,
    @JsonKey(name: 'is_favorited', includeFromJson: false, includeToJson: false)
    @Default(false)
    bool isFavorited,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<int>? thumbnailImageData,
  }) = _VideoEdukasi;

  factory VideoEdukasi.fromJson(Map<String, dynamic> json) =>
      _$VideoEdukasiFromJson(json);
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
    @JsonKey(name: 'infografis_id', fromJson: _parseInt) int? idInfografis,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<int>? thumbnailImageData,
    Infografis? infografis,
  }) = _FavInfografis;

  factory FavInfografis.fromJson(Map<String, dynamic> json) =>
      _$FavInfografisFromJson(json);
}

@unfreezed
class FavFilm with _$FavFilm {
  factory FavFilm({
    @JsonKey(name: 'id_fav_film') int? idFavFilm,
    @JsonKey(name: 'user_id') int? idUser,
    @JsonKey(name: 'film_id', fromJson: _parseInt) int? idFilm,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<int>? thumbnailImageData,
    Film? film,
  }) = _FavFilm;

  factory FavFilm.fromJson(Map<String, dynamic> json) =>
      _$FavFilmFromJson(json);
}

@unfreezed
class FavPodcast with _$FavPodcast {
  factory FavPodcast({
    @JsonKey(name: 'id_fav_podcast') int? idFavPodcast,
    @JsonKey(name: 'user_id') int? idUser,
    @JsonKey(name: 'podcast_id', fromJson: _parseInt) int? idPodcast,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<int>? thumbnailImageData,
    Podcast? podcast,
  }) = _FavPodcast;

  factory FavPodcast.fromJson(Map<String, dynamic> json) =>
      _$FavPodcastFromJson(json);
}

@unfreezed
class FavVideoEdukasi with _$FavVideoEdukasi {
  factory FavVideoEdukasi({
    @JsonKey(name: 'id_fav_video_edukasi') int? idFavVideoEdukasi,
    @JsonKey(name: 'user_id') int? idUser,
    @JsonKey(name: 'video_edukasi_id', fromJson: _parseInt) int? idVideoEdukasi,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<int>? thumbnailImageData,
    VideoEdukasi? videoEdukasi,
  }) = _FavVideoEdukasi;

  factory FavVideoEdukasi.fromJson(Map<String, dynamic> json) =>
      _$FavVideoEdukasiFromJson(json);
}

@unfreezed
class Skrinning with _$Skrinning {
  factory Skrinning({
    @JsonKey(name: 'id_skrinning') int? idSkrinning,
    @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
    @JsonKey(name: 'deskripsi_skrinning') String? deskripsiSkrinning,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Skrinning;

  factory Skrinning.fromJson(Map<String, dynamic> json) =>
      _$SkrinningFromJson(json);
}

@unfreezed
class DetailSkrinning with _$DetailSkrinning {
  factory DetailSkrinning({
    @JsonKey(name: 'id_bagian_skrinning') int? idBagianSkrinning,
    @JsonKey(name: 'nama_bagian') String? namaBagianSkrinning,
    @JsonKey(name: 'soal_jawab') List<SoalJawab>? soalJawab,
    SkrinUser? skrinUser,
  }) = _DetailSkrinning;

  factory DetailSkrinning.fromJson(Map<String, dynamic> json) =>
      _$DetailSkrinningFromJson(json);
}

@unfreezed
class SkrinUser with _$SkrinUser {
  factory SkrinUser({
    @JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
    @JsonKey(name: 'skrinning_id') int? skrinningId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'id_skrin_user') int? idSkrinUser,
  }) = _SkrinUser;

  factory SkrinUser.fromJson(Map<String, dynamic> json) =>
      _$SkrinUserFromJson(json);
}

@unfreezed
class SoalJawab with _$SoalJawab {
  factory SoalJawab({
    @JsonKey(name: 'id_soal') int? idSoal,
    @JsonKey(name: 'soal') String? soal,
    List<Jawaban>? jawaban,
  }) = _SoalJawab;

  factory SoalJawab.fromJson(Map<String, dynamic> json) =>
      _$SoalJawabFromJson(json);
}

@unfreezed
class Jawaban with _$Jawaban {
  factory Jawaban({
    @JsonKey(name: 'id_jawaban_skrinning') int? idJawabanSkrinning,
    @JsonKey(name: 'jawaban') String? jawaban,
    @JsonKey(name: 'poin_jawaban') int? poinJawaban,
  }) = _Jawaban;

  factory Jawaban.fromJson(Map<String, dynamic> json) =>
      _$JawabanFromJson(json);
}

@unfreezed
class RiwayatSkrinning with _$RiwayatSkrinning {
  factory RiwayatSkrinning({
    @JsonKey(name: 'id_skrin_user') int? idSkrinUser,
    @JsonKey(name: 'id_user') int? idUser,
    @JsonKey(name: 'id_skrinning') int? idSkrinning,
    @JsonKey(name: 'id_bag_skrin_user') int? idBagSkrinUser,
    @JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
    @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
    @JsonKey(name: 'nama_bagian') String? namaBagian,
    @JsonKey(name: 'deskripsi_skrinning') String? deskripsiSkrinning,
    @JsonKey(name: 'jenis_hasil') String? jenisHasil,
    @JsonKey(name: 'hasil') String? hasil,
    @JsonKey(name: 'poin_jawaban') int? poinJawaban,
  }) = _RiwayatSkrinning;

  factory RiwayatSkrinning.fromJson(Map<String, dynamic> json) =>
      _$RiwayatSkrinningFromJson(json);
}

@unfreezed
class DetailRiwayatSkrinning with _$DetailRiwayatSkrinning {
  factory DetailRiwayatSkrinning({
    @JsonKey(name: 'id_skrinning') int? idSkrinning,
    @JsonKey(name: 'id_bag_skrin_user') int? idBagSkrinUser,
    @JsonKey(name: 'jenis_skrinning') String? jenisSkrinning,
    @JsonKey(name: 'nama_bagian') String? namaBagian,
    @JsonKey(name: 'tgl_pengisian') DateTime? tglPengisian,
    @JsonKey(name: 'jenis_hasil') String? jenisHasil,
    @JsonKey(name: 'hasil') String? hasil,
    @JsonKey(name: 'poin_total') String? pointotal,
    List<SoalJawabRiwayat>? soalJawab,
  }) = _DetailRiwayatSkrinning;

  factory DetailRiwayatSkrinning.fromJson(Map<String, dynamic> json) =>
      _$DetailRiwayatSkrinningFromJson(json);
}

@unfreezed
class SoalJawabRiwayat with _$SoalJawabRiwayat {
  factory SoalJawabRiwayat({
    @JsonKey(name: 'no_soal') int? noSoal,
    @JsonKey(name: 'soal') String? soal,
    @JsonKey(name: 'jawaban') String? jawaban,
    @JsonKey(name: 'poin_jawaban') int? poinJawaban,
  }) = _SoalJawabRiwayat;

  factory SoalJawabRiwayat.fromJson(Map<String, dynamic> json) => _$SoalJawabRiwayatFromJson(json);
}

@unfreezed
class RoomChatMe with _$RoomChatMe {
  factory RoomChatMe({
    @JsonKey(name: 'id_room_chat_me') int? idRoomChatMe,
    @JsonKey(name: 'remaja_user_id') int? remajaUserId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<RiwayatChatMe>? riwayats,
  }) = _RoomChatMe;

  factory RoomChatMe.fromJson(Map<String, dynamic> json) =>
      _$RoomChatMeFromJson(json);
}

@freezed
class RiwayatChatMe with _$RiwayatChatMe {
  const factory RiwayatChatMe({
    @JsonKey(name: 'id_riwayat_chat') int? idRiwayatChat,
    String? pesan,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'tgl_chat') DateTime? tglChat,
    @JsonKey(name: 'waktu_chat') String? waktuChat,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'room_chat_id') int? roomChatId,
  }) = _RiwayatChatMe;

  factory RiwayatChatMe.fromJson(Map<String, dynamic> json) =>
      _$RiwayatChatMeFromJson(json);
}

@freezed
class MessageBubbleList with _$MessageBubbleList {
  const factory MessageBubbleList(
      {required List<List<MessageBubbleData>> data}) = _MessageBubbleList;

  factory MessageBubbleList.fromRoom({required List<RoomChatMe> rooms}) {
    List<List<MessageBubbleData>> results = [];

    for (RoomChatMe room in rooms) {
      List<MessageBubbleData> messageBubbles = [];
      DateTime? lastDate;

      for (RiwayatChatMe riwayat in room.riwayats ?? []) {
        // Parse tanggal chat dari riwayat ke objek DateTime
        DateTime currentChatDate = riwayat.tglChat!;

        // Jika ini adalah pesan pertama atau tanggalnya berbeda dari pesan terakhir,
        // tambahkan MessageBubbleData.dateTime
        if ((lastDate == null || currentChatDate.day != lastDate.day) &&
            messageBubbles.isNotEmpty)
          messageBubbles
              .add(MessageBubbleData.dateTime(dateTime: currentChatDate));

        // Tambahkan MessageBubbleData.text untuk pesan saat ini
        messageBubbles.add(MessageBubbleData.text(
          message: riwayat.pesan,
          sentAt: riwayat.createdAt!,
          // Anda mungkin ingin menentukan apakah pengguna adalah pengirim atau penerima
          // isSender bisa di-set berdasarkan id pengguna atau kriteria lain
          isSender: riwayat.userId ==
              currentUser?.idUser, // Contoh, perlu logika untuk menentukan ini
        ));

        // Perbarui tanggal pesan terakhir
        lastDate = currentChatDate;
      }

      // Tambahkan pesan dari room saat ini ke hasil
      if (messageBubbles.isNotEmpty) {
        results.add(messageBubbles);
      }
    }

    return MessageBubbleList(data: results);
  }
}

@freezed
sealed class MessageBubbleData with _$MessageBubbleData {
  const factory MessageBubbleData.dateTime({
    DateTime? dateTime,
  }) = MessageBubbleDataDateTime;

  const factory MessageBubbleData.text({
    String? message,
    DateTime? sentAt,
    @Default(true) bool isSender,
  }) = MessageBubbleDataText;

  factory MessageBubbleData.fromJson(Map<String, dynamic> json) =>
      _$MessageBubbleDataFromJson(json);
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
