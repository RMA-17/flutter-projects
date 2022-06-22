import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent {
  isLightBlue,
  isAmber,
}

class ColorBloc extends Bloc<ColorEvent, Color> {
  //Didalam class ini juga bikin state nya sendiri,
  Color _color = Colors.amber;

  ColorBloc(super.initialState);

  //async* maksudnya dia bakal async terus menerus
  Stream<Color> mapEventToState(ColorEvent event) async* {
    //mapEventToState gunanya adalah kalau ada event, kita mapping untuk mengubah
    //si statenya berdararkan event tersebut, nanti si Stream nya akan dialirkan ke stateController.
    //Kalau disini stateController dan eventController sudah dibungkus sama flutter_bloc.
    yield _color; //yield adalah perintah untuk memasukkan data kedalam stream. Karena async*, menggunakan yield, bukan return.
  }

  @override
  void onEvent(ColorEvent event) {
    super.onEvent(event);
    _color = (event == ColorEvent.isAmber) ? Colors.amber : Colors.lightBlue;
  }
}
