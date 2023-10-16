from flask import Blueprint, request, jsonify, json
from config.db import db, app, ma
from models.reporte import Reporte, ReporteSchema

ruta_reporte = Blueprint("ruta_reporte", __name__)

reporte_schema = ReporteSchema()
reportes_schema = ReporteSchema(many=True)


@ruta_reporte.route("/reporte", methods=["GET"])
def reporte():
    resultall = Reporte.query.all() 
    resultado_reporte = reportes_schema.dump(resultall)
    return jsonify(resultado_reporte)

@ruta_reporte.route("/savereporte", methods=["POST"])
def save():
    tipo_reporte = request.json["tipo_reporte"]
    fecha_generacion = request.json["fecha_generacion"]
    estado = request.json["correo_electronico"]
    contenido = request.json["contenido"]

    new_reporte = Reporte(
        tipo_reporte=tipo_reporte,
        fecha_generacion=fecha_generacion,
        estado=estado,
        contenido_reporte=contenido
        
    )
    db.session.add(
        new_reporte,
    )
    db.session.commit()
    return "Datos guardados con exito"


@ruta_reporte.route("/updatereporte", methods=["PUT"])
def Update():
    id = request.json[id]
    tipo_reporte = request.json["tipo_reporte"]
    fecha_generacion = request.json["fecha_generacion"]
    estado = request.json["correo_electronico"]
    contenido = request.json["contenido"]
    reporte = Reporte.query.get(id)
    if reporte:
        print(reporte)
        reporte. tipo_reporte =  tipo_reporte
        reporte.fecha_generacion = fecha_generacion
        reporte. estado=  estado
        reporte. contenido =  contenido
        db.session.commit()
        return "Datos actualizados con exitos"
    else:
        return "Error :/ "


@ruta_reporte.route("/deletereporte/<id>", methods=["DELETE"])
def eliminar(id):
    reporte = Reporte.query.get(id)
    db.session.delete(reporte)
    db.session.commit()
    return jsonify(
        reportes_schema.dump(reporte),
    )