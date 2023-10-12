import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class Observer extends BlocObserver {
  static Logger logger = Logger();

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    //Add analytics here
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e(error, stackTrace);
    //Send to sentry or firebase crashlytics here
  }
}
