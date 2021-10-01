import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pilemnesia/app/modules/detail/controllers/detail_controller.dart';
import 'package:pilemnesia/app/views/clipper.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DetailMovieView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    Size size = context.mediaQuery.size;
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: 270,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: size.height / 2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 180,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: controller.movies.value.posterPath == null
                                ? AssetImage("assets/images/not-found.png")
                                : CachedNetworkImageProvider(
                                    "https://image.tmdb.org/t/p/w185${controller.movies.value.posterPath}"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 35,
                        color: Colors.blue,
                      ),
                      onPressed: () => Get.back(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      controller.movies.value.title,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                controller.movies.value.releaseDate.year.toString(),
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                controller.movies.value.overview,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
