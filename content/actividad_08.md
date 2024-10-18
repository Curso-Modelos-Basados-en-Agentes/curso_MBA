+++
title = 'Actividad 8'
date = 2024-10-18T10:50:29-06:00
weight = 93
+++

# Actividad 8

{{<hint info>}}
n**Fecha de entrega:** 26/10/2024
**Forma de entrega:** repositorio de github
{{</hint>}}

Esta actividad destá asociada a la Práctica 8. 

## Validación del modelo

La siguiente figura muestra los resultados que obtuvieron [Tadaki et al. (2013)](https://iopscience.iop.org/article/10.1088/1367-2630/15/10/103034/pdf) en un experimento empírico. Esta gráfica muestra la relación entre la densidad de autos ({{<katex>}}\rho{{</katex>}}, media en número de autos por kilómetro) y el flujo ({{<katex>}}q{{</katex>}}, medido como la cantidad de autos que pasan por un punto durante un intervalo de 5 minutos). La gráfica muestra que cuando la densidad de autos es baja entonces el flujo aumenta de manera lineal. Sin embargo, cuando se alcanza un valor crítico de autos el flujo baja. Para tener certeza sobre que nuestro modelo es una buena representación de este fenómeno deberíamos poder reproducir este resultado.

![Figura 1 de artículo de Tadaki et al. (2013)](/curso_MBA/img/fig_1_tadaki_et_al_2013.png)

El objetivo de esta actividad es que reproduzcas este resutlado con datos simulados para validar nuestro modelo. Para ello debes hacer lo siguiente cosas:
1. generar una métrica del flujo de autos,
2. diseñar una serie de experimentos para obtener tus datos, y
3. procesar y analizar tus datos para replicar la figura.

{{<hint info>}}**Tip: ¿Cómo medir el flujo?**  

El flujo mide cuantos autos pasan por un punto en un intervalo de tiempo. En términos de nuestro modelo la métrica debería medir cuantos autos pasan por una coordeada x dada durante un intervalo dado de tiempo (e.g., en 50 ticks). Aquí te dejo algunos tips para que generes una métrica del flujo:
- Puedes utilizar una variable global (a la cual todos los agentes pueden tener acceso y modificar) que vaya registrando el flujo.
- Tu métrica de flujo puede ser un contador que se vaya reiniciando cada intervalo de tiempo.
- Para saber si un auto paso por el "sensor" puedes revisar su posición antes y después de avanzar.
- Para reducir la variación sobre nuestra métrica puedes promediar, para eso puedes guardar en una lista tus cálculos de flujo. Recuerda que NetLogo por defecto inicializa todos los valores como 0, así que si quieres definir una variable que sea una lista debes en el `setup` darle un valor de lista `[]` para que posteriomente no te reclame. Para promediar tu lista puedes usar `mean` (solo que nota que NetLogo no puede promediar listas vacías, así que puedes inicializar tu lista con `[0]` para que no se queje).

{{</hint>}}

{{<hint info>}}**Tip: ¿Cómo hacer mis experimentos?**  
Para validar tu modelo debes diseñar experimentos. Aquí te dejo algunos tips:
- Este es un modelo muy sencillo que corre muy rápido, entonces puede correr varias repeticiones y no debe tardar mucho tu modelo.
- Corre tus experimentos durante varias iteraciones (e.g., 3000-5000 ticks) para que su comportamiento se estabilice antes de que obtengas la métrica.
- Puedes medir el flujo solo al final de cada experimento (o tambien puedes filtrar los datos posteriormente cuando hagas la gráfica).
{{</hint>}}

## Entrega

En tu repositorio crea una carpeta que se llame `actividad_08`. En esta carpeta debe incluir:

1. la imagen `validacion.png` en la cual reproduzcas con datos simulados la figura 1 de Tadaki et al. (2013).
2. el script `validacion.R` o `validacion.py` con el que se crea tu imagen.
3. el archivo `trafico_fantasma.nlogo` con tu de la práctica en el cual hayas implementado una manera de medir el flujo de autos y donde hayas creado tu experimento para la validación.
4. opcionalmente incluye los datos de tu experimento con los que creaste tu imagen.

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
