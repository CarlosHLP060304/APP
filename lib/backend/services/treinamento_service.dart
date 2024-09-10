import 'dart:convert';

import 'package:eurofarma/backend/backend.dart';
import 'package:eurofarma/backend/schema/treinamentos_dto.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'http://localhost:8080/';

class TreinamentoService{

 
    Future<List<TreinamentosDTO>> getAllTreinamentos() async {
      var endPoint = 'treinamento';
      final url = '$baseUrl$endPoint';
          
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
       final Map json= jsonDecode(response.body);
       final List<TreinamentosDTO> treinamentos =  List<TreinamentosDTO>.from(json['content'].map((x)=>TreinamentosDTO.fromJson(x)));
       

        return treinamentos;
      }
      throw Exception('failed to load now playing movies');
  }
}

