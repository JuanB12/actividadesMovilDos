from config.db import db, ma, app


class Viaje(db.Model):
    __tablename__ = "tbl_viaje"

    id = db.Column(db.Integer, primary_key=True)
    idpasajero = db.Column(db.Integer, db.ForeignKey("tbl_pasajero.id"))
    idvehiculo = db.Column(db.Integer, db.ForeignKey("tbl_vehiculo.id"))
    hora_inicio = db.Column(db.String(200))
    hora_fin = db.Column(db.String(200))
    ruta = db.Column(db.String(200))
    estado = db.Column(db.String(200))

    def __init__(
        self,
        idpasajero,
        idvehiculo,
        hora_inicio,
        hora_fin,
        ruta,
        estado,
    ):
        self.idpasajero = idpasajero
        self.idvehiculo = idvehiculo
        self.hora_inicio = hora_inicio
        self.hora_fin = hora_fin
        self.ruta = ruta
        self.estado = estado


with app.app_context():
    db.create_all()


class ViajeSchema(ma.Schema):
    class Meta:
        fields = (
            "id",
            "idpasajero",
            "idvehiculo",
            "hora_inicio",
            "hora_fin",
            "ruta",
            "estado",
        )
