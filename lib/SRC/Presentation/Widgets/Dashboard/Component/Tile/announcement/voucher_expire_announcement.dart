import 'package:tf_ecommerce/SRC/Presentation/Widgets/Voucher/voucher.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class VoucherExpireAnnouncement extends StatelessWidget {
  const VoucherExpireAnnouncement({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        context.to(const Voucher());
      },
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.scaffoldBackgroundColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffD97474),
                    width: 6,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: DisplayImage(
                    imageWidth: 20,
                    imageHeight: 20,
                    imageAddress: pinkColorCartSVG,
                  ),
                ),
              ),
              15.w,
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      text: AppStrings.yourVoucherWillExpireDays,
                      style: theme.textTheme.labelMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    AppText(
                      text: AppStrings.dummy,
                      style: theme.textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
