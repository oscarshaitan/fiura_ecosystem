// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:fiura_ecosystem/features/artists/presentation/pages/artist_screen.dart'
    as _i10;
import 'package:fiura_ecosystem/features/artists/presentation/pages/create_artist_screen.dart'
    as _i7;
import 'package:fiura_ecosystem/features/artits_detail_screen/artist_detail.dart'
    as _i4;
import 'package:fiura_ecosystem/features/home/home_screen.dart' as _i3;
import 'package:fiura_ecosystem/features/judge/presentation/pages/create_judge_screen.dart'
    as _i5;
import 'package:fiura_ecosystem/features/login/presentation/pages/login_screen.dart'
    as _i2;
import 'package:fiura_ecosystem/features/posts/posts_screen.dart' as _i9;
import 'package:fiura_ecosystem/features/posts/presentation/pages/create_post_screen.dart'
    as _i8;
import 'package:fiura_ecosystem/features/splash/presentation/pages/splash_screen.dart'
    as _i1;
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/create_sponsor_screen.dart'
    as _i6;
import 'package:flutter/material.dart' as _i12;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    ArtistsDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ArtistsDetailScreenRouteArgs>(
          orElse: () => ArtistsDetailScreenRouteArgs(
              artistId: pathParams.getString('artistId')));
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.ArtistsDetailScreen(
          key: args.key,
          artistId: args.artistId,
        ),
      );
    },
    CreateJudgeScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.CreateJudgeScreen(),
      );
    },
    CreateSponsorScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.CreateSponsorScreen(),
      );
    },
    CreateArtistScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.CreateArtistScreen(),
      );
    },
    CreatePostScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.CreatePostScreen(),
      );
    },
    PostsScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.PostsScreen(),
      );
    },
    ArtistsScreenRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.ArtistsScreen(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          LoginScreenRoute.name,
          path: 'login',
        ),
        _i11.RouteConfig(
          HomeScreenRoute.name,
          path: 'home',
          children: [
            _i11.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeScreenRoute.name,
              redirectTo: 'posts',
              fullMatch: true,
            ),
            _i11.RouteConfig(
              PostsScreenRoute.name,
              path: 'posts',
              parent: HomeScreenRoute.name,
            ),
            _i11.RouteConfig(
              ArtistsScreenRoute.name,
              path: 'artists',
              parent: HomeScreenRoute.name,
            ),
          ],
        ),
        _i11.RouteConfig(
          ArtistsDetailScreenRoute.name,
          path: 'detail/:artistId',
        ),
        _i11.RouteConfig(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        ),
        _i11.RouteConfig(
          CreateSponsorScreenRoute.name,
          path: 'create-sponsor',
        ),
        _i11.RouteConfig(
          CreateArtistScreenRoute.name,
          path: 'create-artist',
        ),
        _i11.RouteConfig(
          CreatePostScreenRoute.name,
          path: 'create-post',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i11.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i11.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'login',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i11.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.ArtistsDetailScreen]
class ArtistsDetailScreenRoute
    extends _i11.PageRouteInfo<ArtistsDetailScreenRouteArgs> {
  ArtistsDetailScreenRoute({
    _i12.Key? key,
    required String artistId,
  }) : super(
          ArtistsDetailScreenRoute.name,
          path: 'detail/:artistId',
          args: ArtistsDetailScreenRouteArgs(
            key: key,
            artistId: artistId,
          ),
          rawPathParams: {'artistId': artistId},
        );

  static const String name = 'ArtistsDetailScreenRoute';
}

class ArtistsDetailScreenRouteArgs {
  const ArtistsDetailScreenRouteArgs({
    this.key,
    required this.artistId,
  });

  final _i12.Key? key;

  final String artistId;

  @override
  String toString() {
    return 'ArtistsDetailScreenRouteArgs{key: $key, artistId: $artistId}';
  }
}

/// generated route for
/// [_i5.CreateJudgeScreen]
class CreateJudgeScreenRoute extends _i11.PageRouteInfo<void> {
  const CreateJudgeScreenRoute()
      : super(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        );

  static const String name = 'CreateJudgeScreenRoute';
}

/// generated route for
/// [_i6.CreateSponsorScreen]
class CreateSponsorScreenRoute extends _i11.PageRouteInfo<void> {
  const CreateSponsorScreenRoute()
      : super(
          CreateSponsorScreenRoute.name,
          path: 'create-sponsor',
        );

  static const String name = 'CreateSponsorScreenRoute';
}

/// generated route for
/// [_i7.CreateArtistScreen]
class CreateArtistScreenRoute extends _i11.PageRouteInfo<void> {
  const CreateArtistScreenRoute()
      : super(
          CreateArtistScreenRoute.name,
          path: 'create-artist',
        );

  static const String name = 'CreateArtistScreenRoute';
}

/// generated route for
/// [_i8.CreatePostScreen]
class CreatePostScreenRoute extends _i11.PageRouteInfo<void> {
  const CreatePostScreenRoute()
      : super(
          CreatePostScreenRoute.name,
          path: 'create-post',
        );

  static const String name = 'CreatePostScreenRoute';
}

/// generated route for
/// [_i9.PostsScreen]
class PostsScreenRoute extends _i11.PageRouteInfo<void> {
  const PostsScreenRoute()
      : super(
          PostsScreenRoute.name,
          path: 'posts',
        );

  static const String name = 'PostsScreenRoute';
}

/// generated route for
/// [_i10.ArtistsScreen]
class ArtistsScreenRoute extends _i11.PageRouteInfo<void> {
  const ArtistsScreenRoute()
      : super(
          ArtistsScreenRoute.name,
          path: 'artists',
        );

  static const String name = 'ArtistsScreenRoute';
}
