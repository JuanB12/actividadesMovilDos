from flask import Blueprint, request, jsonify, json
from config.db import db, app, ma
from models.cliente import Cliente, ClientesSchema

ruta_clientes = Blueprint("ruta_cliente", __name__)

cliente_schema = ClientesSchema()
clientes_schema = ClientesSchema(many=True)


@ruta_clientes.route("/clientes", methods=["GET"])
def cliente():
    resultall = Cliente.query.all()  # Select * from Clientes
    resultado_cliente = clientes_schema.dump(resultall)
    return jsonify(resultado_cliente)


@ruta_clientes.route("/savecliente", methods=["POST"])
def save():
    nombre_cliente = request.json["nombre"]
    correo_cliente = request.json["correo"]
    telefono_cliente = request.json["telefono"]
    print("PRUEBA DE DEBUG")
    new_cliente = Cliente(
        nombre_cliente,
        correo_cliente,
        telefono_cliente,
    )
    db.session.add(new_cliente)
    db.session.commit()
    return "datos guardado con exito"


@ruta_clientes.route("/updatecliente", methods=["PUT"])
def Update():
    id = request.json["id"]
    nombre= request.json["nombre_cliente"]
    correo = request.json["correo_cliente"]
    telefono = request.json["telefono_cliente"]
    cliente = Cliente.query.get(id)
    if cliente:
        print(cliente)
        cliente.nombre_cliente = nombre
        cliente.correo_cliente = correo
        cliente.telefono_cliente = telefono
        db.session.commit()
        return "Datos actualizado con exitos"
    else:
        print("PRUEBA DE DEBUG")    
        return "Error"

@ruta_clientes.route("/deletecliente/<id>", methods=["DELETE"])
def eliminar(id):
    cliente = Cliente.query.get(id)
    db.session.delete(cliente)
    db.session.commit()
    return jsonify(
        cliente_schema.dump(cliente),
    )
