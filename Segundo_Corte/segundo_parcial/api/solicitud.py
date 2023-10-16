from flask import Blueprint, request, jsonify, json
from config.db import db, app, ma
from models.solicitud import Solicitud, SolicitudSchema

ruta_solicitud = Blueprint("ruta_solicitud", __name__)

solicitud_schema = SolicitudSchema()
solicitudes_schema = SolicitudSchema(many=True)


@ruta_solicitud.route("/solicitud", methods=["GET"])
def pago():
    resultall = Solicitud.query.all()
    resultado_solicitud = solicitudes_schema.dump(resultall)
    return jsonify(resultado_solicitud)


@ruta_solicitud.route("/savepago", methods=["POST"])
def save():
    idpasajero = request.json["idpasajero"]
    origen = request.json["origen"]
    destino = request.json["destino"]
    estado = request.json["estado"]
    hora_solicitud = request.json["hora_solicitud"]
    new_solicitud = Solicitud(
        idpasajero,
         origen,
        destino,
        estado,
        hora_solicitud,
    )
    db.session.add(
        new_solicitud,
    )
    db.session.commit()
    return "Datos guardado con exito"


@ruta_solicitud.route("/updatepago", methods=["PUT"])
def Update():
    id = request.json["id"]
    idpasajero = request.json["idpasajero"]
    origen = request.json["origen"]
    destino = request.json["destino"]
    estado = request.json["estado"]
    hora_solicitud = request.json["hora_solicitud"]
    solicitud = Solicitud.query.get(id)
    if solicitud:
        print(solicitud)
        solicitud.idpasajero = idpasajero
        solicitud.origen = origen
        solicitud. destino =  destino
        solicitud.estado = estado
        solicitud.hora_solicitud = hora_solicitud

        db.session.commit()
        return "Datos actualizados con exitos"
    else:
        return "Error :/ "


@ruta_solicitud.route("/deletepago/<id>", methods=["DELETE"])
def eliminar(id):
    solicitud = Solicitud.query.get(id)
    db.session.delete(solicitud)
    db.session.commit()
    return jsonify(
        solicitudes_schema.dump(solicitud),
    )
