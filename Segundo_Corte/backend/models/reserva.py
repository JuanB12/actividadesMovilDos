from config.db import db, ma, app


class Reserva(db.Model):
    __tablename__ = "tblreserva"

    id = db.Column(db.Integer, primary_key=True)
    idcliente = db.Column(db.Integer, db.ForeignKey("tblcliente.id"))
    fecha_reserva = db.Column(db.String(50))
    asiento = db.Column(db.Integer)

    def __init__(self, idcliente, fecha_reserva, asiento): 
        self.idcliente = idcliente
        self.fecha_reserva = fecha_reserva
        self.asiento = asiento

with app.app_context():
    db.create_all()


class ReservasSchema(ma.Schema):
    class Meta:
        fields = (
            "id",
            "idcliente",
            "fecha_reserva",
            "asiento",
        )
