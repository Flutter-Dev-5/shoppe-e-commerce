import 'package:flutter/cupertino.dart';

extension SizedBoxes on num {
  SizedBox get y => SizedBox(height: toDouble());
  SizedBox get x => SizedBox(width: toDouble());
}
