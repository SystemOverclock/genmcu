import 'dart:convert';
import 'package:genmcu/app/core/utils/utils.dart';
import 'package:get/get.dart';
import 'package:genmcu/app/core/models/models.dart';

class HomeController extends GetxController {
  RxList<Movie> moviesByTimeline = <Movie>[].obs;
  RxList<Movie> moviesByName = <Movie>[].obs;
  RxList<Movie> moviesNewerByReleaseDate = <Movie>[].obs;
  RxList<Movie> moviesOlderByReleaseDate = <Movie>[].obs;
  RxBool splashEnabled = true.obs;

  @override
  Future<void> onInit() async {
    var request = await AppHttpRequest.get(
        url: "genmcu.free.beeceptor.com", path: "/movies");
    if (request.statusCode == 200) {
      var data = json.decode(request.body);
      for (var movie in data["mcu"]) {
        moviesByTimeline.add(Movie.fromJson(movie));
      }
      moviesByName.addAll(moviesByTimeline);
      moviesNewerByReleaseDate.addAll(moviesByTimeline);
      moviesOlderByReleaseDate.addAll(moviesByTimeline);
      moviesByName.sort((a, b) => a.title.compareTo(b.title));
      moviesNewerByReleaseDate
          .sort((b, a) => a.releaseDate.compareTo(b.releaseDate));
      moviesOlderByReleaseDate
          .sort((a, b) => a.releaseDate.compareTo(b.releaseDate));
    }
    Future.delayed(
      const Duration(seconds: 3),
      () => splashEnabled.value = false,
    );
    super.onInit();
  }
}
