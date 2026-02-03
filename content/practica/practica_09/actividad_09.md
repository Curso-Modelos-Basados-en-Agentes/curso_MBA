+++
title = 'Actividad 9'
date = 2024-10-24T11:22:20-06:00
weight = 102
+++

# Actividad 9
 
{{<hint info>}}
**Fecha de entrega:** 5/11/2024  
**Forma de entrega:** repositorio de github
{{</hint>}}

Esta actividad está asociada a la Práctica 9. Puedes elegir solo hacer una de las dos opciones para esta actividad (o puedes hacer las dos si quieres).

## Opción 1: Extiende el modelo

El objetivo de esta opción de la actividad es que modifiques de alguna manera el modelo que construimos. Existen muchas posibles modificaciones desde algunas muy simples a otras más complejas. Algunas ideas de lo que puedes hacer es:

1. modifica la posición de la fuente de alimento para ver si los agentes aprenden a moverse a un lugar en específico
2. implementa otro operador genético como el entrecruzamiento (i.e., haz que los hijos tengan dos padres y que su genotipo sea una mezcla del de sus padres) 
3. haz que los depredadores también evolucionen con una red neuronal

En la pestaña de info de tu modelo explica brevemente cuál es la modificacion que le hiciste al modelo. 

Además debes crear un giff de tu simulación como se explica en la última parte de la Práctica 9.

## Opción 2: Diseña un algoritmo de búsqueda y compara su desempeño con respecto al evolucionado

Los algoritmos genéticos a veces pueden generar soluciones poco intuitivas que pueden ser más eficientes que las diseñadas por nosotros. El objetivo de esta segunda opción de actividad es que tu diseñes una estrategia que sigan todas las tortugas para alimentarse y sobrevivir. Por ejemplo, puedes ordenarle a las torutgas que camien de manera aleatoria y si ven comida se dijan hacia ella y si ven un depredador se alejen de él. ¿Qué tan eficiente crees que sea esta estrategia? 

Modifica el modelo para que tu puedas elegir si ejecuta las estrategias buscadas por el algoritmo genético o la estrategia que tu diseñes e implementes. Compara el desempeño de tu estrategia y las que encuentre el algoritmo genético (deja que evolucione por suficiente tiempo, al menos unas 50 iteracciones). Recuerda que debes compararlas con las mismas condiciones. Algunas formas en cómo puedes comparar el desempeño de una y otra estrategia es viendo cuanta energia obtienen (su adecución) o viendo cuanto alimento del total es consumido. En la pestaña de Info describe brevemente tu algoritmo y discute cómo fue su desempeño en comparación con uno que obtengas después de correr tu algoritmo genético por varias generaciones.

## Entrega

En tu repositorio crea una carpeta que se llame `actividad_09`. En esta carpeta debe incluir:

1. el archivo `algoritmo_genetico.nlogo` con tu extensión del modelo (si elegiste la opción 1) o con tu implementación de algoritmo diseñado (si elegiste la opción 2), y
2. (si elegiste la opción 1) el archivo `extension.gif` con un gif que muestre cómo evolucionan los organismos en tu simulación. 

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
