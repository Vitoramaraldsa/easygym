import 'dart:math';

import 'package:easygym/domain/enum/training_type.dart';
import 'package:easygym/domain/models/training.dart';

class TrainingUsecases {
  Future<Training> create({
    required String id,
    required String title,
    required String description,
    required int duration,
    required int calories,
    required double distanceKm,
    required int steps,
    required TrainingType type,
  }) async {
    final random = Random();
    return Training(
      id: random.nextInt(10),
      title: title,
      description: description,
      duration: duration,
      calories: calories,
      distanceKm: distanceKm,
      steps: steps,
      type: type,
    );
  }

  Future<Training> update(Training training) async {
    return training.copyWith(type: TrainingType.walk);
  }

  Future<List<Training>> list() async {
    return List.generate(
      4,
      (index) => Training(
        id: index,
        title: 'Training $index',
        description: 'Description for training $index',
        duration: 30 + index * 5,
        calories: 200 + index * 50,
        distanceKm: 2.0 + index * 0.5,
        steps: 3000 + index * 500,
        type: TrainingType.walk,
      ),
    );
  }

  Future<void> delete(Training training) async {}
}
