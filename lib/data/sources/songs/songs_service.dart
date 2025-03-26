import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/models/songs/songs_model.dart';
import 'package:spotify_clone/domain/entities/songs/songs_entity.dart';

abstract class SongsFirebaseService {


  Future<Either> getNewsSongs();


}


class SongsFirebaseServiceImpl implements SongsFirebaseService {
  @override
  Future<Either> getNewsSongs() async {
    try {
      List < SongEntity > songs = [];
      var data = await FirebaseFirestore.instance.collection('Songs')
        .orderBy('releaseDate', descending: true)
        .limit(3)
        .get();

      for (var element in data.docs) {
        var songModel = SongModel.fromJson(element.data());
        
        songs.add(
          songModel.toEntity(),
        );
      }

      return Right(songs);

    } catch (e) {
      print(e);
      return const Left('An error occurred, Please try again.');
    }

  }
}