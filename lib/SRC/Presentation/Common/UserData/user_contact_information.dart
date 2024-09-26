import 'package:tf_ecommerce/SRC/exports.dart';

class UserContactInformation extends StatelessWidget {
  final double padding;
  const UserContactInformation({super.key, this.padding = 60});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: theme.canvasColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: AppStrings.contactInfo,
                style: theme.textTheme.labelMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: "+921219090990",
                          style: theme.textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        AppText(
                          text: "ali@itecExperts.com",
                          style: theme.textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  5.w,
                  EditButton(onTap: () {
                    CustomNewBottomSheet.customBottomSheet(ContactInfoTile(),
                        AppStrings.contactInfo, context, 0.5, false);
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
