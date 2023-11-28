import 'package:auto_route/auto_route.dart';
import 'package:fiura/features/home/home_screen.dart';
import 'package:fiura/features/musician/presentation/pages/view_musician_screen.dart';
import 'package:fiura/features/musician/presentation/pages/create_musician_screen.dart';
import 'package:fiura/features/musician/presentation/pages/musician_detail.dart';
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
      AutoRoute(
          page: SchedulesScreen, path: posts, initial: true, children: []),
      //MUsucians
      AutoRoute(
        page: ViewMusicianScreen,
        path: viewMusicians,
        initial: true,
      ),
      //Sponsors
      AutoRoute(page: ViewSponsorScreen, path: viewSponsors, children: []),
      //Admins
      AutoRoute(page: AdminScreen, path: viewAdmins, children: []),
    ]),
    AutoRoute(page: CreateAdminScreen, path: createAdmin),
    AutoRoute(page: SponsorDetailScreen, path: sponsorDetail),
    AutoRoute(page: CreateSponsorScreen, path: createSponsor),
    AutoRoute(page: CreateMusicianScreen, path: createJudge),
    AutoRoute(page: CreatePostScreen, path: createPost),
    AutoRoute(page: CreateScheduleScreen, path: createPost),
    AutoRoute(page: ProfileScreen, path: profile),
    AutoRoute(page: MusicianDetailScreen, path: createMusician),
  ],
)
// extend the generated private router
class $AppRouter {}
