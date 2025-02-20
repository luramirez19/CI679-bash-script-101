#!/usr/bin/env bats

load "${BATS_TEST_DIRNAME}/../src/script.sh"

setup() {
  mkdir -p test_dir
  echo "linea1" > testfile.txt
  echo -e "linea1\nlinea2\nlinea3" > testfile.txt
  echo "usuario@ejemplo.com" > email_test.txt
  echo "archivo1" > test_dir/archivo1.txt
  echo "archivo2" > test_dir/archivo2.txt
  echo -e "linea1\nlinea2\nlinea1" > dup_test.txt
}

teardown() {
  rm -f testfile.txt email_test.txt dup_test.txt
  rm -rf test_dir
}

@test "Determinar si un número es par debe devolver 'Si' para 10" {
  run es_par 10
  [ "$output" == "Si" ]
}


@test "Calcular el factorial de 5 debe ser 120" {
  run calcular_factorial 5
  [ "$output" -eq 120 ]
}

@test "La suma de los primeros 10 números debe ser 55" {
  run suma_numeros 10
  [ "$output" -eq 55 ]
}

@test "Verificar si 'oso' es un palíndromo debe devolver 'Si'" {
  run es_palindromo 'oso'
  [ "$output" == "Si" ]
}

@test "Convertir 0 grados Celsius a Fahrenheit debe ser 32.0" {
  run celsius_a_fahrenheit 0
  expected=$(printf "%.1f" 32.0)
  actual=$(printf "%.1f" "$output")
  [ "$actual" == "$expected" ]
}

@test "Convertir 32 grados Fahrenheit a Celsius debe ser 0.0" {
  run fahrenheit_a_celsius 32
  [ "$output" == "0.0" ] || false
}

@test "La secuencia Fibonacci hasta 5 debe ser '0 1 1 2 3'" {
  run fibonacci 5
  [ "$output" == "0 1 1 2 3 " ]
}

@test "Verificar si 7 es un número primo debe devolver 'Si'" {
  run es_primo 7
  [ "$output" == "Si" ]
}

@test "Extraer correos electrónicos de un archivo debe devolver un correo válido" {
  run extraer_correos email_test.txt
  [ "$output" == "usuario@ejemplo.com" ]
}

@test "Mostrar los 5 números más grandes de una lista" {
  run numeros_mas_grandes "1 5 8 10 2 99 25 18 7 64"
  [ "$output" == "99 64 25 18 10" ]
}

@test "Obtener la suma de los dígitos de un número" {
  run suma_digitos 1234
  [ "$output" -eq 10 ]
}

@test "Obtener la IP pública debe devolver un formato válido" {
  run ip_publica
  [[ "$output" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]
}

@test "Eliminar líneas duplicadas en un archivo debe funcionar correctamente" {
  run eliminar_duplicados dup_test.txt
  output=$(echo "$output" | uniq | wc -l)
  [ "$output" -eq 2 ]
}

@test "Encontrar los archivos más grandes debe devolver una salida válida" {
  run archivos_grandes test_dir
  [ "$status" -eq 0 ]
}

@test "Verificar si el usuario root existe debe devolver 'Si'" {
  run usuario_existe root
  [ "$output" == "Si" ]
}

@test "Obtener el tamaño de un directorio debe devolver un tamaño válido" {
  run tamano_directorio .
  [ "$status" -eq 0 ]
}
