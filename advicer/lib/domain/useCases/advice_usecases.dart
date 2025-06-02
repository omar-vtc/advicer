import 'package:advicer/data/repositories/advice_repo_impl.dart';
import 'package:advicer/domain/entities/advice_entity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCases {
  final adviceRepo = AdviceRepoImpl();
  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDataSource();
    //space for business logic

    //call a repositary first to get the data
    //and then proceed with busniss logic
    // then execute the following code.
    // await Future.delayed(const Duration(seconds: 2), () {});

    // call to repo went successful
    // return right(AdviceEntity(id: 1, advice: "Advice to test!!"));

    // repo call went wrong
    // return left(ServerFailure());
  }
}
