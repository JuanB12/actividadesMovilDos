from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root@localhost/parcialMovil"
app.config['SQLALCHEMY_TRACK_MODIFICATION'] = False

app.secret_key = "segundo_parcial"

db = SQLAlchemy(app)

ma = Marshmallow(app)