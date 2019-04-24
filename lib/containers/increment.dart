import 'package:example/actions/action.dart';
import 'package:example/components/increment.dart';
import 'package:example/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

class IncrementContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: _ViewModel.fromStore,
      builder: (context, vm) => IncrementComponent(
            count: vm.count,
            onTap: vm.onTap,
          ),
    );
  }
}

class _ViewModel {
  final int count;
  final Function onTap;

  _ViewModel({
    @required this.count,
    @required this.onTap,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      count: store.state.count,
      onTap: () => store.dispatch(IncrementAction()),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          count == other.count;

  @override
  int get hashCode => count.hashCode;
}
