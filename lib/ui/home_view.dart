import 'package:face_mask_detection/models/screen_params.dart';
import 'package:face_mask_detection/ui/detector_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenParams.screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      key: GlobalKey(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          'assets/tfl_logo.png',
          fit: BoxFit.contain,
        ),
      ),
      body: const DetectorWidget(),
    );
  }
}
