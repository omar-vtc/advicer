import 'package:advicer/domain/useCases/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    final AdviceUseCases adviceUseCases = AdviceUseCases();

    /*
      when the button is pressed the first time, the initial state will be replaced
      with the loading state.
     */
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      //execute busniss logic... ex: call a function that creates job instance

      // simulating the scenario
      debugPrint("fake advice triggered!!");

      // calling the domain layer to get the advice!!!
      final failureOrAdvice = await adviceUseCases.getAdvice();
      failureOrAdvice.fold(
        (failure) => emit(AdvicerStateError(message: "error!!!")),
        (success) => emit(AdvicerStateLoaded(advice: success.advice)),
      );
    });
  }
}
