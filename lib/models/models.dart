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
    @JsonKey(name: 'id_jetnis_topik_pertanyaan') int? idJenisTopikPertanyaan,
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
