// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  final String matricula;
  final Proponente proponente;
  final Organizacion organizacion;
  final EstadoDeLaMatricula estadoDeLaMatricula;
  final String razonSocial;
  final String? nit;
  final String fechaRenovacion;
  final String ultimoAORenovado;
  final String fechaConstitucion;
  final String direccionComercial;
  final String barrioComercial;
  final MunicipioComercial municipioComercial;
  final String emailComercial;
  final Ciiu1 ciiu1;
  final String ciiu2;
  final String ciiu3;
  final String ciiu4;
  final String actividad;
  final TamaOEmpresa tamaOEmpresa;
  final String matriculaPropietario;
  final String nitPropietario;
  final String camaraDePropietario;
  final String nombreDePropietario;
  final String direccionPropietario;
  final String municipioPropietario;
  final String emailPropietario;
  final RepresentanteLegalSuplente representanteLegalSuplente;

  Welcome({
    required this.matricula,
    required this.proponente,
    required this.organizacion,
    required this.estadoDeLaMatricula,
    required this.razonSocial,
    this.nit,
    required this.fechaRenovacion,
    required this.ultimoAORenovado,
    required this.fechaConstitucion,
    required this.direccionComercial,
    required this.barrioComercial,
    required this.municipioComercial,
    required this.emailComercial,
    required this.ciiu1,
    required this.ciiu2,
    required this.ciiu3,
    required this.ciiu4,
    required this.actividad,
    required this.tamaOEmpresa,
    required this.matriculaPropietario,
    required this.nitPropietario,
    required this.camaraDePropietario,
    required this.nombreDePropietario,
    required this.direccionPropietario,
    required this.municipioPropietario,
    required this.emailPropietario,
    required this.representanteLegalSuplente,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        matricula: json["matricula"],
        proponente: proponenteValues.map[json["proponente"]]!,
        organizacion: organizacionValues.map[json["organizacion"]]!,
        estadoDeLaMatricula:
            estadoDeLaMatriculaValues.map[json["estado_de_la_matricula"]]!,
        razonSocial: json["razon_social"],
        nit: json["nit"],
        fechaRenovacion: json["fecha_renovacion"],
        ultimoAORenovado: json["ultimo_a_o_renovado"],
        fechaConstitucion: json["fecha_constitucion"],
        direccionComercial: json["direccion_comercial"],
        barrioComercial: json["barrio_comercial"],
        municipioComercial:
            municipioComercialValues.map[json["municipio_comercial"]]!,
        emailComercial: json["email_comercial"],
        ciiu1: ciiu1Values.map[json["ciiu_1"]]!,
        ciiu2: json["ciiu_2"],
        ciiu3: json["ciiu_3"],
        ciiu4: json["ciiu_4"],
        actividad: json["actividad"],
        tamaOEmpresa: tamaOEmpresaValues.map[json["tama_o_empresa"]]!,
        matriculaPropietario: json["matricula_propietario"],
        nitPropietario: json["nit_propietario"],
        camaraDePropietario: json["camara_de_propietario"],
        nombreDePropietario: json["nombre_de_propietario"],
        direccionPropietario: json["direccion_propietario"],
        municipioPropietario: json["municipio_propietario"],
        emailPropietario: json["email_propietario"],
        representanteLegalSuplente: representanteLegalSuplenteValues
            .map[json["representante_legal_suplente"]]!,
      );

  Map<String, dynamic> toJson() => {
        "matricula": matricula,
        "proponente": proponenteValues.reverse[proponente],
        "organizacion": organizacionValues.reverse[organizacion],
        "estado_de_la_matricula":
            estadoDeLaMatriculaValues.reverse[estadoDeLaMatricula],
        "razon_social": razonSocial,
        "nit": nit,
        "fecha_renovacion": fechaRenovacion,
        "ultimo_a_o_renovado": ultimoAORenovado,
        "fecha_constitucion": fechaConstitucion,
        "direccion_comercial": direccionComercial,
        "barrio_comercial": barrioComercial,
        "municipio_comercial":
            municipioComercialValues.reverse[municipioComercial],
        "email_comercial": emailComercial,
        "ciiu_1": ciiu1Values.reverse[ciiu1],
        "ciiu_2": ciiu2,
        "ciiu_3": ciiu3,
        "ciiu_4": ciiu4,
        "actividad": actividad,
        "tama_o_empresa": tamaOEmpresaValues.reverse[tamaOEmpresa],
        "matricula_propietario": matriculaPropietario,
        "nit_propietario": nitPropietario,
        "camara_de_propietario": camaraDePropietario,
        "nombre_de_propietario": nombreDePropietario,
        "direccion_propietario": direccionPropietario,
        "municipio_propietario": municipioPropietario,
        "email_propietario": emailPropietario,
        "representante_legal_suplente": representanteLegalSuplenteValues
            .reverse[representanteLegalSuplente],
      };
}

enum Ciiu1 { S9602_PELUQUERIA_Y_OTROS_TRATAMIENTOS_DE_BELLEZA }

final ciiu1Values = EnumValues({
  "S9602 ** Peluqueria y otros tratamientos de belleza":
      Ciiu1.S9602_PELUQUERIA_Y_OTROS_TRATAMIENTOS_DE_BELLEZA
});

enum EstadoDeLaMatricula { MA }

final estadoDeLaMatriculaValues = EnumValues({"MA": EstadoDeLaMatricula.MA});

enum MunicipioComercial {
  THE_73001_IBAGUE,
  THE_73026_ALVARADO,
  THE_73043_ANZOATEGUI,
  THE_73124_CAJAMARCA,
  THE_73547_PIEDRAS,
  THE_73624_ROVIRA,
  THE_73675_SAN_ANTONIO,
  THE_73854_VALLE_DE_SAN_JUAN,
  THE_73861_VENADILLO
}

final municipioComercialValues = EnumValues({
  "73001 - IBAGUE": MunicipioComercial.THE_73001_IBAGUE,
  "73026 - ALVARADO": MunicipioComercial.THE_73026_ALVARADO,
  "73043 - ANZOATEGUI": MunicipioComercial.THE_73043_ANZOATEGUI,
  "73124 - CAJAMARCA": MunicipioComercial.THE_73124_CAJAMARCA,
  "73547 - PIEDRAS": MunicipioComercial.THE_73547_PIEDRAS,
  "73624 - ROVIRA": MunicipioComercial.THE_73624_ROVIRA,
  "73675 - SAN ANTONIO": MunicipioComercial.THE_73675_SAN_ANTONIO,
  "73854 - VALLE DE SAN JUAN": MunicipioComercial.THE_73854_VALLE_DE_SAN_JUAN,
  "73861 - VENADILLO": MunicipioComercial.THE_73861_VENADILLO
});

enum Organizacion {
  ESTABLECIMIENTO_DE_COMERCIO,
  PERSONA_NATURAL,
  SOCIEDAD_POR_ACCIONES_SIMPLIFICADO
}

final organizacionValues = EnumValues({
  "ESTABLECIMIENTO DE COMERCIO": Organizacion.ESTABLECIMIENTO_DE_COMERCIO,
  "PERSONA NATURAL": Organizacion.PERSONA_NATURAL,
  "SOCIEDAD POR ACCIONES SIMPLIFICADO":
      Organizacion.SOCIEDAD_POR_ACCIONES_SIMPLIFICADO
});

enum Proponente { NO_REPORTA }

final proponenteValues = EnumValues({"No reporta": Proponente.NO_REPORTA});

enum RepresentanteLegalSuplente { NO_APLICA, OLIVEROS_CIFUENTES_LUIS_ERNESTO }

final representanteLegalSuplenteValues = EnumValues({
  "No aplica": RepresentanteLegalSuplente.NO_APLICA,
  "OLIVEROS CIFUENTES LUIS ERNESTO":
      RepresentanteLegalSuplente.OLIVEROS_CIFUENTES_LUIS_ERNESTO
});

enum TamaOEmpresa { MICRO_EMPRESA, NO_APLICA }

final tamaOEmpresaValues = EnumValues({
  "MICRO EMPRESA": TamaOEmpresa.MICRO_EMPRESA,
  "No aplica": TamaOEmpresa.NO_APLICA
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
