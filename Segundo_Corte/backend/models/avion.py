from config.db import db, ma, app


class Avion(db.Model):
    __tablename__ = "tblavion"

    id = db.Column(db.Integer, primary_key=True)
    idaerolinea = db.Column(db.Integer, db.ForeignKey("tblaerolinea.id"))
    modelo_avion = db.Column(db.String(255))


with app.app_context():
    db.create_all()


class AvionSchema(ma.Schema):
    class Meta:
        fields = (
            "id",
            "idaerolinea",
            "modelo_avion",
        )
