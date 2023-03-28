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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:fiura_ecosystem/features/artists/artitis_screen.dart' as _i7;
import 'package:fiura_ecosystem/features/artits_detail_screen/artist_detail.dart'
    as _i4;
import 'package:fiura_ecosystem/features/home/home_screen.dart' as _i3;
import 'package:fiura_ecosystem/features/judge/presentation/pages/create_judge_screen.dart'
    as _i5;
import 'package:fiura_ecosystem/features/login/presentation/pages/login_screen.dart'
    as _i2;
import 'package:fiura_ecosystem/features/posts/posts_screen.dart' as _i6;
import 'package:fiura_ecosystem/features/splash/presentation/pages/splash_screen.dart'
    as _i1;
import 'package:flutter/material.dart' as _i9;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    ArtistsDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ArtistsDetailScreenRouteArgs>(
          orElse: () => ArtistsDetailScreenRouteArgs(
              artistId: pathParams.getString('artistId')));
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.ArtistsDetailScreen(
          key: args.key,
          artistId: args.artistId,
        ),
      );
    },
    CreateJudgeScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.CreateJudgeScreen(),
      );
    },
    PostsScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.PostsScreen(),
      );
    },
    ArtistsScreenRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.ArtistsScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          LoginScreenRoute.name,
          path: 'login',
        ),
        _i8.RouteConfig(
          HomeScreenRoute.name,
          path: 'home',
          children: [
            _i8.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeScreenRoute.name,
              redirectTo: 'posts',
              fullMatch: true,
            ),
            _i8.RouteConfig(
              PostsScreenRoute.name,
              path: 'posts',
              parent: HomeScreenRoute.name,
            ),
            _i8.RouteConfig(
              ArtistsScreenRoute.name,
              path: 'artists',
              parent: HomeScreenRoute.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          ArtistsDetailScreenRoute.name,
          path: 'detail/:artistId',
        ),
        _i8.RouteConfig(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i8.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i8.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'login',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i8.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i8.PageRouteInfo>? children})
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
    extends _i8.PageRouteInfo<ArtistsDetailScreenRouteArgs> {
  ArtistsDetailScreenRoute({
    _i9.Key? key,
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

  final _i9.Key? key;

  final String artistId;

  @override
  String toString() {
    return 'ArtistsDetailScreenRouteArgs{key: $key, artistId: $artistId}';
  }
}

/// generated route for
/// [_i5.CreateJudgeScreen]
class CreateJudgeScreenRoute extends _i8.PageRouteInfo<void> {
  const CreateJudgeScreenRoute()
      : super(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        );

  static const String name = 'CreateJudgeScreenRoute';
}

/// generated route for
/// [_i6.PostsScreen]
class PostsScreenRoute extends _i8.PageRouteInfo<void> {
  const PostsScreenRoute()
      : super(
          PostsScreenRoute.name,
          path: 'posts',
        );

  static const String name = 'PostsScreenRoute';
}

/// generated route for
/// [_i7.ArtistsScreen]
class ArtistsScreenRoute extends _i8.PageRouteInfo<void> {
  const ArtistsScreenRoute()
      : super(
          ArtistsScreenRoute.name,
          path: 'artists',
        );

  static const String name = 'ArtistsScreenRoute';
}
