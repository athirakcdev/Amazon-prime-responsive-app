import 'dart:async';
import 'dart:convert' as convert;
// import 'dart:io';
// import 'dart:math';

import 'package:amazon_prime/info/models/info_ui_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'info_event.dart';
part 'info_state.dart';

class InfoBloc extends Bloc<InfoEvent, InfoState> {
  InfoBloc() : super(InfoInitial()) {
   on<InfoInitialFetchEvent>(infoInitialFetchEvent);
  }

  FutureOr<void> infoInitialFetchEvent(InfoInitialFetchEvent event, Emitter<InfoState> emit) async {
    var client = http.Client();
    List<InfoUiModel> infos = [];
try {
  var response = await client.get(
      Uri.parse('https://run.mocky.io/v3/28650bcc-9661-4507-ac8e-dfe6e2afeb82'));
      final jsonResponse = convert.jsonDecode(response.body);
      final VODresults =jsonResponse["VOD"][0]["movies"]; 
      // final PopularOnTV = VODresults["movies"];
      // final movies = PopularOnTV["movies"];
      // print(VODresults); // List result = jsonDecode(response.body);
      print(VODresults);
      for(int i=0;i<VODresults.length;i++){
       InfoUiModel info = InfoUiModel.fromMap(VODresults[i] as Map<String,dynamic>);
       infos.add(info);
      }
      print(infos);
      emit(InfoFetchingSuccessfulState(infos: infos));

} 

catch(e){
  print(e.toString());
}
  }
}
