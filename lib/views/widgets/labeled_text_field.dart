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
    this.focusNode,
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
    this.expands = false,
    this.constraints,
    this.maxLines = 1,
    this.maxLength,
    this.textAlignVertical,
    this.buildCounter,
  })  : _type = _LabeledTextFieldType.none,
        items = const [],
        value = null,
        firstDate = DateTime.now(),
        lastDate = DateTime.now(),
        width = null,
        onSelected = null,
        onDateChanged = null;

  LabeledTextField.password({
    super.key,
    required this.labelText,
    this.labelStyle,
    this.minVerticalPadding,
    this.focusNode,
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
    this.expands = false,
    this.constraints,
    this.maxLines = 1,
    this.maxLength,
    this.textAlignVertical,
    this.buildCounter,
  })  : _type = _LabeledTextFieldType.password,
        items = const [],
        value = null,
        firstDate = DateTime.now(),
        lastDate = DateTime.now(),
        width = null,
        onSelected = null,
        onDateChanged = null;

  const LabeledTextField.date({
    super.key,
    required this.labelText,
    this.labelStyle,
    this.minVerticalPadding,
    this.focusNode,
    this.controller,
    this.decoration,
    this.autofillHints,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onDateChanged,
    this.inputFormatters,
    this.readOnly = false,
    this.expands = false,
    this.constraints,
    this.maxLines = 1,
    this.maxLength,
    this.textAlignVertical,
    this.buildCounter,
    this.value,
    required this.firstDate,
    required this.lastDate,
  })  : _type = _LabeledTextFieldType.date,
        items = const [],
        width = null,
        onSelected = null;

  LabeledTextField.dropdown({
    super.key,
    this.width,
    required this.labelText,
    this.labelStyle,
    this.minVerticalPadding,
    this.controller,
    this.decoration,
    this.onSelected,
    this.readOnly = false,
    this.expands = false,
    this.constraints,
    required this.items,
  })  : _type = _LabeledTextFieldType.dropdown,
        focusNode = null,
        value = null,
        textCapitalization = TextCapitalization.none,
        autofillHints = null,
        onEditingComplete = null,
        onSubmitted = null,
        keyboardType = null,
        inputFormatters = null,
        textInputAction = null,
        firstDate = DateTime.now(),
        lastDate = DateTime.now(),
        maxLines = null,
        textAlignVertical = null,
        buildCounter = null,
        maxLength = null,
        onChanged = null,
        onDateChanged = null;

  final String labelText;
  final TextStyle? labelStyle;
  final double? minVerticalPadding;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final Iterable<String>? autofillHints;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final ValueChanged? onSelected;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<DateTime?>? onDateChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final bool expands;
  final BoxConstraints? constraints;
  final int? maxLines;
  final int? maxLength;
  final TextAlignVertical? textAlignVertical;
  final InputCounterWidgetBuilder? buildCounter;
  final _LabeledTextFieldType _type;
  final DateTime? value;
  final DateTime firstDate;
  final DateTime lastDate;
  final List<DropdownMenuEntry> items;
  final double? width;

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
    _showPassword =
        widget._type == _LabeledTextFieldType.password ? false : true;
  }

  void _handleTap() => setState(() => _showPassword = !_showPassword);

  InputDecoration _getEffectiveDecoration(BuildContext context) {
    InputDecorationTheme inputDecorationTheme =
        Theme.of(context).inputDecorationTheme;
    EdgeInsets effectivePadding = inputDecorationTheme.contentPadding
            ?.resolve(Directionality.of(context)) ??
        const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 12.0);

    InputDecoration effectiveDecoration =
        widget.decoration ?? const InputDecoration();
    if (effectiveDecoration.suffixIcon == null &&
        widget._type == _LabeledTextFieldType.password) {
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
      fillColor: widget.decoration?.fillColor ??
          const Color(0xFFD9D9D9).withOpacity(0.3),
      hintStyle: widget.decoration?.hintStyle ?? Config.textStyleBodyLarge,
    );

    return effectiveDecoration;
  }

  @override
  Widget build(BuildContext context) {
    InputDecoration effectiveDecoration = _getEffectiveDecoration(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: widget.labelStyle ?? Config.textStyleHeadlineSmall,
        ),
        SizedBox(height: widget.minVerticalPadding ?? 18.0),
        ConstrainedBox(
          constraints: widget.constraints ?? const BoxConstraints(),
          child: switch (widget._type) {
            _LabeledTextFieldType.date => DateField(
                focusNode: widget.focusNode,
                value: widget.value,
                firstDate: widget.firstDate,
                lastDate: widget.lastDate,
                decoration: effectiveDecoration,
                obscureText: !_showPassword,
                textCapitalization: widget.textCapitalization,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                onChanged: widget.onChanged,
                onEditingComplete: widget.onEditingComplete,
                onSubmitted: widget.onSubmitted,
                inputFormatters: widget.inputFormatters,
                readOnly: widget.readOnly,
                expands: widget.expands,
                maxLines: widget.maxLines,
                maxLength: widget.maxLength,
                textAlignVertical: widget.textAlignVertical,
                buildCounter: widget.buildCounter,
                onDateChanged: widget.onDateChanged,
              ),
            _LabeledTextFieldType.dropdown => DropdownMenu(
                width: widget.width,
                controller: _textController,
                dropdownMenuEntries: widget.items,
                inputDecorationTheme:
                    Theme.of(context).inputDecorationTheme.copyWith(
                          contentPadding: effectiveDecoration.contentPadding,
                          filled: effectiveDecoration.filled,
                          fillColor: effectiveDecoration.fillColor,
                          hintStyle: effectiveDecoration.hintStyle,
                        ),
                trailingIcon: effectiveDecoration.suffixIcon,
                enableSearch: !widget.readOnly,
                enableFilter: !widget.readOnly,
                label: effectiveDecoration.labelText != null
                    ? Text(effectiveDecoration.labelText!)
                    : effectiveDecoration.label,
                onSelected: (value) => widget.onSelected != null
                    ? widget.onSelected!(value)
                    : null,
              ),
            _ => TextField(
                focusNode: widget.focusNode,
                controller: _textController,
                decoration: effectiveDecoration,
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
                expands: widget.expands,
                maxLines: widget.maxLines,
                maxLength: widget.maxLength,
                textAlignVertical: widget.textAlignVertical,
                buildCounter: widget.buildCounter,
              ),
          },
        ),
      ],
    );
  }
}
