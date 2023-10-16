from flask import Blueprint, request, jsonify, json
from config.db import db, app, ma
from models.viaje import Viaje, ViajeSchema

ruta_viaje = Blueprint("ruta_viaje", __name__)

viaje_schema = ViajeSchema()
viajes_schema = ViajeSchema(many=True)


@ruta_viaje.route("/viaje", methods=["GET"])
def viaje():
    resultall = Viaje.query.all()
    resultado_viaje = viajes_schema.dump(resultall)
    return jsonify(resultado_viaje)