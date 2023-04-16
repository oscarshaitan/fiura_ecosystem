import '../../../../core/entities/artist_entity/artist_entity.dart';

abstract class ArtistRepository {
  Future<bool> addArtist(ArtistEntity artist);
}
