import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent {
  toAmber,
  toLightBlue;
}

class ColorBloc {
  Color _color = Colors.amber;

  //Stream controller ada 2: Stream controller untuk colorEvent, yang satu untuk statenya
  final StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  //Membuat getter (sink)
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  final StreamController<Color> _stateController = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateController.sink;
  //Membuat keluaran
  Stream<Color> get stateStream => _stateController.stream;

  //Ketika UI memberikan event masuk lewat sink nya, nanti si stream nya itu
  //Akan masuk mapToEvent, lalu berdasarkan si colorEvent ini, dia tinggal merubah statenya.

  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.toAmber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }

    _stateSink.add(_color);
  }

  ColorBloc() {
    //Kita hubungkan streamEventController masuk ke mapEventToState
    _eventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    //Tujuannya agar tidak memory leak saat membuka Bloc (bloc manual).
    _eventController.close();
    _stateController.close();
  }
}
