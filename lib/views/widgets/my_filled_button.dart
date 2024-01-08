part of 'widgets.dart';

class MyFilledButton extends StatelessWidget {
  const MyFilledButton({
    super.key,
    required this.onPressed,
    this.iconAssetName,
    required this.labelText,
  });

  final VoidCallback? onPressed;
  final String? iconAssetName;
  final String labelText;

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: FilledButton.icon(
          onPressed: onPressed,
          icon: iconAssetName != null
              ? Image.asset(
                  iconAssetName!,
                  width: 24.0,
                  height: 24.0,
                )
              : Container(),
          label: Text(
            labelText,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 48.0,
              vertical: 16.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                kShapeMedium,
              ),
            ),
          ),
        ),
      );
}
