import '../../../../core/entities/sponsor_entity/sponsor_entity.dart';

abstract class SponsorRepository {
  Future<bool> addSponsor(SponsorEntity sponsor);
}
