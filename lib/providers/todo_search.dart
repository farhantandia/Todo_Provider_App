import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class TodoSearchState extends Equatable {
  final String searchTerm;
  TodoSearchState({
    required this.searchTerm,
  });

  factory TodoSearchState.initial() {
    return TodoSearchState(searchTerm: '');
  }

  TodoSearchState copyWith({
    String? searchTerm,
  }) {
    return TodoSearchState(
      searchTerm: searchTerm ?? this.searchTerm,
    );
  }

  @override
  String toString() => 'TodoSeachState(searchTerm: $searchTerm)';

  @override
  List<Object> get props => [searchTerm];
}

class TodoSearch with ChangeNotifier {
  TodoSearchState _state = TodoSearchState.initial();
  TodoSearchState get state => _state;

  void setSearchTerm(String newSearchItem) {
    _state = _state.copyWith(searchTerm: newSearchItem);
    notifyListeners();
  }
}
