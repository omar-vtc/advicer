import 'package:advicer/domain/entities/advice_entity.dart';
import 'package:equatable/equatable.dart';

class AdviceDto extends AdviceEntity with EquatableMixin {
  AdviceDto({required super.id, required super.advice});

  /// factory function that destructs the json
  /// returns [AdviceDto]
  factory AdviceDto.fromJson(Map<String, dynamic> json) {
    return AdviceDto(id: json['advice_id'], advice: json['advice']);
  }
}
