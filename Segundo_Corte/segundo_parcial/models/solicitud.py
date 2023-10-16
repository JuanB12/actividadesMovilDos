from config.db import db, ma, app


class Solicitud(db.Model):
    __tablename__ = "tbl_solicitud"

    id = db.Column(db.Integer, primary_key=True)
    idviaje= db.Column(db.Integer, db.ForeignKey("tbl_viaje.id"))
    origen = db.Column(db.String(200))
    destino = db.Column(db.String(200))
    estado = db.Column(db.String(200))  # (pendiente, asignado, completado)
    hora_solicitud = db.Column(db.String(200))

    def __init__(
        self,
        idviaje,
        origen,
        destino,
        estado,
        hora_solicitud,
    ):
        self.idviaje = idviaje
        self.origen = origen
        self.destino = destino
        self.estado = estado
        self.hora_solicitud = hora_solicitud


with app.app_context():
    db.create_all()


class SolicitudSchema(ma.Schema):
    class Meta:
        fields = (
            "id",
            "idviaje",
            "origen",
            "destino",
            "estado",
            "hora_solicitud",
        )
