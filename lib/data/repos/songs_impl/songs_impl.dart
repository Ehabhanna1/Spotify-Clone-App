import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/sources/songs/songs_service.dart';
import 'package:spotify_clone/domain/repository/songs/songs_repo.dart';
import 'package:spotify_clone/service_locator.dart';

class SongsRepoImpl implements SongsRepository {
  @override
  Future<Either> getNewsSongs() async{
    return await serviceLocator<SongsFirebaseService>().getNewsSongs();
  }
}