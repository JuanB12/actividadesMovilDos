from config.db import db, ma, app


class Reporte(db.Model):
    __tablename__ = "tbl_reporte"

    id = db.Column(db.Integer, primary_key=True)
    tipo_reporte = db.Column(db.String(100))  #
    fecha_generacion = db.Column(db.String(100))
    estado = db.Column(db.String(100))
    contenido_reporte = db.Column(db.String(100))

    def __init__(
        self,
        tipo_reporte,
        fecha_generacion,
        estado,
        contenido_reporte,
    ):
        self.tipo_reporte = tipo_reporte
        self.fecha_generacion = fecha_generacion
        self.estado = estado
        self.contenido_reporte = contenido_reporte


with app.app_context():
    db.create_all()


class ReporteSchema(ma.Schema):
    class Meta:
        fields = (
            "id",
            "tipo_reporte",
            "fecha_generacion",
            "estado",
            "contenido_reporte",
        )