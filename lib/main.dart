import 'package:bonfire/bonfire.dart';
import 'package:bonfire/tiled/model/tiled_world_data.dart';
import 'package:bonfire/widgets/bonfire_tiled_widget.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_island/game_hero.dart';

double tileSize = 32;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen;
  //Flame.device.setOrientation(DeviceOrientation.landscapeLeft);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(directional: JoystickDirectional()),
      map: TiledWorldMap(
        'island.json',
        forceTileSize: Size(tileSize, tileSize),
      ),
      cameraConfig: CameraConfig(
        zoom: 1, /* moveOnlyMapArea: true */
      ),
      player: GameHero(Vector2(18 * tileSize, 14 * tileSize)),
    );
  }
}
