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
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:fiura_ecosystem/features/admins/presentation/pages/admins_screen.dart'
    as _i16;
import 'package:fiura_ecosystem/features/admins/presentation/pages/create_admin_screen.dart'
    as _i4;
import 'package:fiura_ecosystem/features/artists/presentation/pages/artist_screen.dart'
    as _i13;
import 'package:fiura_ecosystem/features/artists/presentation/pages/create_artist_screen.dart'
    as _i9;
import 'package:fiura_ecosystem/features/artits_detail_screen/artist_detail.dart'
    as _i8;
import 'package:fiura_ecosystem/features/home/home_screen.dart' as _i3;
import 'package:fiura_ecosystem/features/judge/presentation/pages/create_judge_screen.dart'
    as _i7;
import 'package:fiura_ecosystem/features/judge/presentation/pages/view_judge_screen.dart'
    as _i14;
import 'package:fiura_ecosystem/features/login/presentation/pages/login_screen.dart'
    as _i2;
import 'package:fiura_ecosystem/features/posts/presentation/pages/create_post_screen.dart'
    as _i10;
import 'package:fiura_ecosystem/features/posts/presentation/pages/posts_screen.dart'
    as _i12;
import 'package:fiura_ecosystem/features/splash/presentation/pages/splash_screen.dart'
    as _i1;
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/create_sponsor_screen.dart'
    as _i6;
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/sponsor_detail_screen.dart'
    as _i5;
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/view_sponsor_screen.dart'
    as _i15;
import 'package:fiura_ecosystem/features/user/profile_screen.dart' as _i11;
import 'package:flutter/material.dart' as _i18;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    CreateAdminScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.CreateAdminScreen(),
      );
    },
    SponsorDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SponsorDetailScreenRouteArgs>(
          orElse: () => SponsorDetailScreenRouteArgs(
              sponsorId: pathParams.getString('sponsorId')));
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.SponsorDetailScreen(
          key: args.key,
          sponsorId: args.sponsorId,
        ),
      );
    },
    CreateSponsorScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.CreateSponsorScreen(),
      );
    },
    CreateJudgeScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.CreateJudgeScreen(),
      );
    },
    ArtistsDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ArtistsDetailScreenRouteArgs>(
          orElse: () => ArtistsDetailScreenRouteArgs(
              artistId: pathParams.getString('artistId')));
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.ArtistsDetailScreen(
          key: args.key,
          artistId: args.artistId,
        ),
      );
    },
    CreateArtistScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreateArtistScreen(),
      );
    },
    CreatePostScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.CreatePostScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfileScreen(),
      );
    },
    PostsScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.PostsScreen(),
      );
    },
    ArtistsScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.ArtistsScreen(),
      );
    },
    ViewJudgeScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.ViewJudgeScreen(),
      );
    },
    ViewSponsorScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.ViewSponsorScreen(),
      );
    },
    AdminScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.AdminScreen(),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i17.RouteConfig(
          LoginScreenRoute.name,
          path: 'login',
        ),
        _i17.RouteConfig(
          HomeScreenRoute.name,
          path: 'home',
          children: [
            _i17.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeScreenRoute.name,
              redirectTo: 'posts',
              fullMatch: true,
            ),
            _i17.RouteConfig(
              PostsScreenRoute.name,
              path: 'posts',
              parent: HomeScreenRoute.name,
            ),
            _i17.RouteConfig(
              ArtistsScreenRoute.name,
              path: 'artists',
              parent: HomeScreenRoute.name,
            ),
            _i17.RouteConfig(
              ViewJudgeScreenRoute.name,
              path: 'view-judges',
              parent: HomeScreenRoute.name,
            ),
            _i17.RouteConfig(
              ViewSponsorScreenRoute.name,
              path: 'view-sponsors',
              parent: HomeScreenRoute.name,
            ),
            _i17.RouteConfig(
              AdminScreenRoute.name,
              path: 'view-admins',
              parent: HomeScreenRoute.name,
            ),
          ],
        ),
        _i17.RouteConfig(
          CreateAdminScreenRoute.name,
          path: 'create-admin',
        ),
        _i17.RouteConfig(
          SponsorDetailScreenRoute.name,
          path: 'detail/:sponsorId',
        ),
        _i17.RouteConfig(
          CreateSponsorScreenRoute.name,
          path: 'create-sponsor',
        ),
        _i17.RouteConfig(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        ),
        _i17.RouteConfig(
          ArtistsDetailScreenRoute.name,
          path: 'detail/:artistId',
        ),
        _i17.RouteConfig(
          CreateArtistScreenRoute.name,
          path: 'create-artist',
        ),
        _i17.RouteConfig(
          CreatePostScreenRoute.name,
          path: 'create-post',
        ),
        _i17.RouteConfig(
          ProfileScreenRoute.name,
          path: 'profile',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i17.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i17.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'login',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i17.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.CreateAdminScreen]
class CreateAdminScreenRoute extends _i17.PageRouteInfo<void> {
  const CreateAdminScreenRoute()
      : super(
          CreateAdminScreenRoute.name,
          path: 'create-admin',
        );

  static const String name = 'CreateAdminScreenRoute';
}

/// generated route for
/// [_i5.SponsorDetailScreen]
class SponsorDetailScreenRoute
    extends _i17.PageRouteInfo<SponsorDetailScreenRouteArgs> {
  SponsorDetailScreenRoute({
    _i18.Key? key,
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

  final _i18.Key? key;

  final String sponsorId;

  @override
  String toString() {
    return 'SponsorDetailScreenRouteArgs{key: $key, sponsorId: $sponsorId}';
  }
}

/// generated route for
/// [_i6.CreateSponsorScreen]
class CreateSponsorScreenRoute extends _i17.PageRouteInfo<void> {
  const CreateSponsorScreenRoute()
      : super(
          CreateSponsorScreenRoute.name,
          path: 'create-sponsor',
        );

  static const String name = 'CreateSponsorScreenRoute';
}

/// generated route for
/// [_i7.CreateJudgeScreen]
class CreateJudgeScreenRoute extends _i17.PageRouteInfo<void> {
  const CreateJudgeScreenRoute()
      : super(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        );

  static const String name = 'CreateJudgeScreenRoute';
}

/// generated route for
/// [_i8.ArtistsDetailScreen]
class ArtistsDetailScreenRoute
    extends _i17.PageRouteInfo<ArtistsDetailScreenRouteArgs> {
  ArtistsDetailScreenRoute({
    _i18.Key? key,
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

  final _i18.Key? key;

  final String artistId;

  @override
  String toString() {
    return 'ArtistsDetailScreenRouteArgs{key: $key, artistId: $artistId}';
  }
}

/// generated route for
/// [_i9.CreateArtistScreen]
class CreateArtistScreenRoute extends _i17.PageRouteInfo<void> {
  const CreateArtistScreenRoute()
      : super(
          CreateArtistScreenRoute.name,
          path: 'create-artist',
        );

  static const String name = 'CreateArtistScreenRoute';
}

/// generated route for
/// [_i10.CreatePostScreen]
class CreatePostScreenRoute extends _i17.PageRouteInfo<void> {
  const CreatePostScreenRoute()
      : super(
          CreatePostScreenRoute.name,
          path: 'create-post',
        );

  static const String name = 'CreatePostScreenRoute';
}

/// generated route for
/// [_i11.ProfileScreen]
class ProfileScreenRoute extends _i17.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i12.PostsScreen]
class PostsScreenRoute extends _i17.PageRouteInfo<void> {
  const PostsScreenRoute()
      : super(
          PostsScreenRoute.name,
          path: 'posts',
        );

  static const String name = 'PostsScreenRoute';
}

/// generated route for
/// [_i13.ArtistsScreen]
class ArtistsScreenRoute extends _i17.PageRouteInfo<void> {
  const ArtistsScreenRoute()
      : super(
          ArtistsScreenRoute.name,
          path: 'artists',
        );

  static const String name = 'ArtistsScreenRoute';
}

/// generated route for
/// [_i14.ViewJudgeScreen]
class ViewJudgeScreenRoute extends _i17.PageRouteInfo<void> {
  const ViewJudgeScreenRoute()
      : super(
          ViewJudgeScreenRoute.name,
          path: 'view-judges',
        );

  static const String name = 'ViewJudgeScreenRoute';
}

/// generated route for
/// [_i15.ViewSponsorScreen]
class ViewSponsorScreenRoute extends _i17.PageRouteInfo<void> {
  const ViewSponsorScreenRoute()
      : super(
          ViewSponsorScreenRoute.name,
          path: 'view-sponsors',
        );

  static const String name = 'ViewSponsorScreenRoute';
}

/// generated route for
/// [_i16.AdminScreen]
class AdminScreenRoute extends _i17.PageRouteInfo<void> {
  const AdminScreenRoute()
      : super(
          AdminScreenRoute.name,
          path: 'view-admins',
        );

  static const String name = 'AdminScreenRoute';
}
