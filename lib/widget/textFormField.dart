// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' show CupertinoTextField;
import 'package:flutter/services.dart';
import 'package:niku/proxy/proxy.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuTextFormField extends StatelessWidget
    with
        NikuBuildMacro<NikuTextFormField>,
        ApplyTextMacro,
        ApplyStrutStyleMacro,
        ApplyInputDecorationMacro,
        InputDecorationProxy,
        FocusNodeMacro,
        TextAlignMacro,
        TextDirectionMacro,
        KeyboardTypeMacro,
        TextAlignMacro,
        TextCapitalizationMacro,
        TextInputActionMacro,
        TextStyleProxy {
  TextEditingController? controller;
  String? initialValue;
  FocusNode? focusNode;
  NikuInputDecoration? decoration;
  TextInputType? keyboardType;
  TextCapitalization? textCapitalization;
  TextInputAction? textInputAction;
  NikuTextStyle? style;
  NikuStrutStyle? strutStyle;
  TextDirection? textDirection;
  TextAlign? textAlign;
  TextAlignVertical? textAlignVertical;
  bool? autofocus;
  bool? readOnly;
  ToolbarOptions? toolbarOptions;
  bool? showCursor;
  String? obscuringCharacter;
  bool? obscureText;
  bool? autocorrect;
  SmartDashesType? smartDashesType;
  SmartQuotesType? smartQuotesType;
  bool? enableSuggestions;
  bool? autovalidate;
  bool? maxLengthEnforced;
  MaxLengthEnforcement? maxLengthEnforcement;
  int? maxLines;
  int? minLines;
  bool? expands;
  int? maxLength;
  ValueChanged<String>? onChanged;
  GestureTapCallback? onTap;
  VoidCallback? onEditingComplete;
  ValueChanged<String>? onFieldSubmitted;
  FormFieldSetter<String>? onSaved;
  FormFieldValidator<String>? validator;
  List<TextInputFormatter>? inputFormatters;
  bool? enabled;
  double? cursorWidth;
  double? cursorHeight;
  Radius? cursorRadius;
  Color? cursorColor;
  Brightness? keyboardAppearance;
  EdgeInsets? scrollPadding;
  bool? enableInteractiveSelection;
  TextSelectionControls? selectionControls;
  InputCounterWidgetBuilder? buildCounter;
  ScrollPhysics? scrollPhysics;
  Iterable<String>? autofillHints;
  AutovalidateMode? autovalidateMode;
  ScrollController? scrollController;
  String? restorationId;
  bool? enableIMEPersonalizedLearning;
  EditableTextContextMenuBuilder? contextMenuBuilder;
  TextMagnifierConfiguration? magnifierConfiguration;
  SpellCheckConfiguration? spellCheckConfiguration;

  bool adaptive = false;
  bool cupertino = false;

  NikuTextFormField({
    Key? key,
    Widget? label,
    String? labelText,
    String? hintText,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.decoration,
    this.keyboardType,
    this.textCapitalization,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign,
    this.textAlignVertical,
    this.autofocus,
    this.readOnly,
    this.toolbarOptions,
    this.showCursor,
    this.obscuringCharacter,
    this.obscureText,
    this.autocorrect,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions,
    this.autovalidate,
    this.maxLengthEnforced,
    this.maxLengthEnforcement,
    this.maxLines,
    this.minLines,
    this.expands,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.cursorWidth,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding,
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.scrollController,
    this.restorationId,
    this.autovalidateMode,
    this.enableIMEPersonalizedLearning,
    this.contextMenuBuilder,
    this.magnifierConfiguration,
    this.spellCheckConfiguration,
    this.adaptive = false,
    this.cupertino = false,
    this.enabled = true,
  }) : super(key: key) {
    this.label = label ?? (labelText != null ? Text(labelText) : null);
    this.hintText = hintText;
  }

  factory NikuTextFormField.label(
    String? label, {
    Key? key,
    String? hintText,
    TextEditingController? controller,
    String? initialValue,
    FocusNode? focusNode,
    NikuInputDecoration? decoration,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    TextInputAction? textInputAction,
    NikuTextStyle? style,
    NikuStrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    bool? autofocus,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    bool? autovalidate,
    bool? maxLengthEnforced,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
    EditableTextContextMenuBuilder? contextMenuBuilder,
    TextMagnifierConfiguration? magnifierConfiguration,
    SpellCheckConfiguration? spellCheckConfiguration,
    bool adaptive = false,
    bool cupertino = false,
  }) =>
      NikuTextFormField(
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        decoration: decoration,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        style: style,
        labelText: label,
        hintText: hintText,
        strutStyle: strutStyle,
        textDirection: textDirection,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        autofocus: autofocus,
        readOnly: readOnly,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        obscuringCharacter: obscuringCharacter,
        obscureText: obscureText,
        autocorrect: autocorrect,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions,
        autovalidate: autovalidate,
        maxLengthEnforced: maxLengthEnforced,
        maxLengthEnforcement: maxLengthEnforcement,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        validator: validator,
        inputFormatters: inputFormatters,
        enabled: enabled ?? true,
        cursorWidth: cursorWidth,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding,
        enableInteractiveSelection: enableInteractiveSelection,
        selectionControls: selectionControls,
        buildCounter: buildCounter,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        autovalidateMode: autovalidateMode,
        scrollController: scrollController,
        restorationId: restorationId,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        contextMenuBuilder: contextMenuBuilder,
        magnifierConfiguration: magnifierConfiguration,
        spellCheckConfiguration: spellCheckConfiguration,
        adaptive: adaptive,
        cupertino: cupertino,
      );

  factory NikuTextFormField.hint(
    String? hint, {
    Key? key,
    Widget? label,
    String? labelText,
    TextEditingController? controller,
    String? initialValue,
    FocusNode? focusNode,
    NikuInputDecoration? decoration,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    TextInputAction? textInputAction,
    NikuTextStyle? style,
    NikuStrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    bool? autofocus,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    bool? autovalidate,
    bool? maxLengthEnforced,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
    EditableTextContextMenuBuilder? contextMenuBuilder,
    TextMagnifierConfiguration? magnifierConfiguration,
    SpellCheckConfiguration? spellCheckConfiguration,
    bool adaptive = false,
    bool cupertino = false,
  }) =>
      NikuTextFormField(
        hintText: hint,
        label: label,
        labelText: labelText,
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        decoration: decoration,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        style: style,
        strutStyle: strutStyle,
        textDirection: textDirection,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        autofocus: autofocus,
        readOnly: readOnly,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        obscuringCharacter: obscuringCharacter,
        obscureText: obscureText,
        autocorrect: autocorrect,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions,
        autovalidate: autovalidate,
        maxLengthEnforced: maxLengthEnforced,
        maxLengthEnforcement: maxLengthEnforcement,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        validator: validator,
        inputFormatters: inputFormatters,
        enabled: enabled ?? true,
        cursorWidth: cursorWidth,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding,
        enableInteractiveSelection: enableInteractiveSelection,
        selectionControls: selectionControls,
        buildCounter: buildCounter,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        autovalidateMode: autovalidateMode,
        scrollController: scrollController,
        restorationId: restorationId,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        contextMenuBuilder: contextMenuBuilder,
        magnifierConfiguration: magnifierConfiguration,
        spellCheckConfiguration: spellCheckConfiguration,
        adaptive: adaptive,
        cupertino: cupertino,
      );

  factory NikuTextFormField.adaptive({
    Widget? label,
    String? labelText,
    String? hintText,
    TextEditingController? controller,
    String? initialValue,
    FocusNode? focusNode,
    NikuInputDecoration? decoration,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    TextInputAction? textInputAction,
    NikuTextStyle? style,
    NikuStrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    bool? autofocus,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    bool? autovalidate,
    bool? maxLengthEnforced,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
    EditableTextContextMenuBuilder? contextMenuBuilder,
    TextMagnifierConfiguration? magnifierConfiguration,
    SpellCheckConfiguration? spellCheckConfiguration,
  }) =>
      NikuTextFormField(
        label: label,
        labelText: labelText,
        hintText: hintText,
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        decoration: decoration,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        style: style,
        strutStyle: strutStyle,
        textDirection: textDirection,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        autofocus: autofocus,
        readOnly: readOnly,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        obscuringCharacter: obscuringCharacter,
        obscureText: obscureText,
        autocorrect: autocorrect,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions,
        autovalidate: autovalidate,
        maxLengthEnforced: maxLengthEnforced,
        maxLengthEnforcement: maxLengthEnforcement,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        validator: validator,
        inputFormatters: inputFormatters,
        enabled: enabled ?? true,
        cursorWidth: cursorWidth,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding,
        enableInteractiveSelection: enableInteractiveSelection,
        selectionControls: selectionControls,
        buildCounter: buildCounter,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        scrollController: scrollController,
        restorationId: restorationId,
        autovalidateMode: autovalidateMode,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        contextMenuBuilder: contextMenuBuilder,
        magnifierConfiguration: magnifierConfiguration,
        spellCheckConfiguration: spellCheckConfiguration,
        adaptive: true,
      );

  factory NikuTextFormField.cupertino({
    Widget? label,
    String? labelText,
    String? hintText,
    TextEditingController? controller,
    String? initialValue,
    FocusNode? focusNode,
    NikuInputDecoration? decoration,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    TextInputAction? textInputAction,
    NikuTextStyle? style,
    NikuStrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    bool? autofocus,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    bool? autovalidate,
    bool? maxLengthEnforced,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
    EditableTextContextMenuBuilder? contextMenuBuilder,
    TextMagnifierConfiguration? magnifierConfiguration,
    SpellCheckConfiguration? spellCheckConfiguration,
  }) =>
      NikuTextFormField(
        label: label,
        labelText: labelText,
        hintText: hintText,
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        decoration: decoration,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        style: style,
        strutStyle: strutStyle,
        textDirection: textDirection,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        autofocus: autofocus,
        readOnly: readOnly,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        obscuringCharacter: obscuringCharacter,
        obscureText: obscureText,
        autocorrect: autocorrect,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions,
        autovalidate: autovalidate,
        maxLengthEnforced: maxLengthEnforced,
        maxLengthEnforcement: maxLengthEnforcement,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        validator: validator,
        inputFormatters: inputFormatters,
        enabled: enabled ?? true,
        cursorWidth: cursorWidth,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding,
        enableInteractiveSelection: enableInteractiveSelection,
        selectionControls: selectionControls,
        buildCounter: buildCounter,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        scrollController: scrollController,
        restorationId: restorationId,
        autovalidateMode: autovalidateMode,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        contextMenuBuilder: contextMenuBuilder,
        magnifierConfiguration: magnifierConfiguration,
        spellCheckConfiguration: spellCheckConfiguration,
        cupertino: true,
      );

  void get lightKeyboard => keyboardAppearance == Brightness.light;
  void get darkKeyboard => keyboardAppearance == Brightness.dark;

  bool get asPassword {
    obscureText = true;
    maxLines = 1;

    return true;
  }

  set asPassword(bool value) {
    obscureText = value;
    maxLines = 1;
  }

  void get singleLine => maxLines = 1;

  NikuTextFormField get self => this;

  set apply(NikuTextFormField? v) {
    if (v == null) return;

    if (decoration == null && v.decoration != null)
      decoration = NikuInputDecoration();
    if (style == null && v.style != null) style = NikuTextStyle();
    if (strutStyle == null && v.strutStyle != null)
      strutStyle = NikuStrutStyle();

    decoration?.apply = v.decoration;
    style?.apply = v.style;
    strutStyle?.apply = v.strutStyle;

    initialValue = v.initialValue ?? initialValue;
    focusNode = v.focusNode ?? focusNode;
    keyboardType = v.keyboardType ?? keyboardType;
    textCapitalization = v.textCapitalization ?? textCapitalization;
    textInputAction = v.textInputAction ?? textInputAction;
    textDirection = v.textDirection ?? textDirection;
    textAlign = v.textAlign ?? textAlign;
    textAlignVertical = v.textAlignVertical ?? textAlignVertical;
    autofocus = v.autofocus ?? autofocus;
    readOnly = v.readOnly ?? readOnly;
    toolbarOptions = v.toolbarOptions ?? toolbarOptions;
    showCursor = v.showCursor ?? showCursor;
    obscuringCharacter = v.obscuringCharacter ?? obscuringCharacter;
    obscureText = v.obscureText ?? obscureText;
    autocorrect = v.autocorrect ?? autocorrect;
    smartDashesType = v.smartDashesType ?? smartDashesType;
    smartQuotesType = v.smartQuotesType ?? smartQuotesType;
    enableSuggestions = v.enableSuggestions ?? enableSuggestions;
    autovalidate = v.autovalidate ?? autovalidate;
    maxLengthEnforced = v.maxLengthEnforced ?? maxLengthEnforced;
    maxLengthEnforcement = v.maxLengthEnforcement ?? maxLengthEnforcement;
    maxLines = v.maxLines ?? maxLines;
    minLines = v.minLines ?? minLines;
    expands = v.expands ?? expands;
    maxLength = v.maxLength ?? maxLength;
    onChanged = v.onChanged ?? onChanged;
    onTap = v.onTap ?? onTap;
    onEditingComplete = v.onEditingComplete ?? onEditingComplete;
    onFieldSubmitted = v.onFieldSubmitted ?? onFieldSubmitted;
    onSaved = v.onSaved ?? onSaved;
    validator = v.validator ?? validator;
    inputFormatters = v.inputFormatters ?? inputFormatters;
    enabled = v.enabled ?? true;
    cursorWidth = v.cursorWidth ?? cursorWidth;
    cursorHeight = v.cursorHeight ?? cursorHeight;
    cursorRadius = v.cursorRadius ?? cursorRadius;
    cursorColor = v.cursorColor ?? cursorColor;
    keyboardAppearance = v.keyboardAppearance ?? keyboardAppearance;
    scrollPadding = v.scrollPadding ?? scrollPadding;
    enableInteractiveSelection =
        v.enableInteractiveSelection ?? enableInteractiveSelection;
    selectionControls = v.selectionControls ?? selectionControls;
    buildCounter = v.buildCounter ?? buildCounter;
    scrollPhysics = v.scrollPhysics ?? scrollPhysics;
    autofillHints = v.autofillHints ?? autofillHints;
    restorationId = v.restorationId ?? restorationId;
    enableIMEPersonalizedLearning =
        v.enableIMEPersonalizedLearning ?? enableIMEPersonalizedLearning;
    contextMenuBuilder = v.contextMenuBuilder ?? contextMenuBuilder;
    magnifierConfiguration = v.magnifierConfiguration ?? magnifierConfiguration;
    spellCheckConfiguration =
        v.spellCheckConfiguration ?? spellCheckConfiguration;

    $parent..$merge(v.$parent);
  }

  NikuTextFormField get copied => NikuTextFormField(
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        decoration: decoration,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        style: style,
        strutStyle: strutStyle,
        textDirection: textDirection,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        autofocus: autofocus,
        readOnly: readOnly,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        obscuringCharacter: obscuringCharacter,
        obscureText: obscureText,
        autocorrect: autocorrect,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        validator: validator,
        inputFormatters: inputFormatters,
        enabled: enabled ?? true,
        cursorWidth: cursorWidth,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding,
        enableInteractiveSelection: enableInteractiveSelection,
        selectionControls: selectionControls,
        buildCounter: buildCounter,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        autovalidateMode: autovalidateMode,
        scrollController: scrollController,
        restorationId: restorationId,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        adaptive: adaptive,
        cupertino: cupertino,
        contextMenuBuilder: contextMenuBuilder,
        magnifierConfiguration: magnifierConfiguration,
        spellCheckConfiguration: spellCheckConfiguration,
      )..$parent.$merge($parent);

  TextFormField _buildMaterial() => TextFormField(
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        decoration: decoration?.value,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        textInputAction: textInputAction,
        style: style?.value,
        strutStyle: strutStyle?.value,
        textDirection: textDirection,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: textAlignVertical,
        autofocus: autofocus ?? false,
        readOnly: readOnly ?? false,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        obscuringCharacter: obscuringCharacter ?? '•',
        obscureText: obscureText ?? false,
        autocorrect: autocorrect ?? true,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions ?? true,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands ?? false,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        validator: validator,
        inputFormatters: inputFormatters,
        enabled: enabled ?? true,
        cursorWidth: cursorWidth ?? 2,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
        enableInteractiveSelection: enableInteractiveSelection ?? true,
        selectionControls: selectionControls,
        buildCounter: buildCounter,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        autovalidateMode: autovalidateMode,
        scrollController: scrollController,
        restorationId: restorationId,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning ?? true,
        contextMenuBuilder: contextMenuBuilder,
        magnifierConfiguration: magnifierConfiguration,
        spellCheckConfiguration: spellCheckConfiguration,
      );

  CupertinoTextField _buildCupertino() => CupertinoTextField(
        controller: controller,
        placeholder: decoration?.labelText,
        focusNode: focusNode,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        textInputAction: textInputAction,
        style: style?.value,
        strutStyle: strutStyle?.value,
        textDirection: textDirection,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: textAlignVertical,
        autofocus: autofocus ?? true,
        readOnly: readOnly ?? false,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        obscuringCharacter: obscuringCharacter ?? '•',
        obscureText: obscureText ?? false,
        autocorrect: autocorrect ?? true,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions ?? true,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands ?? false,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        inputFormatters: inputFormatters,
        enabled: enabled ?? true,
        cursorWidth: cursorWidth ?? 2,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius ?? const Radius.circular(2.0),
        cursorColor: cursorColor,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
        enableInteractiveSelection: enableInteractiveSelection ?? true,
        selectionControls: selectionControls,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        scrollController: scrollController,
        restorationId: restorationId,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning ?? true,
        contextMenuBuilder: contextMenuBuilder,
        magnifierConfiguration: magnifierConfiguration,
        spellCheckConfiguration: spellCheckConfiguration,
      );

  widget(context) {
    if (cupertino) return _buildCupertino();

    if (adaptive)
      return Builder(
        builder: (context) {
          final platform = Theme.of(context).platform;

          if (platform == TargetPlatform.iOS ||
              platform == TargetPlatform.macOS) return _buildCupertino();

          return _buildMaterial();
        },
      );

    return _buildMaterial();
  }
}
