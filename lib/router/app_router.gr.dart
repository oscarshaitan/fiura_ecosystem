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
import 'package:fiura/core/entities/musician_entity/musician_entity.dart'
    as _i20;
import 'package:fiura/core/entities/sponsor_entity/sponsor_entity.dart' as _i19;
import 'package:fiura/features/admins/presentation/pages/admins_screen.dart'
    as _i16;
import 'package:fiura/features/admins/presentation/pages/create_admin_screen.dart'
    as _i4;
import 'package:fiura/features/home/home_screen.dart' as _i3;
import 'package:fiura/features/login/presentation/pages/login_screen.dart'
    as _i2;
import 'package:fiura/features/musician/presentation/pages/create_musician_screen.dart'
    as _i7;
import 'package:fiura/features/musician/presentation/pages/musician_detail.dart'
    as _i11;
import 'package:fiura/features/musician/presentation/pages/view_musician_screen.dart'
    as _i14;
import 'package:fiura/features/posts/presentation/pages/create_post_screen.dart'
    as _i8;
import 'package:fiura/features/posts/presentation/pages/posts_screen.dart'
    as _i12;
import 'package:fiura/features/schedule/presentation/pages/create_schedule_screen.dart'
    as _i9;
import 'package:fiura/features/schedule/presentation/pages/schedule_screen.dart'
    as _i13;
import 'package:fiura/features/splash/presentation/pages/splash_screen.dart'
    as _i1;
import 'package:fiura/features/sponsor/presentation/pages/create_sponsor_screen.dart'
    as _i6;
import 'package:fiura/features/sponsor/presentation/pages/sponsor_detail_screen.dart'
    as _i5;
import 'package:fiura/features/sponsor/presentation/pages/view_sponsor_screen.dart'
    as _i15;
import 'package:fiura/features/user/profile_screen.dart' as _i10;
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
      final args = routeData.argsAs<CreateSponsorScreenRouteArgs>(
          orElse: () => const CreateSponsorScreenRouteArgs());
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.CreateSponsorScreen(
          key: args.key,
          sponsor: args.sponsor,
        ),
      );
    },
    CreateMusicianScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CreateMusicianScreenRouteArgs>();
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.CreateMusicianScreen(
          key: args.key,
          musician: args.musician,
          musicianType: args.musicianType,
        ),
      );
    },
    CreatePostScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.CreatePostScreen(),
      );
    },
    CreateScheduleScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreateScheduleScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
      );
    },
    MusicianDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<MusicianDetailScreenRouteArgs>();
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.MusicianDetailScreen(
          key: args.key,
          musicianType: args.musicianType,
          musicianId: args.musicianId,
        ),
      );
    },
    PostsScreenRoute.name: (routeData) {
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.PostsScreen(),
      );
    },
    SchedulesScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SchedulesScreenRouteArgs>(
          orElse: () => const SchedulesScreenRouteArgs());
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i13.SchedulesScreen(key: args.key),
      );
    },
    ViewMusicianScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ViewMusicianScreenRouteArgs>();
      return _i17.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i14.ViewMusicianScreen(
          key: args.key,
          musicianType: args.musicianType,
        ),
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
              SchedulesScreenRoute.name,
              path: 'posts',
              parent: HomeScreenRoute.name,
            ),
            _i17.RouteConfig(
              ViewMusicianScreenRoute.name,
              path: 'view-musicians',
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
          CreateMusicianScreenRoute.name,
          path: 'create-judge',
        ),
        _i17.RouteConfig(
          CreatePostScreenRoute.name,
          path: 'create-post',
        ),
        _i17.RouteConfig(
          CreateScheduleScreenRoute.name,
          path: 'create-post',
        ),
        _i17.RouteConfig(
          ProfileScreenRoute.name,
          path: 'profile',
        ),
        _i17.RouteConfig(
          MusicianDetailScreenRoute.name,
          path: 'create-musician',
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
class CreateSponsorScreenRoute
    extends _i17.PageRouteInfo<CreateSponsorScreenRouteArgs> {
  CreateSponsorScreenRoute({
    _i18.Key? key,
    _i19.SponsorEntity? sponsor,
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

  final _i18.Key? key;

  final _i19.SponsorEntity? sponsor;

  @override
  String toString() {
    return 'CreateSponsorScreenRouteArgs{key: $key, sponsor: $sponsor}';
  }
}

/// generated route for
/// [_i7.CreateMusicianScreen]
class CreateMusicianScreenRoute
    extends _i17.PageRouteInfo<CreateMusicianScreenRouteArgs> {
  CreateMusicianScreenRoute({
    _i18.Key? key,
    _i20.MusicianEntity2? musician,
    required _i20.MusicianType musicianType,
  }) : super(
          CreateMusicianScreenRoute.name,
          path: 'create-judge',
          args: CreateMusicianScreenRouteArgs(
            key: key,
            musician: musician,
            musicianType: musicianType,
          ),
        );

  static const String name = 'CreateMusicianScreenRoute';
}

class CreateMusicianScreenRouteArgs {
  const CreateMusicianScreenRouteArgs({
    this.key,
    this.musician,
    required this.musicianType,
  });

  final _i18.Key? key;

  final _i20.MusicianEntity2? musician;

  final _i20.MusicianType musicianType;

  @override
  String toString() {
    return 'CreateMusicianScreenRouteArgs{key: $key, musician: $musician, musicianType: $musicianType}';
  }
}

/// generated route for
/// [_i8.CreatePostScreen]
class CreatePostScreenRoute extends _i17.PageRouteInfo<void> {
  const CreatePostScreenRoute()
      : super(
          CreatePostScreenRoute.name,
          path: 'create-post',
        );

  static const String name = 'CreatePostScreenRoute';
}

/// generated route for
/// [_i9.CreateScheduleScreen]
class CreateScheduleScreenRoute extends _i17.PageRouteInfo<void> {
  const CreateScheduleScreenRoute()
      : super(
          CreateScheduleScreenRoute.name,
          path: 'create-post',
        );

  static const String name = 'CreateScheduleScreenRoute';
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileScreenRoute extends _i17.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i11.MusicianDetailScreen]
class MusicianDetailScreenRoute
    extends _i17.PageRouteInfo<MusicianDetailScreenRouteArgs> {
  MusicianDetailScreenRoute({
    _i18.Key? key,
    required _i20.MusicianType musicianType,
    required String musicianId,
  }) : super(
          MusicianDetailScreenRoute.name,
          path: 'create-musician',
          args: MusicianDetailScreenRouteArgs(
            key: key,
            musicianType: musicianType,
            musicianId: musicianId,
          ),
        );

  static const String name = 'MusicianDetailScreenRoute';
}

class MusicianDetailScreenRouteArgs {
  const MusicianDetailScreenRouteArgs({
    this.key,
    required this.musicianType,
    required this.musicianId,
  });

  final _i18.Key? key;

  final _i20.MusicianType musicianType;

  final String musicianId;

  @override
  String toString() {
    return 'MusicianDetailScreenRouteArgs{key: $key, musicianType: $musicianType, musicianId: $musicianId}';
  }
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
/// [_i13.SchedulesScreen]
class SchedulesScreenRoute
    extends _i17.PageRouteInfo<SchedulesScreenRouteArgs> {
  SchedulesScreenRoute({_i18.Key? key})
      : super(
          SchedulesScreenRoute.name,
          path: 'posts',
          args: SchedulesScreenRouteArgs(key: key),
        );

  static const String name = 'SchedulesScreenRoute';
}

class SchedulesScreenRouteArgs {
  const SchedulesScreenRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'SchedulesScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.ViewMusicianScreen]
class ViewMusicianScreenRoute
    extends _i17.PageRouteInfo<ViewMusicianScreenRouteArgs> {
  ViewMusicianScreenRoute({
    _i18.Key? key,
    required _i20.MusicianType musicianType,
  }) : super(
          ViewMusicianScreenRoute.name,
          path: 'view-musicians',
          args: ViewMusicianScreenRouteArgs(
            key: key,
            musicianType: musicianType,
          ),
        );

  static const String name = 'ViewMusicianScreenRoute';
}

class ViewMusicianScreenRouteArgs {
  const ViewMusicianScreenRouteArgs({
    this.key,
    required this.musicianType,
  });

  final _i18.Key? key;

  final _i20.MusicianType musicianType;

  @override
  String toString() {
    return 'ViewMusicianScreenRouteArgs{key: $key, musicianType: $musicianType}';
  }
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
