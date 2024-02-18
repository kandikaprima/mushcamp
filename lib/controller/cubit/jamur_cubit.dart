import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mushcamp/model/mushroom_model.dart';
import 'package:mushcamp/service/api_service.dart';

part 'jamur_state.dart';

class JamurCubit extends Cubit<JamurState> {
  JamurCubit() : super(JamurInitial());

  void getJamur() async{
    try {
      emit(JamurLoading());
      JamurModel kelapa = await ApiService().getDataKelapa();
      if (kelapa.status == "success") {
        emit(JamurSuccess(kelapa));
      } else {
        emit(JamurFailed(kelapa.msg.toString()));
      }
    } catch (e) {
      emit(JamurFailed(e.toString()));
    }
  }
}
