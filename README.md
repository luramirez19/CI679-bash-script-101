# Universidad Autónoma de Chihuahua  
## Facultad de Ingeniería  
### Ingeniería en Ciencias de la Computación  

## CI679 - Desarrollo Basado en Plataformas  
### Tarea | Desarrollo de scripts en Bash con pruebas automatizadas  

Este proyecto consiste en la creación de un conjunto de scripts en **Bash** diseñados para resolver problemas computacionales comunes. Además, se implementan pruebas automatizadas con **Bats (Bash Automated Testing System)** para validar el correcto funcionamiento de cada script. El desarrollo sigue la metodología **Red-Green-Refactor** y el código se gestiona con Git en un repositorio de **GitHub Classroom**.

---

## **Características**  
### **Lista de funciones implementadas**  
A continuación, se presentan las funciones desarrolladas en Bash y su descripción:

| Número | Función                     | Descripción |
|--------|-----------------------------|------------------------------------------------|
| 1      | `es_par`                     | Determina si un número es par. |
| 2      | `calcular_factorial`         | Calcula el factorial de un número. |
| 3      | `suma_numeros`               | Suma los primeros N números naturales. |
| 4      | `es_palindromo`              | Verifica si una palabra es un palíndromo. |
| 5      | `celsius_a_fahrenheit`       | Convierte una temperatura de Celsius a Fahrenheit. |
| 6      | `fahrenheit_a_celsius`       | Convierte una temperatura de Fahrenheit a Celsius. |
| 7      | `fibonacci`                  | Genera la serie de Fibonacci hasta N términos. |
| 8      | `es_primo`                   | Verifica si un número es primo. |
| 9      | `extraer_correos`            | Extrae correos electrónicos de un archivo. |
| 10     | `numeros_mas_grandes`        | Obtiene los 5 números más grandes de una lista. |
| 11     | `suma_digitos`               | Suma los dígitos de un número. |
| 12     | `ip_publica`                 | Obtiene la IP pública del sistema. |
| 13     | `eliminar_duplicados`        | Elimina líneas duplicadas en un archivo. |
| 14     | `archivos_grandes`           | Obtiene los archivos más grandes en un directorio. |
| 15     | `usuario_existe`             | Verifica si un usuario existe en el sistema. |
| 16     | `tamano_directorio`          | Obtiene el tamaño de un directorio. |

---

## **Estructura del Proyecto**  
```plaintext
bash_script_project/
├── src/                # Código fuente de los scripts
│   ├── script.sh       # Archivo principal con las funciones en Bash
├── test/               # Archivos de pruebas automatizadas con Bats
│   ├── test_script.bats # Archivo de pruebas para los scripts en Bash
├── .gitignore          # Archivos y directorios ignorados por Git
├── README.md           # Documentación del proyecto
```

---

## **Instalación y Uso**  
### **1. Clonar el Repositorio**  
Clona el repositorio desde GitHub Classroom:
```bash
git clone <<url>>
cd bash_script_project
```

### **2. Instalar Bats**  
Bats es un framework de pruebas para Bash. Instálalo según tu sistema operativo:

**Ubuntu/Linux:**
```bash
sudo apt-get install -y bats
```

**macOS (Homebrew):**
```bash
brew install bats-core
```

### **3. Ejecutar las Pruebas**  
Para ejecutar las pruebas automatizadas, usa el siguiente comando:
```bash
bats test/test_script.bats
```

---

## **Buenas Prácticas**  
- **Control de Versiones:** Se ha configurado un repositorio Git con un archivo `.gitignore` para evitar subir archivos innecesarios.
- **Estructura Clara:** Se sigue una organización modular para facilitar la comprensión y mantenimiento del código.
- **Commits Descriptivos:** Se realizaron commits con mensajes claros y concisos.

---

## **Repositorio**  
Este proyecto se encuentra alojado en GitHub Classroom. Puedes acceder al repositorio aquí:  
🔗 [GitHub Repository](https://github.com/CI679/desarrollo-scripts-bash)

---

## **Autor**  
📌 **Nombre y Matrícula:** <<nombre y matrícula>>  
