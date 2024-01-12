part of 'widgets.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
    this.title,
    this.subtitle,
    this.button,
    this.image,
    this.titleStyle,
    this.subtitleStyle,
    this.buttonStyle,
    this.minImageWidth = 80.0,
    this.onPressed,
  });

  final Widget? title;
  final Widget? subtitle;
  final Widget? button;
  final Widget? image;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? buttonStyle;
  final double minImageWidth;
  final VoidCallback? onPressed;

  Color onPrimaryColor(BuildContext context) => Theme.of(context).colorScheme.onPrimary;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(kShapeLarge),
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(kShapeLarge),
          child: InkWell(
            borderRadius: BorderRadius.circular(kShapeLarge),
            onTap: onPressed,
            child: _CardTile(
              title: title,
              subtitle: subtitle,
              button: button,
              image: image,
              titleStyle: titleStyle?.merge(Config.textStyleHeadlineSmall.copyWith(color: onPrimaryColor(context))) ?? Config.textStyleHeadlineSmall.copyWith(color: onPrimaryColor(context)),
              subtitleStyle: subtitleStyle?.merge(Config.textStyleBodyMedium.copyWith(color: onPrimaryColor(context))) ?? Config.textStyleBodyMedium.copyWith(color: onPrimaryColor(context)),
              buttonStyle: buttonStyle?.merge(Config.textStyleTitleSmall.copyWith(color: onPrimaryColor(context))) ?? Config.textStyleTitleSmall.copyWith(color: onPrimaryColor(context)),
              minImageWidth: minImageWidth,
            ),
          ),
        ),
      );
}

enum _CardTileSlot {
  title,
  subtitle,
  button,
  image,
}

class _CardTile extends SlottedMultiChildRenderObjectWidget<_CardTileSlot, RenderBox> {
  const _CardTile({
    required this.title,
    required this.subtitle,
    required this.button,
    required this.image,
    required this.titleStyle,
    required this.subtitleStyle,
    required this.buttonStyle,
    required this.minImageWidth,
  });

  final Widget? title;
  final Widget? subtitle;
  final Widget? button;
  final Widget? image;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final TextStyle buttonStyle;
  final double minImageWidth;

  @override
  Widget? childForSlot(_CardTileSlot slot) {
    switch (slot) {
      case _CardTileSlot.title:
        if (title == null) return null;

        return AnimatedDefaultTextStyle(
          style: titleStyle,
          duration: kDurationShort4,
          child: title!,
        );
      case _CardTileSlot.subtitle:
        if (subtitle == null) return null;

        return AnimatedDefaultTextStyle(
          style: subtitleStyle,
          duration: kDurationShort4,
          child: subtitle!,
        );
      case _CardTileSlot.button:
        if (button == null) return null;

        return AnimatedDefaultTextStyle(
          style: buttonStyle,
          duration: kDurationShort4,
          child: button!,
        );
      case _CardTileSlot.image:
        return image;
    }
  }

  @override
  SlottedContainerRenderObjectMixin<_CardTileSlot, RenderBox> createRenderObject(BuildContext context) => _RenderCardTile(minImageWidth: minImageWidth);

  @override
  void updateRenderObject(BuildContext context, _RenderCardTile renderObject) => renderObject..minImageWidth = minImageWidth;

  @override
  Iterable<_CardTileSlot> get slots => _CardTileSlot.values;
}

class _RenderCardTile extends RenderBox with SlottedContainerRenderObjectMixin<_CardTileSlot, RenderBox> {
  _RenderCardTile({required double minImageWidth}) : _minImageWidth = minImageWidth;

  double _minImageWidth;
  double get minImageWidth => _minImageWidth;
  set minImageWidth(double value) {
    if (value == minImageWidth) {
      return;
    }

    _minImageWidth = value;
    markNeedsLayout();
  }

  RenderBox? get _title => childForSlot(_CardTileSlot.title);
  RenderBox? get _subtitle => childForSlot(_CardTileSlot.subtitle);
  RenderBox? get _button => childForSlot(_CardTileSlot.button);
  RenderBox? get _image => childForSlot(_CardTileSlot.image);

  @override
  Iterable<RenderBox> get children => [
        if (_title != null) _title!,
        if (_subtitle != null) _subtitle!,
        if (_button != null) _button!,
        if (_image != null) _image!,
      ];

  @override
  void performLayout() {
    double nonImageWidth = constraints.maxWidth - minImageWidth;

    _title?.layout(constraints.copyWith(minWidth: nonImageWidth, maxWidth: nonImageWidth), parentUsesSize: true);
    _subtitle?.layout(constraints.copyWith(minWidth: nonImageWidth, maxWidth: nonImageWidth), parentUsesSize: true);
    _button?.layout(constraints.copyWith(minWidth: nonImageWidth, maxWidth: nonImageWidth), parentUsesSize: true);

    double nonImageHeight = (_title?.size.height ?? 0.0) + (_subtitle?.size.height ?? 0.0) + (_button?.size.height ?? 0.0);
    if (nonImageHeight < _minImageWidth) {
      nonImageHeight = _minImageWidth;
    }

    _image?.layout(constraints.copyWith(minWidth: minImageWidth, maxWidth: minImageWidth, minHeight: nonImageHeight, maxHeight: nonImageHeight));

    size = constraints.constrain(Size(constraints.maxWidth, nonImageHeight));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _title?.paint(context, offset);
    _subtitle?.paint(context, offset + Offset(0.0, _title?.size.height ?? 0.0));
    _button?.paint(context, offset + Offset(0.0, (_title?.size.height ?? 0.0) + (_subtitle?.size.height ?? 0.0)));
    _image?.paint(context, offset + Offset(size.width - minImageWidth, 0.0));
  }
}
