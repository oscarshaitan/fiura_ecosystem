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
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:fiura/core/entities/artist_entity/artist_entity.dart' as _i24;
import 'package:fiura/core/entities/judge_entity/judge_entity.dart' as _i23;
import 'package:fiura/core/entities/sponsor_entity/sponsor_entity.dart' as _i22;
import 'package:fiura/features/admins/presentation/pages/admins_screen.dart'
    as _i19;
import 'package:fiura/features/admins/presentation/pages/create_admin_screen.dart'
    as _i4;
import 'package:fiura/features/artists/presentation/pages/artist_screen.dart'
    as _i16;
import 'package:fiura/features/artists/presentation/pages/create_artist_screen.dart'
    as _i10;
import 'package:fiura/features/artits_detail_screen/artist_detail.dart' as _i8;
import 'package:fiura/features/home/home_screen.dart' as _i3;
import 'package:fiura/features/judge/presentation/pages/create_judge_screen.dart'
    as _i7;
import 'package:fiura/features/judge/presentation/pages/view_judge_screen.dart'
    as _i17;
import 'package:fiura/features/judge_detail_screen/judge_detail.dart' as _i9;
import 'package:fiura/features/login/presentation/pages/login_screen.dart'
    as _i2;
import 'package:fiura/features/posts/presentation/pages/create_post_screen.dart'
    as _i11;
import 'package:fiura/features/posts/presentation/pages/posts_screen.dart'
    as _i14;
import 'package:fiura/features/schedule/presentation/pages/create_schedule_screen.dart'
    as _i12;
import 'package:fiura/features/schedule/presentation/pages/schedule_screen.dart'
    as _i15;
import 'package:fiura/features/splash/presentation/pages/splash_screen.dart'
    as _i1;
import 'package:fiura/features/sponsor/presentation/pages/create_sponsor_screen.dart'
    as _i6;
import 'package:fiura/features/sponsor/presentation/pages/sponsor_detail_screen.dart'
    as _i5;
import 'package:fiura/features/sponsor/presentation/pages/view_sponsor_screen.dart'
    as _i18;
import 'package:fiura/features/user/profile_screen.dart' as _i13;
import 'package:flutter/material.dart' as _i21;

class AppRouter extends _i20.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    CreateAdminScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.CreateAdminScreen(),
      );
    },
    SponsorDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SponsorDetailScreenRouteArgs>(
          orElse: () => SponsorDetailScreenRouteArgs(
              sponsorId: pathParams.getString('sponsorId')));
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.SponsorDetailScreen(
          key: args.key,
          sponsorId: args.sponsorId,
        ),
      );
    },
    CreateSponsorScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CreateSponsorScreenRouteArgs>(
          orElse: () => const CreateSponsorScreenRouteArgs());
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.CreateSponsorScreen(
          key: args.key,
          sponsor: args.sponsor,
        ),
      );
    },
    CreateJudgeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CreateJudgeScreenRouteArgs>(
          orElse: () => const CreateJudgeScreenRouteArgs());
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.CreateJudgeScreen(
          key: args.key,
          judge: args.judge,
        ),
      );
    },
    ArtistsDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ArtistsDetailScreenRouteArgs>(
          orElse: () => ArtistsDetailScreenRouteArgs(
              artistId: pathParams.getString('artistId')));
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.ArtistsDetailScreen(
          key: args.key,
          artistId: args.artistId,
        ),
      );
    },
    JudgeDetailScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<JudgeDetailScreenRouteArgs>(
          orElse: () => JudgeDetailScreenRouteArgs(
              judgeId: pathParams.getString('judgeId')));
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i9.JudgeDetailScreen(
          key: args.key,
          judgeId: args.judgeId,
        ),
      );
    },
    CreateArtistScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CreateArtistScreenRouteArgs>(
          orElse: () => const CreateArtistScreenRouteArgs());
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i10.CreateArtistScreen(
          key: args.key,
          artist: args.artist,
        ),
      );
    },
    CreatePostScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.CreatePostScreen(),
      );
    },
    CreateScheduleScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.CreateScheduleScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.ProfileScreen(),
      );
    },
    PostsScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.PostsScreen(),
      );
    },
    SchedulesScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SchedulesScreenRouteArgs>(
          orElse: () => const SchedulesScreenRouteArgs());
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i15.SchedulesScreen(key: args.key),
      );
    },
    ArtistsScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.ArtistsScreen(),
      );
    },
    ViewJudgeScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.ViewJudgeScreen(),
      );
    },
    ViewSponsorScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.ViewSponsorScreen(),
      );
    },
    AdminScreenRoute.name: (routeData) {
      return _i20.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i19.AdminScreen(),
      );
    },
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i20.RouteConfig(
          LoginScreenRoute.name,
          path: 'login',
        ),
        _i20.RouteConfig(
          HomeScreenRoute.name,
          path: 'home',
          children: [
            _i20.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeScreenRoute.name,
              redirectTo: 'posts',
              fullMatch: true,
            ),
            _i20.RouteConfig(
              PostsScreenRoute.name,
              path: 'posts',
              parent: HomeScreenRoute.name,
            ),
            _i20.RouteConfig(
              SchedulesScreenRoute.name,
              path: 'posts',
              parent: HomeScreenRoute.name,
            ),
            _i20.RouteConfig(
              ArtistsScreenRoute.name,
              path: 'artists',
              parent: HomeScreenRoute.name,
            ),
            _i20.RouteConfig(
              ViewJudgeScreenRoute.name,
              path: 'view-judges',
              parent: HomeScreenRoute.name,
            ),
            _i20.RouteConfig(
              ViewSponsorScreenRoute.name,
              path: 'view-sponsors',
              parent: HomeScreenRoute.name,
            ),
            _i20.RouteConfig(
              AdminScreenRoute.name,
              path: 'view-admins',
              parent: HomeScreenRoute.name,
            ),
          ],
        ),
        _i20.RouteConfig(
          CreateAdminScreenRoute.name,
          path: 'create-admin',
        ),
        _i20.RouteConfig(
          SponsorDetailScreenRoute.name,
          path: 'detail/:sponsorId',
        ),
        _i20.RouteConfig(
          CreateSponsorScreenRoute.name,
          path: 'create-sponsor',
        ),
        _i20.RouteConfig(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
        ),
        _i20.RouteConfig(
          ArtistsDetailScreenRoute.name,
          path: 'detail/:artistId',
        ),
        _i20.RouteConfig(
          JudgeDetailScreenRoute.name,
          path: 'detail/:judgeId',
        ),
        _i20.RouteConfig(
          CreateArtistScreenRoute.name,
          path: 'create-artist',
        ),
        _i20.RouteConfig(
          CreatePostScreenRoute.name,
          path: 'create-post',
        ),
        _i20.RouteConfig(
          CreateScheduleScreenRoute.name,
          path: 'create-post',
        ),
        _i20.RouteConfig(
          ProfileScreenRoute.name,
          path: 'profile',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i20.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i20.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'login',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i20.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i20.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.CreateAdminScreen]
class CreateAdminScreenRoute extends _i20.PageRouteInfo<void> {
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
    extends _i20.PageRouteInfo<SponsorDetailScreenRouteArgs> {
  SponsorDetailScreenRoute({
    _i21.Key? key,
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

  final _i21.Key? key;

  final String sponsorId;

  @override
  String toString() {
    return 'SponsorDetailScreenRouteArgs{key: $key, sponsorId: $sponsorId}';
  }
}

/// generated route for
/// [_i6.CreateSponsorScreen]
class CreateSponsorScreenRoute
    extends _i20.PageRouteInfo<CreateSponsorScreenRouteArgs> {
  CreateSponsorScreenRoute({
    _i21.Key? key,
    _i22.SponsorEntity? sponsor,
  }) : super(
          CreateSponsorScreenRoute.name,
          path: 'create-sponsor',
          args: CreateSponsorScreenRouteArgs(
            key: key,
            sponsor: sponsor,
          ),
        );

  static const String name = 'CreateSponsorScreenRoute';
}

class CreateSponsorScreenRouteArgs {
  const CreateSponsorScreenRouteArgs({
    this.key,
    this.sponsor,
  });

  final _i21.Key? key;

  final _i22.SponsorEntity? sponsor;

  @override
  String toString() {
    return 'CreateSponsorScreenRouteArgs{key: $key, sponsor: $sponsor}';
  }
}

/// generated route for
/// [_i7.CreateJudgeScreen]
class CreateJudgeScreenRoute
    extends _i20.PageRouteInfo<CreateJudgeScreenRouteArgs> {
  CreateJudgeScreenRoute({
    _i21.Key? key,
    _i23.JudgeEntity? judge,
  }) : super(
          CreateJudgeScreenRoute.name,
          path: 'create-judge',
          args: CreateJudgeScreenRouteArgs(
            key: key,
            judge: judge,
          ),
        );

  static const String name = 'CreateJudgeScreenRoute';
}

class CreateJudgeScreenRouteArgs {
  const CreateJudgeScreenRouteArgs({
    this.key,
    this.judge,
  });

  final _i21.Key? key;

  final _i23.JudgeEntity? judge;

  @override
  String toString() {
    return 'CreateJudgeScreenRouteArgs{key: $key, judge: $judge}';
  }
}

/// generated route for
/// [_i8.ArtistsDetailScreen]
class ArtistsDetailScreenRoute
    extends _i20.PageRouteInfo<ArtistsDetailScreenRouteArgs> {
  ArtistsDetailScreenRoute({
    _i21.Key? key,
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

  final _i21.Key? key;

  final String artistId;

  @override
  String toString() {
    return 'ArtistsDetailScreenRouteArgs{key: $key, artistId: $artistId}';
  }
}

/// generated route for
/// [_i9.JudgeDetailScreen]
class JudgeDetailScreenRoute
    extends _i20.PageRouteInfo<JudgeDetailScreenRouteArgs> {
  JudgeDetailScreenRoute({
    _i21.Key? key,
    required String judgeId,
  }) : super(
          JudgeDetailScreenRoute.name,
          path: 'detail/:judgeId',
          args: JudgeDetailScreenRouteArgs(
            key: key,
            judgeId: judgeId,
          ),
          rawPathParams: {'judgeId': judgeId},
        );

  static const String name = 'JudgeDetailScreenRoute';
}

class JudgeDetailScreenRouteArgs {
  const JudgeDetailScreenRouteArgs({
    this.key,
    required this.judgeId,
  });

  final _i21.Key? key;

  final String judgeId;

  @override
  String toString() {
    return 'JudgeDetailScreenRouteArgs{key: $key, judgeId: $judgeId}';
  }
}

/// generated route for
/// [_i10.CreateArtistScreen]
class CreateArtistScreenRoute
    extends _i20.PageRouteInfo<CreateArtistScreenRouteArgs> {
  CreateArtistScreenRoute({
    _i21.Key? key,
    _i24.ArtistEntity? artist,
  }) : super(
          CreateArtistScreenRoute.name,
          path: 'create-artist',
          args: CreateArtistScreenRouteArgs(
            key: key,
            artist: artist,
          ),
        );

  static const String name = 'CreateArtistScreenRoute';
}

class CreateArtistScreenRouteArgs {
  const CreateArtistScreenRouteArgs({
    this.key,
    this.artist,
  });

  final _i21.Key? key;

  final _i24.ArtistEntity? artist;

  @override
  String toString() {
    return 'CreateArtistScreenRouteArgs{key: $key, artist: $artist}';
  }
}

/// generated route for
/// [_i11.CreatePostScreen]
class CreatePostScreenRoute extends _i20.PageRouteInfo<void> {
  const CreatePostScreenRoute()
      : super(
          CreatePostScreenRoute.name,
          path: 'create-post',
        );

  static const String name = 'CreatePostScreenRoute';
}

/// generated route for
/// [_i12.CreateScheduleScreen]
class CreateScheduleScreenRoute extends _i20.PageRouteInfo<void> {
  const CreateScheduleScreenRoute()
      : super(
          CreateScheduleScreenRoute.name,
          path: 'create-post',
        );

  static const String name = 'CreateScheduleScreenRoute';
}

/// generated route for
/// [_i13.ProfileScreen]
class ProfileScreenRoute extends _i20.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i14.PostsScreen]
class PostsScreenRoute extends _i20.PageRouteInfo<void> {
  const PostsScreenRoute()
      : super(
          PostsScreenRoute.name,
          path: 'posts',
        );

  static const String name = 'PostsScreenRoute';
}

/// generated route for
/// [_i15.SchedulesScreen]
class SchedulesScreenRoute
    extends _i20.PageRouteInfo<SchedulesScreenRouteArgs> {
  SchedulesScreenRoute({_i21.Key? key})
      : super(
          SchedulesScreenRoute.name,
          path: 'posts',
          args: SchedulesScreenRouteArgs(key: key),
        );

  static const String name = 'SchedulesScreenRoute';
}

class SchedulesScreenRouteArgs {
  const SchedulesScreenRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'SchedulesScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.ArtistsScreen]
class ArtistsScreenRoute extends _i20.PageRouteInfo<void> {
  const ArtistsScreenRoute()
      : super(
          ArtistsScreenRoute.name,
          path: 'artists',
        );

  static const String name = 'ArtistsScreenRoute';
}

/// generated route for
/// [_i17.ViewJudgeScreen]
class ViewJudgeScreenRoute extends _i20.PageRouteInfo<void> {
  const ViewJudgeScreenRoute()
      : super(
          ViewJudgeScreenRoute.name,
          path: 'view-judges',
        );

  static const String name = 'ViewJudgeScreenRoute';
}

/// generated route for
/// [_i18.ViewSponsorScreen]
class ViewSponsorScreenRoute extends _i20.PageRouteInfo<void> {
  const ViewSponsorScreenRoute()
      : super(
          ViewSponsorScreenRoute.name,
          path: 'view-sponsors',
        );

  static const String name = 'ViewSponsorScreenRoute';
}

/// generated route for
/// [_i19.AdminScreen]
class AdminScreenRoute extends _i20.PageRouteInfo<void> {
  const AdminScreenRoute()
      : super(
          AdminScreenRoute.name,
          path: 'view-admins',
        );

  static const String name = 'AdminScreenRoute';
}
