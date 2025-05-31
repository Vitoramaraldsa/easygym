import 'package:flutter/widgets.dart';

import 'package:easygym/domain/enum/training_type.dart';

class Training {
  final int id;
  final String title;
  final String description;
  final int duration;
  final int? calories;
  final double? distanceKm;
  final int? steps;
  final TrainingType type;

  const Training({
    required this.id,
    required this.title,
    required this.description,
    required this.duration,
    required this.calories,
    required this.distanceKm,
    required this.steps,
    required this.type,
  });

  Training copyWith({int? id, String? title, String? description, int? duration, ValueGetter<int?>? calories, ValueGetter<double?>? distanceKm, ValueGetter<int?>? steps, TrainingType? type}) {
    return Training(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      duration: duration ?? this.duration,
      calories: calories != null ? calories() : this.calories,
      distanceKm: distanceKm != null ? distanceKm() : this.distanceKm,
      steps: steps != null ? steps() : this.steps,
      type: type ?? this.type,
    );
  }
}
