import 'package:dartz/dartz.dart';

import 'package:waraq/core/errors/failures.dart';
import 'package:waraq/core/utils/api_service.dart';

import 'package:waraq/features/home/data/models/BookModel.dart';

import 'home_repo.dart';

class HomeRepoImpl extends HomeRepo{

  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
   try {
     var data = await apiService.get(endPoint: 'volumes?q=subject: programming');

     List<BookModel> books = [];
     for(var item in data['items']){
        books.add(BookModel.fromJson(item));
     }
     return right(books);
   }catch (e) {
     return left(ServerFailure());
   }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}