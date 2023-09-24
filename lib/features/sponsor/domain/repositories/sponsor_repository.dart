import 'dart:io';

import '../../../../core/entities/sponsor_entity/sponsor_entity.dart';

abstract class SponsorRepository {
  Future<bool> addSponsor(SponsorEntity sponsor, File image);

  Future<List<SponsorEntity>> getSponsors();

  Future<SponsorEntity> getSponsor(String id);

  Future<void> updateSponsor(SponsorEntity sponsor, File? image, String previousPhotoName);

  Future<void> deleteSponsor(String id);
}
