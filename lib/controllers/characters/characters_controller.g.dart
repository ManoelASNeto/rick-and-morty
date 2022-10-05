// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharactersController on _CharactersControllerBase, Store {
  Computed<CharactersStatus>? _$currentStateComputed;

  @override
  CharactersStatus get currentState => (_$currentStateComputed ??=
          Computed<CharactersStatus>(() => super.currentState,
              name: '_CharactersControllerBase.currentState'))
      .value;

  late final _$responseAtom =
      Atom(name: '_CharactersControllerBase.response', context: context);

  @override
  Response? get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(Response? value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  late final _$_stateAtom =
      Atom(name: '_CharactersControllerBase._state', context: context);

  @override
  CharactersStatus get _state {
    _$_stateAtom.reportRead();
    return super._state;
  }

  @override
  set _state(CharactersStatus value) {
    _$_stateAtom.reportWrite(value, super._state, () {
      super._state = value;
    });
  }

  late final _$getCharAsyncAction =
      AsyncAction('_CharactersControllerBase.getChar', context: context);

  @override
  Future<void> getChar() {
    return _$getCharAsyncAction.run(() => super.getChar());
  }

  late final _$nextPageAsyncAction =
      AsyncAction('_CharactersControllerBase.nextPage', context: context);

  @override
  Future<Response?> nextPage(String? url) {
    return _$nextPageAsyncAction.run(() => super.nextPage(url));
  }

  late final _$prevPageAsyncAction =
      AsyncAction('_CharactersControllerBase.prevPage', context: context);

  @override
  Future<Response?> prevPage(String? url) {
    return _$prevPageAsyncAction.run(() => super.prevPage(url));
  }

  @override
  String toString() {
    return '''
response: ${response},
currentState: ${currentState}
    ''';
  }
}
