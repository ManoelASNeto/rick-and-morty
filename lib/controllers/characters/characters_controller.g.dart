// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharactersController on CharactersControllerBase, Store {
  final _$dataAtom = Atom(name: 'CharactersControllerBase.data');

  @override
  Response? get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(Response? value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$fetchAllAsyncAction =
      AsyncAction('CharactersControllerBase.fetchAll');

  @override
  Future<Response?> fetchAll() {
    return _$fetchAllAsyncAction.run(() => super.fetchAll());
  }

  final _$nextPageAsyncAction =
      AsyncAction('CharactersControllerBase.nextPage');

  @override
  Future<Response?> nextPage(String? url) {
    return _$nextPageAsyncAction.run(() => super.nextPage(url));
  }

  final _$prevPageAsyncAction =
      AsyncAction('CharactersControllerBase.prevPage');

  @override
  Future<Response?> prevPage(String? url) {
    return _$prevPageAsyncAction.run(() => super.prevPage(url));
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
