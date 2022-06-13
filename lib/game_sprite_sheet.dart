import 'package:bonfire/bonfire.dart';
import 'package:flame/game.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
      'fHero_.png',
      SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 0)));

  static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
      'fHero_.png',
      SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get heroRunRight => SpriteAnimation.load(
      'fHero_.png',
      SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(0, 72)));

  static Future<SpriteAnimation> get heroRunLeft => SpriteAnimation.load(
      'fHero_.png',
      SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(24, 24),
          texturePosition: Vector2(96, 72)));
}
