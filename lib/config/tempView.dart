
import 'package:flutter/material.dart';
import 'package:vision_plus/ScopedModels/scopedModelSMDeliveryChallan.dart';
import 'package:vision_plus/config/baseView.dart';


class Template extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ScopedModelSMDeliveryChallan>(
      builder: (context, child, model) => Scaffold(
         body: Center(child: Text(this.runtimeType.toString()),),
      ));
  }
}