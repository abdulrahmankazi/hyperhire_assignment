import 'package:flutter/material.dart';

extension sizedBox on double{
  SizedBox get sH => SizedBox(height: toDouble(),);
  SizedBox get sW => SizedBox(width: toDouble(),);
}