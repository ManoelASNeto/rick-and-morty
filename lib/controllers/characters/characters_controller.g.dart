// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharactersController on CharactersControllerBase, Store {
  final _$listAllFutureAtom =
      Atom(name: 'CharactersControllerBase.listAllFuture');

  @override
  List<ResultsOne> get listAllFuture {
    _$listAllFutureAtom.reportRead();
    return super.listAllFuture;
  }

  @override
  set listAllFuture(List<ResultsOne> value) {
    _$listAllFutureAtom.reportWrite(value, super.listAllFuture, () {
      super.listAllFuture = value;
    });
  }

  final _$fetchAllAsyncAction =
      AsyncAction('CharactersControllerBase.fetchAll');

  @override
  Future<List<ResultsOne>> fetchAll() {
    return _$fetchAllAsyncAction.run(() => super.fetchAll());
  }

  @override
  String toString() {
    return '''
listAllFuture: ${listAllFuture}
    ''';
  }
}
