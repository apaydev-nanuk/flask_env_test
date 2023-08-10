from flask import Flask
import os

# Inicializando la app de flask
app = Flask(__name__)

# Estableciendo la ruta home
@app.route('/')
def home():
    # Obteniendo las variables del entorno
    user = os.environ.get('USER')
    password = os.environ.get('PASSWORD')
    if user == 'root' and password == 'contraseñasecreta':
        return "<h1 style='color:green'>ACCESO CONCEDIDO</h1>"
    else:
        return "<h1 style='color:red'>ACCESO DENEGADO</h1>"