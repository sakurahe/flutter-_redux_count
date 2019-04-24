import 'package:example/models/app_state.dart';
import './count_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    count: countReducer(state.count, action),
  );
}
