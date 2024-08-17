+++
title = 'Actividad 1'
date = 2024-08-16T20:05:25-06:00
weight = 22
+++

# Actividad 0

{{<hint info>}}
**Fecha de entrega:** 24/08/2024  
**Forma de entrega:** repositorio de github
{{</hint>}}

Esta actividad está asociada a la Práctica 1.

## Parte 1: Segregación de más de 2 grupos

En la Práctica 1 exploramos un modelo de segregación donde sólo hay 2 grupos. ¿Qué pasa cuando hay más de 2 grupos?

1. Crea una copia de tu script del modelo de la práctica que se llame `segregacion_multiples_grupos.nlogo`.
2. Modifica el código del modelo para que tengas más de 3 (o más grupos si quieres).
3. Opcional: has que un usuario del modelo pueda seleccionar desde la interfaz el número de grupos que quiera. Es decir, agrega un slider con el que uno pueda seleccionar el número de grupos que se crean en el modelo y modifica el código para que este funcione.

{{<hint info>}}**Tip**  
Para ayudarte puedes consultar la [documentación oficial de NetLogo](https://ccl.northwestern.edu/netlogo/docs/dictionary.html). También puedes pedirle ayuda a chatgpt, aunque nota que no es tan chido con NetLogo como lo es con otros lenguajes de programación (ya que NetLogo no es muy popular no tiene mucho con qué aprender).
{{</hint>}}

## Parte 2: Grupos con diferentes preferencias

En la Práctica 1 exploramos un modelo donde todos los agentes sin importar su grupo tienen la misma preferencia. Algunos estudios han documentados cómo en algunas regiones de Estados Unidos la población blanca tiene una mayor preferencia de vivir con otros blancos, mientras que la comunidad afro-americana tiene una preferencia menor por vivir con los de su mismo grupo. ¿Qué pasaría si cada en el modelo de Schelling le damos una preferencia diferente a cada grupo?

1. Crea una copia de tu script del modelo de la práctica que se llame `segregacion_diferentes_preferencias.nlogo` (usa el modelo con solo 2 grupos, no el que hagas en la parte 1)
2. Modifica el modelo para que cada grupo tenga una preferencia distinta. En lugar de tener un solo parámetro `preferencia` puedes crea: `preferencia_1` y `preferencia_2`, que controlen la preferencia de cada grupo. 

## Entrega

En tu repositorio crea una carpeta que se llame `actividad_01`. Esta carpeta debe incluir:

1. el archivo `segregacion_multiples_grupos.nlogo` con tu ejercicio de la parte 1, y
2. el archivo `segregacion_diferentes_preferencias.nlogo` con tu ejericio de la parte 2.

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

En el aula virtual solo debes poner el url de tu repositorio de github.
