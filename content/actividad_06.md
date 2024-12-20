+++
title = 'Actividad 6'
date = 2024-10-01T11:04:27-06:00
weight = 73
+++

# Actividad 6

{{<hint info>}}
**Fecha de entrega:** 12/10/2024  
**Forma de entrega:** repositorio de github
{{</hint>}}

Esta actividad está asociada a la Práctica 5.

## Parte 1: Comparar las distribuciones de distintos regímenes

En esta primera parte de la práctica debes crear las gráficas de las distribuciones para distintos parámetros como se muestra en la última parte de la práctica. Compara 5 imágenes distintas (intenta poner 2 del regimen que genera vecindades muy pequeñas, 2 del regimen de cuadrantes y una de la zona intermedia donde {{<katex>}}20 a \approx b{{</katex>}}). Modifica el <a href="/curso_MBA/python/analisis_bali_multiple.py" download>código del script</a> para cambiar el tamaño de la gráfica y que se vean bien las imágens. Tambien puedes cambiar a tu gusto la gráfica para enchularla. Para exportar tu imagen puedes usar el comando [plt.imsave( )](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.imsave.html).

## Parte 2: Implementa otras formas de decidir el itinerario

En la figura 3 del artículo se muestra una gráfica que compara la cosecha obtenida usando diferentes reglas para decidir el itinerario que se va a usar en la siguiente iteración. Las relgas de decision que comparan los autores son las siguentes:

1. *máximo*, una celda copia el itinerario de uno de sus cuatro vecinos que obtuvo la mayor cosecha (esta es la que implementamos en el modelo)
2. *aleatorio*, una celda elige al azar uno de los 4 itinerario
3. *mayoría*, una celda elige uno de los itinerarios que usan la mayoría de sus cuatro vecinos (e.g., si 3 vecinos son del itinerario rojo entonces les copia; si 2 son rojo y 2 verde elige uno al azar).
4. *minoría*, una celda elige el itinerario que menos sea usado por sus cuatro vecinos (e.g., si 3 vecinos son del itinerario rojo entonces elijo uno de los otros 3 al azar; si 2 son verdes, 1 rojo y 1 amarillo, elijo azul, etc)

En esta parte de la práctica debes implementar estas reglas de decision. Crea un "chooser" en la interaz para seleccionar la regla de decision como se muestra en la siguiente figura. También incluye una gráfica que muestre cómo cambia la cosecha promedio de las celdas {{<katex>}}H{{</katex>}} en el tiempo se muestra en la figura de abajo.

![intefaz actividad 6](/curso_MBA/img/interfaz_actividad_06.png)

{{<hint info>}}**Tip**  
Revisa la [documentación de NetLogo](https://ccl.northwestern.edu/netlogo/docs/dictionary.html). Puedes ayudarte de las siguientes funciones:
- [`mean`](https://ccl.northwestern.edu/netlogo/docs/dictionary.html#mean)
- [`modes`](https://ccl.northwestern.edu/netlogo/docs/dictionary.html#modes)
{{</hint>}}

## Entrega

En tu repositorio crea una carpeta que se llame `actividad_06`. En esta carpeta debe incluir:

1. la imagen `comparacion_regimenes.png` con el ejercicio de la parte 1 de la actividad
2. el archivo `modelo_arrozales_bali.nlogo` con tu código de la parte 2 de la práctica

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
