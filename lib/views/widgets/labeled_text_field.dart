part of 'widgets.dart';

class LabeledTextField extends StatefulWidget {
  const LabeledTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.decoration,
    this.autofillHints,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
  }) : _isPassword = false;

  const LabeledTextField.password({
    super.key,
    required this.labelText,
    this.controller,
    this.decoration,
    this.autofillHints,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
  }) : _isPassword = true;

  final String labelText;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final Iterable<String>? autofillHints;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final bool _isPassword;

  @override
  State<LabeledTextField> createState() => _LabeledTextFieldState();
}

class _LabeledTextFieldState extends State<LabeledTextField> {
  late final RxBool _showPassword;

  @override
  void initState() {
    super.initState();
    _showPassword = widget._isPassword ? false.obs : true.obs;
  }

  void _handleTap() => _showPassword.toggle();

  @override
  Widget build(BuildContext context) {
    InputDecorationTheme inputDecorationTheme = Theme.of(context).inputDecorationTheme;
    EdgeInsets effectivePadding = inputDecorationTheme.contentPadding?.resolve(Directionality.of(context)) ?? const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 12.0);

    InputDecoration effectiveDecoration = widget.decoration ?? const InputDecoration();
    if (effectiveDecoration.suffixIcon == null && widget._isPassword) {
      effectiveDecoration = effectiveDecoration.copyWith(
        suffixIcon: IconButton(
          onPressed: _handleTap,
          icon: Obx(() => Icon(_showPassword.value ? Icons.visibility_off : Icons.visibility)),
        ),
      );
    }
    effectiveDecoration = effectiveDecoration.copyWith(
      contentPadding: widget.decoration?.contentPadding ??
          EdgeInsets.fromLTRB(
            15.0,
            effectivePadding.top,
            15.0,
            effectivePadding.bottom,
          ),
      filled: widget.decoration?.filled ?? true,
      fillColor: widget.decoration?.fillColor ?? const Color(0xFFD9D9D9).withOpacity(0.3),
      hintStyle: widget.decoration?.hintStyle ?? Config.textStyleBodyLarge,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: Config.textStyleHeadlineSmall,
        ),
        const SizedBox(height: 18.0),
        Obx(
          () => TextField(
            controller: widget.controller,
            decoration: effectiveDecoration,
            obscureText: !_showPassword.value,
            autofillHints: widget.autofillHints,
            textCapitalization: widget.textCapitalization,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            onChanged: widget.onChanged,
            onEditingComplete: widget.onEditingComplete,
            onSubmitted: widget.onSubmitted,
            inputFormatters: widget.inputFormatters,
          ),
        ),
      ],
    );
  }
}
