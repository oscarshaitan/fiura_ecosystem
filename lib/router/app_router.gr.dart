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
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:fiura_ecosystem/features/artists/presentation/pages/artist_screen.dart'
    as _i12;
import 'package:fiura_ecosystem/features/artists/presentation/pages/create_artist_screen.dart'
    as _i8;
import 'package:fiura_ecosystem/features/artits_detail_screen/artist_detail.dart'
    as _i4;
import 'package:fiura_ecosystem/features/home/home_screen.dart' as _i3;
import 'package:fiura_ecosystem/features/judge/presentation/pages/create_judge_screen.dart'
    as _i6;
import 'package:fiura_ecosystem/features/judge/presentation/pages/view_judge_screen.dart'
    as _i13;
import 'package:fiura_ecosystem/features/login/presentation/pages/login_screen.dart'
    as _i2;
import 'package:fiura_ecosystem/features/posts/presentation/pages/create_post_screen.dart'
    as _i9;
import 'package:fiura_ecosystem/features/posts/presentation/pages/posts_screen.dart'
    as _i11;
import 'package:fiura_ecosystem/features/splash/presentation/pages/splash_screen.dart'
    as _i1;
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/create_sponsor_screen.dart'
    as _i7;
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/sponsor_detail_screen.dart'
    as _i5;
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/view_sponsor_screen.dart'
    as _i14;
import 'package:fiura_ecosystem/features/user/profile_screen.dart' as _i10;
import 'package:flutter/material.dart' as _i16;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    ArtistsDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ArtistsDetailScreenRouteArgs>(
          orElse: () => ArtistsDetailScreenRouteArgs(
              artistId: pathParams.getString('artistId')));
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.ArtistsDetailScreen(
          key: args.key,
          artistId: args.artistId,
        ),
      );
    },
    SponsorDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SponsorDetailScreenRouteArgs>(
          orElse: () => SponsorDetailScreenRouteArgs(
              sponsorId: pathParams.getString('sponsorId')));
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.SponsorDetailScreen(
          key: args.key,
          sponsorId: args.sponsorId,
        ),
      );
    },
    CreateJudgeScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.CreateJudgeScreen(),
      );
    },
    CreateSponsorScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.CreateSponsorScreen(),
      );
    },
    CreateArtistScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.CreateArtistScreen(),
      );
    },
    CreatePostScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreatePostScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
      );
    },
    PostsScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.PostsScreen(),
      );
    },
    ArtistsScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.ArtistsScreen(),
      );
    },
    ViewJudgeScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.ViewJudgeScreen(),
      );
    },
    ViewSponsorScreenRoute.name: (routeData) {
      return _i15.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.ViewSponsorScreen(),
      );
    },
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i15.RouteConfig(
          LoginScreenRoute.name,
          path: 'login',
        ),
        _i15.RouteConfig(
          HomeScreenRoute.name,
          path: 'home',
          children: [
            _i15.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeScreenRoute.name,
              redirectTo: 'posts',
              fullMatch: true,
            ),
            _i15.RouteConfig(
              PostsScreenRoute.name,
              path: 'posts',
              parent: HomeScreenRoute.name,
            ),
            _i15.RouteConfig(
              ArtistsScreenRoute.name,
              path: 'artists',
              parent: HomeScreenRoute.name,
            ),
            _i15.RouteConfig(
              ViewJudgeScreenRoute.name,
              path: 'view-judges',
              parent: HomeScreenRoute.name,
            ),
            _i15.RouteConfig(
              ViewSponsorScreenRoute.name,
              path: 'view-sponsors',
              parent: HomeScreenRoute.name,
            ),
          ],
        ),
        _i15.RouteConfig(
          ArtistsDetailScreenRoute.name,
          path: 'detail/:artistId',
        ),
        _i15.RouteConfig(
          SponsorDetailScreenRoute.name,
          path: 'detail/:sponsorId',
        ),
        _i15.RouteConfig(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        ),
        _i15.RouteConfig(
          CreateSponsorScreenRoute.name,
          path: 'create-sponsor',
        ),
        _i15.RouteConfig(
          CreateArtistScreenRoute.name,
          path: 'create-artist',
        ),
        _i15.RouteConfig(
          CreatePostScreenRoute.name,
          path: 'create-post',
        ),
        _i15.RouteConfig(
          ProfileScreenRoute.name,
          path: 'profile',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i15.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i15.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'login',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i15.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i15.PageRouteInfo>? children})
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
    extends _i15.PageRouteInfo<ArtistsDetailScreenRouteArgs> {
  ArtistsDetailScreenRoute({
    _i16.Key? key,
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

  final _i16.Key? key;

  final String artistId;

  @override
  String toString() {
    return 'ArtistsDetailScreenRouteArgs{key: $key, artistId: $artistId}';
  }
}

/// generated route for
/// [_i5.SponsorDetailScreen]
class SponsorDetailScreenRoute
    extends _i15.PageRouteInfo<SponsorDetailScreenRouteArgs> {
  SponsorDetailScreenRoute({
    _i16.Key? key,
    required String sponsorId,
  }) : super(
          SponsorDetailScreenRoute.name,
          path: 'detail/:sponsorId',
          args: SponsorDetailScreenRouteArgs(
            key: key,
            sponsorId: sponsorId,
          ),
          rawPathParams: {'sponsorId': sponsorId},
        );

  static const String name = 'SponsorDetailScreenRoute';
}

class SponsorDetailScreenRouteArgs {
  const SponsorDetailScreenRouteArgs({
    this.key,
    required this.sponsorId,
  });

  final _i16.Key? key;

  final String sponsorId;

  @override
  String toString() {
    return 'SponsorDetailScreenRouteArgs{key: $key, sponsorId: $sponsorId}';
  }
}

/// generated route for
/// [_i6.CreateJudgeScreen]
class CreateJudgeScreenRoute extends _i15.PageRouteInfo<void> {
  const CreateJudgeScreenRoute()
      : super(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        );

  static const String name = 'CreateJudgeScreenRoute';
}

/// generated route for
/// [_i7.CreateSponsorScreen]
class CreateSponsorScreenRoute extends _i15.PageRouteInfo<void> {
  const CreateSponsorScreenRoute()
      : super(
          CreateSponsorScreenRoute.name,
          path: 'create-sponsor',
        );

  static const String name = 'CreateSponsorScreenRoute';
}

/// generated route for
/// [_i8.CreateArtistScreen]
class CreateArtistScreenRoute extends _i15.PageRouteInfo<void> {
  const CreateArtistScreenRoute()
      : super(
          CreateArtistScreenRoute.name,
          path: 'create-artist',
        );

  static const String name = 'CreateArtistScreenRoute';
}

/// generated route for
/// [_i9.CreatePostScreen]
class CreatePostScreenRoute extends _i15.PageRouteInfo<void> {
  const CreatePostScreenRoute()
      : super(
          CreatePostScreenRoute.name,
          path: 'create-post',
        );

  static const String name = 'CreatePostScreenRoute';
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileScreenRoute extends _i15.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i11.PostsScreen]
class PostsScreenRoute extends _i15.PageRouteInfo<void> {
  const PostsScreenRoute()
      : super(
          PostsScreenRoute.name,
          path: 'posts',
        );

  static const String name = 'PostsScreenRoute';
}

/// generated route for
/// [_i12.ArtistsScreen]
class ArtistsScreenRoute extends _i15.PageRouteInfo<void> {
  const ArtistsScreenRoute()
      : super(
          ArtistsScreenRoute.name,
          path: 'artists',
        );

  static const String name = 'ArtistsScreenRoute';
}

/// generated route for
/// [_i13.ViewJudgeScreen]
class ViewJudgeScreenRoute extends _i15.PageRouteInfo<void> {
  const ViewJudgeScreenRoute()
      : super(
          ViewJudgeScreenRoute.name,
          path: 'view-judges',
        );

  static const String name = 'ViewJudgeScreenRoute';
}

/// generated route for
/// [_i14.ViewSponsorScreen]
class ViewSponsorScreenRoute extends _i15.PageRouteInfo<void> {
  const ViewSponsorScreenRoute()
      : super(
          ViewSponsorScreenRoute.name,
          path: 'view-sponsors',
        );

  static const String name = 'ViewSponsorScreenRoute';
}
