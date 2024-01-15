part of 'widgets.dart';

enum _LabeledTextFieldType {
  none,
  password,
  date,
  dropdown,
}

class LabeledTextField extends StatefulWidget {
  LabeledTextField({
    super.key,
    required this.labelText,
    this.labelStyle,
    this.minVerticalPadding,
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
    this.readOnly = false,
  })  : _type = _LabeledTextFieldType.none,
        items = const [],
        value = null,
        firstDate = DateTime.now(),
        lastDate = DateTime.now();

  LabeledTextField.password({
    super.key,
    required this.labelText,
    this.labelStyle,
    this.minVerticalPadding,
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
    this.readOnly = false,
  })  : _type = _LabeledTextFieldType.password,
        items = const [],
        value = null,
        firstDate = DateTime.now(),
        lastDate = DateTime.now();

  const LabeledTextField.date({
    super.key,
    required this.labelText,
    this.labelStyle,
    this.minVerticalPadding,
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
    this.readOnly = false,
    this.value,
    required this.firstDate,
    required this.lastDate,
  })  : _type = _LabeledTextFieldType.date,
        items = const [];

  LabeledTextField.dropdown({
    super.key,
    required this.labelText,
    this.labelStyle,
    this.minVerticalPadding,
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
    this.readOnly = false,
    required this.items,
  })  : _type = _LabeledTextFieldType.dropdown,
        value = null,
        firstDate = DateTime.now(),
        lastDate = DateTime.now();

  final String labelText;
  final TextStyle? labelStyle;
  final double? minVerticalPadding;
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
  final bool readOnly;
  final _LabeledTextFieldType _type;
  final DateTime? value;
  final DateTime firstDate;
  final DateTime lastDate;
  final List<PopupMenuItem<String>> items;

  @override
  State<LabeledTextField> createState() => _LabeledTextFieldState();
}

class _LabeledTextFieldState extends State<LabeledTextField> {
  late TextEditingController _textController;
  late bool _showPassword;

  @override
  void initState() {
    super.initState();
    _textController = widget.controller ?? TextEditingController();
    _showPassword = widget._type == _LabeledTextFieldType.password ? false : true;
  }

  void _handleTap() => setState(() => _showPassword = !_showPassword);

  InputDecoration _getEffectiveDecoration(BuildContext context) {
    InputDecorationTheme inputDecorationTheme = Theme.of(context).inputDecorationTheme;
    EdgeInsets effectivePadding = inputDecorationTheme.contentPadding?.resolve(Directionality.of(context)) ?? const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 12.0);

    InputDecoration effectiveDecoration = widget.decoration ?? const InputDecoration();
    if (effectiveDecoration.suffixIcon == null && widget._type == _LabeledTextFieldType.password) {
      effectiveDecoration = effectiveDecoration.copyWith(
        suffixIcon: IconButton(
          onPressed: _handleTap,
          icon: Icon(_showPassword ? Icons.visibility_off : Icons.visibility),
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

    return effectiveDecoration;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: widget.labelStyle ?? Config.textStyleHeadlineSmall,
        ),
        SizedBox(height: widget.minVerticalPadding ?? 18.0),
        switch (widget._type) {
          _LabeledTextFieldType.date => DateField(
              value: widget.value,
              firstDate: widget.firstDate,
              lastDate: widget.lastDate,
              decoration: _getEffectiveDecoration(context),
              obscureText: !_showPassword,
              textCapitalization: widget.textCapitalization,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              onChanged: widget.onChanged,
              onEditingComplete: widget.onEditingComplete,
              onSubmitted: widget.onSubmitted,
              inputFormatters: widget.inputFormatters,
              readOnly: widget.readOnly,
            ),
          _LabeledTextFieldType.dropdown => DropdownField(
              controller: _textController,
              items: widget.items,
              decoration: _getEffectiveDecoration(context),
              obscureText: !_showPassword,
              textCapitalization: widget.textCapitalization,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              onChanged: widget.onChanged,
              onEditingComplete: widget.onEditingComplete,
              onSubmitted: widget.onSubmitted,
              inputFormatters: widget.inputFormatters,
              readOnly: widget.readOnly,
            ),
          _ => TextField(
              controller: _textController,
              decoration: _getEffectiveDecoration(context),
              obscureText: !_showPassword,
              autofillHints: widget.autofillHints,
              textCapitalization: widget.textCapitalization,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              onChanged: widget.onChanged,
              onEditingComplete: widget.onEditingComplete,
              onSubmitted: widget.onSubmitted,
              inputFormatters: widget.inputFormatters,
              readOnly: widget.readOnly,
            ),
        }
      ],
    );
  }
}
