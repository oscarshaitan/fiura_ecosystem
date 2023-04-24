import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/features/artists/presentation/pages/artist_screen.dart';
import 'package:fiura_ecosystem/features/artists/presentation/pages/create_artist_screen.dart';
import 'package:fiura_ecosystem/features/artits_detail_screen/artist_detail.dart';
import 'package:fiura_ecosystem/features/home/home_screen.dart';
import 'package:fiura_ecosystem/features/posts/posts_screen.dart';
import 'package:fiura_ecosystem/features/splash/presentation/pages/splash_screen.dart';
import 'package:fiura_ecosystem/features/sponsor/presentation/pages/create_sponsor_screen.dart';
import 'package:fiura_ecosystem/router/router_paths.dart';

import '../features/judge/presentation/pages/create_judge_screen.dart';
import '../features/login/presentation/pages/login_screen.dart';
import '../features/posts/presentation/pages/create_post_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true, path: root),
    AutoRoute(page: LoginScreen, path: login),
    AutoRoute(page: HomeScreen, path: home, children: [
      RedirectRoute(path: '', redirectTo: posts),
      AutoRoute(page: PostsScreen, path: posts, initial: true),
      AutoRoute(page: ArtistsScreen, path: artists, children: []),
    ]),
    AutoRoute(page: ArtistsDetailScreen, path: artistsDetail),
    AutoRoute(page: CreateJudgeScreen, path: createJudge),
    AutoRoute(page: CreateSponsorScreen, path: createSponsor),
    AutoRoute(page: CreateArtistScreen, path: createArtist),
    AutoRoute(page: CreatePostScreen, path: createPost),
  ],
)
// extend the generated private router
class $AppRouter {}
