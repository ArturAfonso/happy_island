import 'package:bonfire/bonfire.dart';
import 'package:bonfire/player/simple_player.dart';
import 'package:happy_island/game_sprite_sheet.dart';

class GameHero extends SimplePlayer {
  GameHero(Vector2 position)
      : super(
          size: Vector2(50, 50),
          position: position,
          animation: SimpleDirectionAnimation(
              idleLeft: GameSpriteSheet.heroIdleLeft,
              idleRight: GameSpriteSheet.heroIdleRight,
              runLeft: GameSpriteSheet.heroRunLeft,
              runRight: GameSpriteSheet.heroRunRight),
          speed: 60,
        );
}
