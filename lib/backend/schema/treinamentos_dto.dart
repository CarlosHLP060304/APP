import 'dart:async';

import 'package:collection/collection.dart';
import 'package:eurofarma/backend/backend.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreinamentosDTO {
  final int id;
  final String nome;
  final String descricao;
  final String formato;
  final bool ativo;
  final DateTime dataInicio;
  final DateTime dataFim;
  final String nomeProfessor;
  final String cpfProfessor;

  TreinamentosDTO({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.formato,
    required this.ativo,
    required this.dataInicio,
    required this.dataFim,
    required this.nomeProfessor,
    required this.cpfProfessor,
  });


  factory TreinamentosDTO.fromJson(Map<String, dynamic> json) => TreinamentosDTO(
      id: json["id"],
      nome: json["nome"],
      descricao: json["descricao"],
      formato: json["formato"],
      ativo: json["ativo"],
      dataInicio: DateTime.parse(json["dataInicio"]),
      dataFim: DateTime.parse(json["dataFim"]),
      nomeProfessor: json["nomeProfessor"] ?? "",
      cpfProfessor: json["cpfProfessor"] ?? "",
    );


}

