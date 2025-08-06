import 'package:dartz/dartz.dart';
import 'package:waraq/core/errors/failures.dart';
import '../models/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}