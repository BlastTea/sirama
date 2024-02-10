part of 'widgets.dart';

enum CardTileAlignment {
  top,
  center,
  bottom,
}

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
    this.spacing = 8.0,
    this.contentPadding = const EdgeInsets.all(20.0),
    this.imageAlignment = CardTileAlignment.center,
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
  final double spacing;
  final EdgeInsetsGeometry contentPadding;
  final CardTileAlignment imageAlignment;
  final VoidCallback? onPressed;

  Color onPrimaryColor(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimary;

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
              titleStyle: titleStyle ??
                  Config.textStyleHeadlineSmall
                      .copyWith(color: onPrimaryColor(context)),
              subtitleStyle: subtitleStyle ??
                  Config.textStyleBodyMedium
                      .copyWith(color: onPrimaryColor(context)),
              buttonStyle: buttonStyle ??
                  Config.textStyleTitleSmall
                      .copyWith(color: onPrimaryColor(context)),
              minImageWidth: minImageWidth,
              spacing: spacing,
              contentPadding: contentPadding,
              imageAlignment: imageAlignment,
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

class _CardTile
    extends SlottedMultiChildRenderObjectWidget<_CardTileSlot, RenderBox> {
  const _CardTile({
    required this.title,
    required this.subtitle,
    required this.button,
    required this.image,
    required this.titleStyle,
    required this.subtitleStyle,
    required this.buttonStyle,
    required this.minImageWidth,
    required this.spacing,
    required this.contentPadding,
    required this.imageAlignment,
  });

  final Widget? title;
  final Widget? subtitle;
  final Widget? button;
  final Widget? image;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final TextStyle buttonStyle;
  final double minImageWidth;
  final double spacing;
  final EdgeInsetsGeometry contentPadding;
  final CardTileAlignment imageAlignment;

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
  SlottedContainerRenderObjectMixin<_CardTileSlot, RenderBox>
      createRenderObject(BuildContext context) => _RenderCardTile(
            minImageWidth: minImageWidth,
            spacing: spacing,
            contentPadding: contentPadding.resolve(Directionality.of(context)),
            imageAlignment: imageAlignment,
          );

  @override
  void updateRenderObject(BuildContext context, _RenderCardTile renderObject) =>
      renderObject
        ..minImageWidth = minImageWidth
        ..spacing = spacing
        ..contentPadding = contentPadding.resolve(Directionality.of(context))
        ..imageAlignment = imageAlignment;

  @override
  Iterable<_CardTileSlot> get slots => _CardTileSlot.values;
}

class _RenderCardTile extends RenderBox
    with SlottedContainerRenderObjectMixin<_CardTileSlot, RenderBox> {
  _RenderCardTile({
    required double minImageWidth,
    required double spacing,
    required EdgeInsets contentPadding,
    required CardTileAlignment imageAlignment,
  })  : _minImageWidth = minImageWidth,
        _spacing = spacing,
        _contentPadding = contentPadding,
        _imageAlignment = imageAlignment;

  double _minImageWidth;
  double get minImageWidth => _minImageWidth;
  set minImageWidth(double value) {
    if (value == minImageWidth) {
      return;
    }

    _minImageWidth = value;
    markNeedsLayout();
  }

  double _spacing;
  double get spacing => _spacing;
  set spacing(double value) {
    if (value == spacing) {
      return;
    }

    _spacing = spacing;
    markNeedsLayout();
  }

  EdgeInsets _contentPadding;
  EdgeInsets get contentPadding => _contentPadding;
  set contentPadding(EdgeInsets value) {
    if (value == contentPadding) {
      return;
    }

    _contentPadding = value;
    markNeedsLayout();
  }

  CardTileAlignment _imageAlignment;
  CardTileAlignment get imageAlignment => _imageAlignment;
  set imageAlignment(CardTileAlignment value) {
    if (value == imageAlignment) {
      return;
    }

    _imageAlignment = value;
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
    EdgeInsets effectivePadding = EdgeInsets.fromLTRB(
        contentPadding.left,
        contentPadding.top,
        _image == null ? contentPadding.right : 0.0,
        contentPadding.bottom);

    BoxConstraints effectiveContstraints =
        constraints.deflate(effectivePadding);
    final double effectiveSpacing =
        (_title != null && (_subtitle != null || _button != null)
                ? spacing
                : 0.0) +
            (_subtitle != null && _button != null ? spacing : 0.0);

    double nonImageWidth =
        effectiveContstraints.maxWidth - (_image != null ? minImageWidth : 0.0);

    _title?.layout(
        effectiveContstraints.copyWith(
            minWidth: nonImageWidth, maxWidth: nonImageWidth),
        parentUsesSize: true);
    _subtitle?.layout(
        effectiveContstraints.copyWith(
            minWidth: nonImageWidth, maxWidth: nonImageWidth),
        parentUsesSize: true);
    _button?.layout(
        effectiveContstraints.copyWith(
            minWidth: nonImageWidth, maxWidth: nonImageWidth),
        parentUsesSize: true);

    double nonImageHeight = (_title?.size.height ?? 0.0) +
        (_subtitle?.size.height ?? 0.0) +
        (_button?.size.height ?? 0.0);
    if (nonImageHeight < _minImageWidth) {
      nonImageHeight = _minImageWidth;
    }

    _image?.layout(
        effectiveContstraints.copyWith(
            minWidth: minImageWidth,
            maxWidth: minImageWidth,
            minHeight: nonImageHeight,
            maxHeight: nonImageHeight),
        parentUsesSize: true);

    size = constraints.constrain(Size(
        constraints.maxWidth + contentPadding.horizontal,
        nonImageHeight + contentPadding.vertical + effectiveSpacing));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _title?.paint(
        context, offset + Offset(contentPadding.left, contentPadding.top));
    _subtitle?.paint(
        context,
        offset +
            Offset(
                contentPadding.left,
                (_title?.size.height ?? 0.0) +
                    contentPadding.top +
                    (_title != null ? spacing : 0.0)));
    _button?.paint(
        context,
        offset +
            Offset(
                contentPadding.left,
                (_title?.size.height ?? 0.0) +
                    (_subtitle?.size.height ?? 0.0) +
                    contentPadding.top +
                    (_title != null ? spacing : 0.0) +
                    (_subtitle != null ? spacing : 0.0)));

    double imageYOffset = 0.0;
    switch (imageAlignment) {
      case CardTileAlignment.center:
        imageYOffset = (size.height / 2) - ((_image?.size.height ?? 0.0) / 2);
      case CardTileAlignment.bottom:
        imageYOffset = size.height - (_image?.size.height ?? 0.0);
      default:
      // Do nothing
    }

    _image?.paint(
        context, offset + Offset(size.width - minImageWidth, imageYOffset));
  }
}
