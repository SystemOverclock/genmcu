import 'package:flutter/material.dart';
import 'package:genmcu/app/core/const/const.dart';
import 'package:genmcu/app/core/models/models.dart';
import 'package:genmcu/app/core/utils/utils.dart';
import 'package:genmcu/app/core/widgets/widgets.dart';
import 'package:get/get.dart';

class AppMoviesList extends StatelessWidget {
  const AppMoviesList({
    super.key,
    required this.listTitle,
    required this.movies,
  });
  final String listTitle;
  final RxList<Movie> movies;

  @override
  Widget build(BuildContext context) {
    ScrollController listController = ScrollController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          listTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: AppConstant.posterSpace,
          width: AppScreenSize.screenWidth,
          child: Obx(
            () => ListView.builder(
              controller: listController,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: movies.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstant.smallPadding,
                ),
                child: SizedBox(
                  width: AppConstant.posterWidth,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppConstant.smallPadding,
                        ),
                        child: movies[index].posterPath != null
                            ? Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                            AppConstant.posterBorder)),
                                    child: Image.network(
                                        movies[index].posterPath!,
                                        height: AppConstant.posterHeight,
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                      if (loadingProgress == null) {
                                        return child;
                                      } else {
                                        return const SizedBox(
                                          height: AppConstant.posterHeight,
                                          child: Center(child: AppSpinner()),
                                        );
                                      }
                                    }),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: AppConstant.xSmallPadding,
                                      right: AppConstant.mediumPadding,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Badge(
                                        largeSize: AppConstant.badgeSize,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: AppConstant.smallPadding,
                                        ),
                                        backgroundColor: Colors.white38,
                                        label: Text(
                                          (index + 1).toString(),
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : const Placeholder(
                                fallbackHeight: AppConstant.posterWidth,
                              ),
                      ),
                      Text(
                        movies[index].title,
                        style: const TextStyle(color: Colors.white),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppConstant.smallPadding),
                        child: Text(
                          "(${movies[index].releaseDate.year})",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.star,
                              color: Colors.yellow, size: 18),
                          Text(
                            "${movies[index].voteAverage}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
