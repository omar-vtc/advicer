import 'package:advicer/domain/entities/advice_entity.dart';

class AdviceUseCases {
  Future<AdviceEntity> getAdvice() async {
    //call a repositary first to get the data
    //and then proceed with busniss logic
    // then execute the following code.
    await Future.delayed(const Duration(seconds: 2), () {});
    return AdviceEntity(id: 1, advice: "Advice to test!!");
  }
}
