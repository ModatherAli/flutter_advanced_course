import 'package:dio/dio.dart';
import 'package:movies/data/response/movies_response.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'movies_service.g.dart';

const String baseUrl =
    "https://api.mockfly.dev/mocks/e19191e9-2732-48db-aa29-14cf7caef8d9";

@RestApi(baseUrl: baseUrl)
abstract class MoviesService {
  factory MoviesService(Dio dio,
      {String baseUrl, ParseErrorLogger errorLogger}) = _MoviesService;

  @GET("/entertainment/movies")
  Future<HttpResponse<MoviesResponse>> getMovies();
}
