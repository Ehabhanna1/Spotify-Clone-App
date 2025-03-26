import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/use_cases/use_case.dart';
import 'package:spotify_clone/data/repos/songs_impl/songs_impl.dart';
import 'package:spotify_clone/service_locator.dart';

class GetNewsSongsUseCase implements UseCase<Either,dynamic> {
  @override
  Future<Either> call({params}) async{
    return await serviceLocator<SongsRepoImpl>().getNewsSongs();
  }
}