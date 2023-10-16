from config.db import db, ma, app


class Pago(db.Model):
    __tablename__ = "tbl_pago"

    id = db.Column(db.Integer, primary_key=True)
    idpasajero = db.Column(db.Integer, db.ForeignKey("tbl_pasajero.id"))
    monto_total = db.Column(db.String(200))
    fecha_pago = db.Column(db.String(200))
    metodo_pago = db.Column(db.String(200))

    def __init__(self, idpasajero, monto_total, fecha_pago, metodo_pago):
        self.idpasajero = idpasajero
        self.monto_total = monto_total
        self.fecha_pago = fecha_pago
        self.metodo_pago = metodo_pago


with app.app_context():
    db.create_all()


class PagoSchema(ma.Schema):
    class Meta:
        fields = (
            "id",
            "idpasajero",
            "monto_total",
            "fecha_pago",
            "metodo_pago",
        )
