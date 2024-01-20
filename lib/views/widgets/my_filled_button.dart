part of 'widgets.dart';

class MyFilledButton extends StatelessWidget {
  const MyFilledButton({
    super.key,
    required this.onPressed,
    this.iconAssetName,
    required this.labelText,
    this.labelStyle,
    this.buttonStyle,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final String? iconAssetName;
  final String labelText;
  final TextStyle? labelStyle;
  final ButtonStyle? buttonStyle;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    ButtonStyle effectiveButtonStyle = (buttonStyle ?? FilledButton.styleFrom()).merge(
      FilledButton.styleFrom(
        fixedSize: const Size.fromHeight(60.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 48.0,
          vertical: 16.0,
        ),
      ),
    );

    return Directionality(
      textDirection: TextDirection.rtl,
      child: FilledButton.icon(
        onPressed: isLoading ? null : onPressed,
        icon: iconAssetName != null
            ? Image.asset(
                iconAssetName!,
                width: 24.0,
                height: 24.0,
              )
            : Container(),
        label: isLoading
            ? SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              )
            : Text(
                labelText,
                style: labelStyle ??
                    Config.textStyleTitleSmall.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
        style: effectiveButtonStyle,
      ),
    );
  }
}
