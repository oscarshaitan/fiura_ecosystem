import 'package:auto_route/auto_route.dart';
import 'package:fiura/features/artists/presentation/pages/artist_screen.dart';
import 'package:fiura/features/artists/presentation/pages/create_artist_screen.dart';
import 'package:fiura/features/artits_detail_screen/artist_detail.dart';
import 'package:fiura/features/home/home_screen.dart';
import 'package:fiura/features/judge/presentation/pages/view_judge_screen.dart';
import 'package:fiura/features/judge_detail_screen/judge_detail.dart';
import 'package:fiura/features/posts/presentation/pages/posts_screen.dart';
import 'package:fiura/features/schedule/presentation/pages/create_schedule_screen.dart';
import 'package:fiura/features/schedule/presentation/pages/schedule_screen.dart';
import 'package:fiura/features/splash/presentation/pages/splash_screen.dart';
import 'package:fiura/features/sponsor/presentation/pages/create_sponsor_screen.dart';
import 'package:fiura/features/sponsor/presentation/pages/sponsor_detail_screen.dart';
import 'package:fiura/features/user/profile_screen.dart';
import 'package:fiura/router/router_paths.dart';
import '../features/admins/presentation/pages/admins_screen.dart';
import '../features/admins/presentation/pages/create_admin_screen.dart';
import '../features/judge/presentation/pages/create_judge_screen.dart';
import '../features/login/presentation/pages/login_screen.dart';
import '../features/posts/presentation/pages/create_post_screen.dart';
import '../features/sponsor/presentation/pages/view_sponsor_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true, path: root),
    AutoRoute(page: LoginScreen, path: login),
    AutoRoute(page: HomeScreen, path: home, children: [
      RedirectRoute(path: '', redirectTo: posts),
      //Posts
      AutoRoute(page: PostsScreen, path: posts, initial: true, children: []),
      //Schedules
      AutoRoute(page: SchedulesScreen, path: posts, initial: true, children: []),
      //Artists
      AutoRoute(page: ArtistsScreen, path: artists, children: []),
      //Judges
      AutoRoute(page: ViewJudgeScreen, path: viewJudges, children: []),
      //Sponsors
      AutoRoute(page: ViewSponsorScreen, path: viewSponsors, children: []),
      //Admins
      AutoRoute(page: AdminScreen, path: viewAdmins, children: []),
    ]),
    AutoRoute(page: CreateAdminScreen, path: createAdmin),
    AutoRoute(page: SponsorDetailScreen, path: sponsorDetail),
    AutoRoute(page: CreateSponsorScreen, path: createSponsor),
    AutoRoute(page: CreateJudgeScreen, path: createJudge),
    AutoRoute(page: ArtistsDetailScreen, path: artistsDetail),
    AutoRoute(page: JudgeDetailScreen, path: judgeDetail),
    AutoRoute(page: CreateArtistScreen, path: createArtist),
    AutoRoute(page: CreatePostScreen, path: createPost),
    AutoRoute(page: CreateScheduleScreen, path: createPost),
    AutoRoute(page: ProfileScreen, path: profile),
  ],
)
// extend the generated private router
class $AppRouter {}
