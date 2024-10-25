

import 'package:flutter_learning/lesson_30_firestore/features/home/domain/entities/genre.dart';
import 'package:flutter_learning/lesson_30_firestore/features/home/domain/entities/image_configuration.dart';
import 'package:flutter_learning/lesson_30_firestore/features/home/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Genre>?> getGenre();
  Future<ImageConfigInfo?> getImageInfo();
  Future<List<Movie>?> getMovies();
  Future<List<Movie>?> getUpcommingMovies();
}
