import 'package:tf_ecommerce/SRC/exports.dart';

class AppText extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final TextStyle? style;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? softWrap;
  final TextAlign? textAlign;

  const AppText({
    super.key,
    this.onTap,
    required this.text,
    this.overflow,
    this.style,
    this.softWrap,
    this.maxLines,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        child: _text(context),
      );
    }
    return _text(context);
  }

  _text(BuildContext context) => Text(
        text,
        style: style ?? Theme.of(context).textTheme.bodyMedium,
        overflow: overflow ?? TextOverflow.ellipsis,
        maxLines: maxLines,
        softWrap: softWrap,
        textAlign: textAlign,
      );
}
