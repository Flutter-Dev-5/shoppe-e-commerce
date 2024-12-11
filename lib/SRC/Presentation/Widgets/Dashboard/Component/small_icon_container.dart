import 'dart:convert';

import 'package:tf_ecommerce/SRC/Data/Resources/image_types.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SmallIconContainer extends StatelessWidget {
  final dynamic iconPath;
  final bool isNotification;
  const SmallIconContainer(
      {super.key, required this.iconPath, this.isNotification = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 35,
          height: 35,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).canvasColor,
          ),
          child: iconPath is IconData
              ? Icon(
                  iconPath,
                  size: 16,
                  color: iconPath.toString() == AppAssets.appleIcon.toString()
                      ? Theme.of(context).primaryColorLight
                      : null,
                )
              : iconPath is String &&
                      iconPath.split('.').last.toLowerCase() == 'svg'
                  ? SvgPicture.asset(
                      iconPath,
                      width: 16,
                      height: 16,
                    )
                  : iconPath is String &&
                          imageExtension.contains(iconPath.split('.').last)
                      ? Image.asset(
                          iconPath,
                          width: 16,
                          height: 16,
                        )
                      : iconPath is String
                          ? Image.memory(
                              base64Decode(iconPath!),
                              width: 16,
                              height: 16,
                            )
                          : Container(),
        ),
        isNotification!
            ? Positioned(
                top: -0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  width: 10,
                  height: 10,
                ),
              )
            : Container(),
      ],
    );
  }
}
