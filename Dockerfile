# Este archivo se ejecutará cuando el docker-compose intente acceder a la
# imagen especificada. En pocas palabras, se está creando la imagen al mismo
# tiempo que se crea el contenedor.

# Se establece la imagen base. Es una imagen liviana de python, y cumple 
# la funcionalidad para este test.
FROM python:slim-bullseye

# Se establece el folder que Docker utilizará para el resto de las operaciones.
WORKDIR /flask_app

# Se copia el archivo de requerimientos y se instalan en el contenedor.
RUN pip3 install Flask

# Se copian todos los archivos al directorio establecido anteriormente.
COPY . .

# Se abre el puerto 5000 para que el contenedor pueda recibir peticiones.
EXPOSE 5000

# Se establece el punto de entrada para nuestra app.
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]