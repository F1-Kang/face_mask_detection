import 'package:camera/camera.dart';
import 'package:face_mask_detection/ui/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

late List<CameraDescription> cameras;

void main() async {
  cameras = await availableCameras();
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Live Object Detection TFLite',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomeView(),
      );
}
