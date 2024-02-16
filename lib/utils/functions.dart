part of 'utils.dart';

Widget counter(
  BuildContext context, {
  required int currentLength,
  required int? maxLength,
  required bool isFocused,
}) =>
    Text(
      '$currentLength / $maxLength',
      semanticsLabel: 'character count',
    );

Future<Uint8List?> getYoutubeThumbnailImageData({required Uri uri}) async {
  String? id = uri.queryParameters['v'];

  if (id == null) return null;

  Uint8List? imageData;

  try {
    imageData = await ApiHelper.getBytesUri(Uri.parse('https://i.ytimg.com/vi/$id/maxresdefault.jpg')).then((value) => value.data);
  } catch (e) {
    // Ignored, really
  }
  if (imageData == null) {
    try {
      imageData = await ApiHelper.getBytesUri(Uri.parse('https://i.ytimg.com/vi/$id/hqdefault.jpg')).then((value) => value.data);
    } catch (e) {
      // Ignored, really
    }
  }

  return imageData;
}
