import 'package:dartz/dartz.dart';

abstract class UseCaseRemote<E, S, Params> {
  Future<Either<E, S>> call({Params params});
}

abstract class UseCaseLocal<S, Params> {
  S call({Params params});
}
