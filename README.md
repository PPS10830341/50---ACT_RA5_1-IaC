# 50---ACT_RA5_1-IaC

## Ejecutar

1. `docker build -t terraform-custom -f Dockerfile.terraform .`

2. `docker build -t ansible-custom -f Dockerfile.ansible .`

3. `docker-compose up -d` (*`docker-compose down`* para apagar el contenedor)

Cuando termine de cargar, abre tu navegador web e ingresa a: http://localhost:8080. Pedirá una contraseña, la cual puedes encontrar ejecutando `docker-compose logs jenkins`.

4. Instala los plugins recomendados.

5. Cuando termine crea una tarea desde **"New Item"**, añade un nombre, selcciona **"Pipeline"** y pulsa **"OK"**.

En la pantalla que se abre, baja hasta el final del todo hasta la sección llamada **"Pipeline"**:

-  Donde dice Definition, cambia *"Pipeline script"* por *"Pipeline script from SCM"*.
-  En SCM, selecciona **"Git"**.
-  En Repository URL, pon la URL del repositorio.
-  En Branch Specifier, asegúrate de que diga *"\*/main"* o *"\*/master"* (Depende de cómo se llame tu rama de Git).
-  En Script Path, confirma que diga Jenkinsfile.
-  Haz clic en **"Save"**.

Volverás a la pantalla principal de tu tarea. En el menú de la izquierda, haz clic en el botón que dice **"Build Now"**. Verás que abajo a la izquierda aparece un historial con el **#1**. Haz clic sobre ese número y luego en **"Console Output"** para ver en tiempo real cómo trabaja.
