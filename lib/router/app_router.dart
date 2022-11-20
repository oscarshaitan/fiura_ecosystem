import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/features/artists/artitis_screen.dart';
import 'package:fiura_ecosystem/features/artits_detail_screen/artist_detail.dart';
import 'package:fiura_ecosystem/features/home/home_screen.dart';
import 'package:fiura_ecosystem/features/posts/posts_screen.dart';
import 'package:fiura_ecosystem/features/splash/splash_screen.dart';
import 'package:fiura_ecosystem/router/router_paths.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true, path: root),
    AutoRoute(page: HomeScreen, path: home, children: [
      RedirectRoute(path: '', redirectTo: posts),
      AutoRoute(page: PostsScreen, path: posts, initial: true),
      AutoRoute(page: ArtistsScreen, path: artists, children: [
      ]),
    ]),
    AutoRoute(page: ArtistsDetailScreen, path: artistsDetail),
  ],
)
// extend the generated private router
class $AppRouter {}
