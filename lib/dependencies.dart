import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fiura_ecosystem/features/artists/domain/repositories/artist_repository.dart';
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_cubit.dart';
import 'package:fiura_ecosystem/features/images/data/local/image_repository_imp.dart';
import 'package:fiura_ecosystem/features/images/presentation/cubit/image_cubit.dart';
import 'package:fiura_ecosystem/features/judge/domain/repositories/judge_repository.dart';
import 'package:fiura_ecosystem/features/judge/presentation/cubit/judge_cubit.dart';
import 'package:fiura_ecosystem/features/login/domain/repositories/login_repository.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_cubit.dart';
import 'package:fiura_ecosystem/features/posts/domain/repositories/post_repository.dart';
import 'package:fiura_ecosystem/features/splash/domain/repositories/splash_repository.dart';
import 'package:fiura_ecosystem/features/sponsor/data/local/sponsor_repository_imp.dart';
import 'package:fiura_ecosystem/features/sponsor/domain/repositories/sponsor_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'features/artists/data/local/artist_repository_imp.dart';
import 'features/images/domain/repositories/image_repository.dart';
import 'features/judge/data/local/judge_repository_imp.dart';
import 'features/posts/data/local/post_repository_imp.dart';
import 'features/posts/presentation/cubit/post_cubit.dart';
import 'features/splash/data/local/splash_repository_imp.dart';
import 'features/splash/presentation/cubit/splash_cubit.dart';
import 'features/sponsor/presentation/cubit/sponsor_cubit.dart';

//Cloud firestore
final FirebaseFirestore db = FirebaseFirestore.instance;

//Firabase Auth
final GoogleSignIn googleSignIn = GoogleSignIn();
final FirebaseAuth auth = FirebaseAuth.instance;

//Firebase Storage
final Reference storageRef = FirebaseStorage.instance.ref();

// Image Picker
final ImagePicker picker = ImagePicker();

//Image
final ImageRepository imageRepository =
    ImageRepositoryImp(storageRef: storageRef, picker: picker);

final getIt = GetIt.instance;

void setup() {
  //Splash
  getIt
      .registerFactory<SplashRepository>(() => SplashRepositoryImp(auth: auth));
  getIt.registerFactory<Splashcubit>(() => Splashcubit(getIt()));

  //Login
  getIt.registerFactory<LoginRepository>(
      () => LoginRepository(googleSignIn: googleSignIn, auth: auth, db: db));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //Judge
  getIt.registerFactory<JudgeRepository>(() =>
      JudgeRepositoryImp(db: db, auth: auth, imageRepository: imageRepository));
  getIt.registerFactory<JudgeCubit>(() => JudgeCubit(getIt(), getIt()));

  //Sponsor
  getIt.registerFactory<SponsorRepository>(() => SponsorRepositoryImp(
      db: db, auth: auth, imageRepository: imageRepository));
  getIt.registerFactory<SponsorCubit>(() => SponsorCubit(getIt(), getIt()));

  //Artist
  getIt.registerFactory<ArtistRepository>(() => ArtistRepositoryImp(
      db: db, auth: auth, imageRepository: imageRepository));
  getIt.registerFactory<ArtistCubit>(() => ArtistCubit(getIt(), getIt()));

  //Post
  getIt.registerFactory<PostRepository>(() =>
      PostRepositoryImp(db: db, auth: auth, imageRepository: imageRepository));
  getIt.registerFactory<PostCubit>(() => PostCubit(getIt(), getIt()));

  //ImageRepository
  getIt.registerFactory<ImageRepository>(
      () => ImageRepositoryImp(storageRef: storageRef, picker: picker));
  getIt.registerFactory<ImageCubit>(() => ImageCubit(getIt()));
}
