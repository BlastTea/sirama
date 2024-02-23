import 'package:flutter_test/flutter_test.dart';
import 'package:sirama/models/models.dart';

List<Map<String, dynamic>> roomMaps = [
  {
    "id_room_chat_me": 1,
    "remaja_user_id": 5,
    "guru_user_id": 2,
    "created_at": "2024-02-21T15:33:23.000000Z",
    "updated_at": "2024-02-21T15:33:23.000000Z",
  }
];

List<Map<String, dynamic>> riwayatMaps = [
  {
    "id_riwayat_chat": 1,
    "pesan": "bismillah test kirim pesan",
    "user_id": 21,
    "tgl_chat": "2024-02-21",
    "waktu_chat": "15:33:56",
    "created_at": "2024-02-21T15:33:56.000000Z",
    "updated_at": "2024-02-21T15:33:56.000000Z",
    "room_chat_id": 1,
  },
  {
    "id_riwayat_chat": 2,
    "pesan": "bismillah test kirim pesan kedua",
    "user_id": 21,
    "tgl_chat": "2024-02-21",
    "waktu_chat": "15:34:46",
    "created_at": "2024-02-21T15:34:46.000000Z",
    "updated_at": "2024-02-21T15:34:46.000000Z",
    "room_chat_id": 1,
  },
  {
    "id_riwayat_chat": 3,
    "pesan": "bismillah test kirim pesan ketiga",
    "user_id": 21,
    "tgl_chat": "2024-02-21",
    "waktu_chat": "15:34:53",
    "created_at": "2024-02-21T15:34:53.000000Z",
    "updated_at": "2024-02-21T15:34:53.000000Z",
    "room_chat_id": 1,
  }
];

void main() {
  test('message test', () {
    List<RoomChatMe> rooms = roomMaps.map((e) => RoomChatMe.fromJson(e)).toList();
    for (RoomChatMe room in rooms) {
      room.riwayats = riwayatMaps.map((e) => RiwayatChatMe.fromJson(e)).toList();
    }
  });
}
