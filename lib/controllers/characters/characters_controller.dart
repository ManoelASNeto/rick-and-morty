import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_mobx/components/network_service.dart';
import 'package:rick_and_morty_mobx/models/response_model.dart';

part 'characters_controller.g.dart';

class CharactersController = _CharactersControllerBase
    with _$CharactersController;

abstract class _CharactersControllerBase with Store {
  _CharactersControllerBase(NetworkService networkService)
      : _networkService = networkService;

  final NetworkService _networkService;

  @observable
  Response? response;

  @observable
  bool isLoading = false;

  @action
  Future getChar() async {
    isLoading = true;
    final loadChar = await _networkService.charactersList();
    response = loadChar;
    return response;
  }

  /* @action
  Future<Response?> nextPage(String? url) async {
    var data = await httpClient.nextPage(url);
    response = data;
    return response;
  }

  @action
  Future<Response?> prevPage(String? url) async {
    var data = await httpClient.prevPage(url);
    response = data;
    return response;
  }*/
}
