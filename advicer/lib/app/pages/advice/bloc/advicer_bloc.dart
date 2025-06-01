import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    /*
      when the button is pressed the first time, the initial state will be replaced
      with the loading state.
     */
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      //execute busniss logic... ex: call a function that creates job instance

      // simulating the scenario
      debugPrint("fake advice triggered!!");
      await Future.delayed(const Duration(seconds: 2), () {});
      debugPrint("got advice!!");
      emit(AdvicerStateLoaded(advice: "fake advide is here!!!!"));
    });
  }
}
