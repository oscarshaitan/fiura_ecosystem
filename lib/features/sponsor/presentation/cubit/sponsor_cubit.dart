import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:fiura/features/sponsor/presentation/cubit/sponsor_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../core/entities/sponsor_entity/sponsor_entity.dart';
import '../../../images/domain/repositories/image_repository.dart';
import '../../domain/repositories/sponsor_repository.dart';
import 'package:http/http.dart' as http;

class SponsorCubit extends Cubit<SponsorState> {
  SponsorCubit(this._sponsorRepository, this._imageRepository) : super(const Initial());

  final SponsorRepository _sponsorRepository;
  final ImageRepository _imageRepository;

  void addSponsor(String name, String about, List<String> socialNetwork, File? image) async {
    String urlPhoto = 'Sponsors/${path.basename(image!.path)}';

    SponsorEntity sponsor = SponsorEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      urlPhoto: urlPhoto,
      id: '',
    );

    emit(const Loading());
    final result = await _sponsorRepository.addSponsor(sponsor, image);
    if (result) {
      emit(const Success());
    } else {
      emit(const Error('Error añadiendo nuevo patrocinador'));
    }
  }

  void getSponsors() async {
    emit(const Loading());

    try {
      final result = await _sponsorRepository.getSponsors();
      emit(LoadData(result));
    } catch (e) {
      emit(Error('Error cargando patrocinadores: ${e.toString()}'));
    }
  }

  void getSponsor(String sponsorId) async {
    emit(const Loading());

    try {
      final result = await _sponsorRepository.getSponsor(sponsorId);
      emit(LoadSponsor(result));
    } catch (e) {
      emit(Error('Error cargando patrocinador: ${e.toString()}'));
    }
  }

  void imagePicker() async {
    final File? image = await _imageRepository.imagePicker();

    if (image != null) {
      emit(PickedImage(image));
    }
  }

  void updateSponsor(String id, String name, String about, List<String> socialNetwork, File? image, String previousPhotoName) async {
    emit(const Loading());

    final String urlPhoto = 'Artists/${path.basename(image!.path)}';

    final SponsorEntity sponsor = SponsorEntity(
      name: name,
      about: about,
      socialNetwork: socialNetwork,
      id: id,
      urlPhoto: urlPhoto,
    );

    try {
      await _sponsorRepository.updateSponsor(sponsor, image, previousPhotoName);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  void setUrlToFile(String urlPhoto) async {
    //Get my image name
    String imageName = "defaultPhotoName";
    Uri uri = Uri.parse(urlPhoto);
    String path = uri.path;

    int startIndex = path.indexOf("Artists%2F");

    if (startIndex != -1) {
      imageName = path.substring(startIndex + "Artists%2F".length);
    }

    try {
      final response = await http.get(Uri.parse(urlPhoto));
      final bytes = response.bodyBytes;
      final appDir = await getApplicationDocumentsDirectory();
      File imageFile = File("${appDir.path}/$imageName");
      await imageFile.writeAsBytes(bytes);
      emit(ChargedImage(imageFile, imageName));
    } catch (e) {
      emit(const Error("Ocurrió un error al cargar la foto del artista"));
    }
  }

  void deleteSponsor(String id) async {
    emit(const Loading());
    try {
      await _sponsorRepository.deleteSponsor(id);
      emit(const Success());
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}
