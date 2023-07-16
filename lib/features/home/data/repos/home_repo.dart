//Repository pattern (make methods inside abstract class (without implementation))
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //Either => (can return 2 types) left side => for errors , right side => return type right
  //there's many types of errors like (internet or ServerFail or chached and so on ..), so made Failure class
  // for all errors would happen
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
