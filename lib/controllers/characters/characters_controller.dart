import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_mobx/components/network_service.dart';
import 'package:rick_and_morty_mobx/models/response_model.dart';

part 'characters_controller.g.dart';

class CharactersController = _CharactersControllerBase
    with _$CharactersController;

enum CharactersStatus { initial, loading, ready }

abstract class _CharactersControllerBase with Store {
  _CharactersControllerBase(NetworkService networkService)
      : _networkService = networkService;

  final NetworkService _networkService;

  @observable
  Response? response;

  @observable
  CharactersStatus _state = CharactersStatus.initial;

  @observable
  int page = 1;

  @computed
  CharactersStatus get currentState => _state;

  @action
  Future<void> getChar() async {
    _state = CharactersStatus.loading;
    response = await _networkService.charactersList();
    _state = CharactersStatus.ready;
  }

  @action
  Future<void> nextPage(String? url) async {
    _state = CharactersStatus.loading;
    response = await _networkService.nextPage(url);
    _state = CharactersStatus.ready;
  }

  @action
  Future<void> prevPage(String? url) async {
    _state = CharactersStatus.loading;
    response = await _networkService.prevPage(url);
    _state = CharactersStatus.ready;
  }

  @action
  void increment() {
    page++;
    if (page >= 43) {
      page = 1;
    }
  }

  @action
  void decrement() {
    page--;
  }
}
