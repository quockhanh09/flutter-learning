
import 'package:flutter_learning/my_movies/features/home/domain/entities/movie.dart';
import 'package:flutter_learning/my_movies/features/home/domain/repositories/movie_repository.dart';


class GetMovies {
  final MovieRepository repository;

  GetMovies(this.repository);

  Future<List<Movie>?> getNowPlayingMovies() async {
    return await repository.getMovies();
  }

  Future<List<Movie>?> getUpcommingMovie() {
    return repository.getUpcommingMovies();
  }
}
