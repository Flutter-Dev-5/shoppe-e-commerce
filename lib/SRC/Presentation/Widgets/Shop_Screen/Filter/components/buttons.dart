import 'package:tf_ecommerce/SRC/Presentation/Common/Buttons/outline_border_button.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ButtonsOfFilter extends StatelessWidget {
  const ButtonsOfFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: OutlineBorderButton(
            text: AppStrings.clear,
            onTap: () {},
          ),
        ),
        5.w,
        Expanded(
            flex: 5,
            child: SizedBox(
                height: 50,
                child: CommonButton(onTap: () {}, text: AppStrings.apply)))
      ],
    );
  }
}