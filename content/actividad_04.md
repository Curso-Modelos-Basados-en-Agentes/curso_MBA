+++
title = 'Actividad 4'
date = 2024-09-12T20:01:06-06:00
weight = 53
+++

# Actividad 4

{{<hint info>}}
**Fecha de entrega:** 21/09/2024  
**Forma de entrega:** repositorio de github
{{</hint>}}

Esta actividad está asociada a la Práctica 4.

## Parte 1: Autómata piedra-papel-tijera

En esta práctica construimos una serie de autómatas celulares estocásticos basados en el modelo de piedra-papel-tijera aplicados al estudio de sistema ecológicos. Sin embargo nos faltó implementar el autómata celular en su forma determinista. En esta primera parte de la práctica debes implementarlo. 

Hay varias versiones de este autómata, todas comparten el hecho de que hay un ciclo intransitivo (piedra le gana a tijera, tijera le gana a papel y papel a piedra). Crea un autómata donde el color de una celda dependa del número de vecinos que tiene del color que le gana. Por ejemplo, si rojo le gana a azul, azul a amarillo y amarillo a rojo y tu criterio de vecinos es 2, entonces en una iteración las celdas que sean azules y que tengan al menos 2 vecinos rojos deberán cambiar su color a rojo. Tu modelo debe incluir un parámetro que permita modificar el número de vecinos que usas como criterio.

Recuerda que a diferencia de los modelos que implementamos en la práctica este es un autómata celular clásico con actualización sincrónica (todas las celdas se actualizan al mismo tiempo). 

## Parte 2: Competencia intransitiva y mobilidad

Además del ejercicio de la parte 1 debes subir tu código que hiciste de la Práctica 4 como evidencia de que la realizaste. 

## Entrega

En tu repositorio crea una carpeta que se llame `actividad_03`. Ensta carpeta debe incluir:

1. el archivo `automata_RSP.nlogo` con ejercicio de la parte 1 de la actividad
2. el archivo `modelo_RSP_01.nlogo` con tu código de la parte 1 de la práctica
3. el archivo `modelo_RSP_02.nlogo` con tu código de la parte 2 de la prácitca

Recuerda que para registrar tus cambios en el repositiorio de git y subirlo a github debes hacer los siguientes comandos desde la carpeta de tu repositorio

``` bash
# Agregar todos los cambios de mi repositorio a la zona "stage"
git add .

# Agegar los cambios al repositorio (hacer el "commit")
git commit -m "[un mensaje descriptivo]"

# Subir los cambios al repositorio remoto (github)
git push
```

Con estos tres comandos tu repositorio de github se deberá actualizar. 
