from config.db import db, ma, app


class Aerolinea(db.Model):
    __tablename__ = "tblaerolinea"

    id = db.Column(db.Integer, primary_key=True)
    nombre_aerolinea = db.Column(db.String(50))


with app.app_context():
    db.create_all()


class AerolineaSchema(ma.Schema):
    class Meta:
        fields = (
            "id",
            "nombre_aerolinea",
        )
