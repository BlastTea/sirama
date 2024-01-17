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
