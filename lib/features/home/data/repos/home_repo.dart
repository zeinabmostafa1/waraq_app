import 'package:dartz/dartz.dart';
import 'package:waraq/core/errors/failures.dart';

import '../models/BookModel.dart' show BookModel;

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}