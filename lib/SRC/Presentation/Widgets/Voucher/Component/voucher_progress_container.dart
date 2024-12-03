import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class VoucherProgressContainer extends StatelessWidget {
  final bool isDone;
  final bool isProgressing;
  final dynamic progressValue;
  final String title;
  final dynamic imagePath;
  final String description;

  const VoucherProgressContainer({
    super.key,
    required this.isDone,
    required this.isProgressing,
    required this.progressValue,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 70,
          height: 70,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: theme.scaffoldBackgroundColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        color: Theme.of(context).cardColor.withOpacity(0.1),
                        blurRadius: 8,
                      ),
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.primaryColorDark,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: imagePath is IconData
                        ? DisplayImage(
                            imageAddress: imagePath,
                            color: theme.primaryColorDark,
                          )
                        : DisplayImage(imageAddress: imagePath),
                  ),
                ),
              ),
              isDone
                  ? const Positioned(
                      top: 5,
                      right: 8,
                      child: SelectedMarkContainer(
                          width: 20, height: 20, iconSize: 15))
                  : const SizedBox.shrink(),
              isProgressing
                  ? Positioned(
                      top: 5,
                      left: 5,
                      child: CircularPercentIndicator(
                        radius: 30,
                        progressColor: theme.primaryColorDark,
                        percent: progressValue,
                        lineWidth: 3,
                        backgroundColor: theme.scaffoldBackgroundColor,
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        5.y,
        AppText(
          text: title,
          style: theme.textTheme.labelMedium!.copyWith(fontSize: 12),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: AppText(
            text: description,
            style: theme.textTheme.titleSmall,
            maxLines: 4,
          ),
        )
      ],
    );
  }
}

//CircularPercentIndicator(
//       radius: 40.0,
//       lineWidth: 10.0,
//       percent: 0.2,
//       // backgroundColor: theme.scaffoldBackgroundColor,
//       center: new Text("100%"),
//       progressColor: theme.primaryColorDark,
//     );
