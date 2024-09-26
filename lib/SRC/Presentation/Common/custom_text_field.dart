import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final Color? filledColor;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final bool isValid;
  final bool isBorderRequired;
  final String? titleText;
  final int? maxline;
  final TextStyle? hintStyle;
  final TextStyle? titleStyle;
  final String? validateText;
  final bool? isShadowRequired;
  final Color? titleTextColor;
  final double? suffixWidth;
  final double? suffixHeight;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final bool? readOnly;
  final FocusNode? focusNode;
  final Color? hintTextColor;
  final double? height;
  final bool? isState;
  final String? labelText;
  final double? prefixWidth;
  final EdgeInsets? contentPadding;
  final TextStyle? style;
  final InputBorder? border;
  final bool? enabled;
  final BoxConstraints? constraints;
  final List<TextInputFormatter>? inputFormatters; // Add this line

  const CommonTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    required this.textInputType,
    this.suffixIcon,
    this.validator,
    this.prefixIcon,
    this.isValid = false,
    this.isBorderRequired = true,
    this.titleText = "",
    this.maxline = 1,
    this.labelText,
    this.validateText,
    this.isShadowRequired = false,
    this.titleTextColor,
    this.suffixWidth = 15,
    this.suffixHeight = 15,
    this.onChanged,
    this.contentPadding,
    this.onTap,
    this.readOnly,
    this.focusNode,
    this.hintTextColor,
    this.border,
    this.height,
    this.filledColor,
    this.hintStyle,
    this.isState,
    this.titleStyle,
    this.prefixWidth,
    this.enabled,
    this.style,
    this.constraints,
    this.inputFormatters, // Add this line
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool isHide = false;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return TextFormField(
      onTap: widget.onTap,
      readOnly: widget.readOnly ?? false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      scribbleEnabled: true,
      focusNode: widget.focusNode,
      enabled: widget.enabled,
      validator: widget.validator ??
          (v) {
            if (v!.isEmpty) {
              return widget.validateText;
            }
            return null;
          },
      onChanged: widget.onChanged,
      keyboardType: widget.textInputType,
      obscureText: widget.isState != null ? !isHide : widget.obscureText,
      controller: widget.controller,
      maxLines: widget.maxline,
      style: widget.style ??
          themeData.textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.tertiary,
          ),
      cursorColor: themeData.colorScheme.primary,
      inputFormatters: widget.inputFormatters, // Add this line
      decoration: InputDecoration(
        constraints: widget.constraints,
        hintText: widget.hintText,
        fillColor: widget.filledColor,
        helperStyle: widget.hintStyle ?? themeData.textTheme.bodySmall,
        hintStyle: widget.hintStyle ??
            themeData.textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3)),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isState != null
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isHide = !isHide;
                  });
                },
                child: SizedBox(
                  width: widget.suffixWidth ?? 20,
                  height: widget.suffixHeight ?? 20,
                  child: Center(
                    child: SvgPicture.asset(
                      !isHide
                          ? 'Assets.icons.viewHideIcon'
                          : 'assets/Icons/show_pass.svg',
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
              )
            : widget.suffixIcon != null
                ? Container(
                    padding: const EdgeInsetsDirectional.only(end: 2.0),
                    width: widget.suffixWidth ?? 20,
                    height: widget.suffixHeight ?? 20,
                    child: widget.suffixIcon,
                  )
                : null,
        isDense: false,
        labelText: widget.labelText,
        labelStyle: themeData.textTheme.labelMedium,
        alignLabelWithHint: true,
        border: widget.border,
        enabledBorder: widget.border,
        disabledBorder: widget.border,
        focusedBorder: widget.border,
        errorBorder: widget.border,
        contentPadding: widget.contentPadding ??
            EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 25,
            ),
      ),
    );
  }
}
