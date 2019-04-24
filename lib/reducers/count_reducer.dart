import 'package:redux/redux.dart';
import 'package:example/actions/action.dart';

final countReducer = combineReducers<int>({
  TypedReducer<int, IncrementAction>(_increment),
});

int _increment(int state, action) {
  return state + 1;
}
