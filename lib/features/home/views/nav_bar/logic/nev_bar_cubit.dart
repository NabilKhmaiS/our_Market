import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nev_bar_state.dart';

class NevBarCubit extends Cubit<NevBarState> {
  NevBarCubit() : super(NevBarInitial());

  int currentIndex = 0;

  void ChangeCurrentIndex (int index) {
    currentIndex = index;
    emit(IndexChanged());
  }
}
