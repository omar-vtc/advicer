import 'package:advicer/data/datasource/advice_remote_datasource.dart';
import 'package:advicer/domain/entities/advice_entity.dart';
import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/repositaries/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteDatasource adviceRemoteDatasource =
      AdviceRemoteDatasourceImpl();
  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource() async {
    /// call the [AdviceRemoteDatasource]
    final result = await adviceRemoteDatasource.getRandomAdviceFromAPI();
    return right(result);
  }
}
