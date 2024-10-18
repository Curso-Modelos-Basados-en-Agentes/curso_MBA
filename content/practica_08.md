+++
title = 'Práctica 8'
date = 2024-10-18T10:43:49-06:00
weight = 92
+++

# Práctica 8: Modelo de tráfico

{{<hint info>}}
**Contenido:** 6 videos  
**Duración estimada:** 1 hora 2 minutos 
{{</hint>}}


## Introducción

¿Cómo es que se forma el tráfico? En esta práctica vamos a construir y explorar un modelo sobre la formación de tráfico. En este modelo vamos a explorar que pasa cuando ponemos a varios carros a moverse en una dimensión permitiendo que cambien su aceleración para evitar chocar. En este sencillo fenómeno encontraremos algunas propiedades características de los sistemas complejos como las propiedades emergentes y los puntos críticos.

## Presentación y definición del modelo

{{<youtube id="NyJ8hz7VmoA">}}

## Procedimiento `setup`

{{<youtube id="nE3tVM4kNec">}}

## Procedimiento `go`

{{<youtube id="9Di1n-GE7X0">}}

## Visualización y gráficas

{{<youtube id="vZqQdSQK0BA">}}

{{<hint warning>}}**Explora el modelo**

- Pon los valores de `aceleracion` y `desaceleracion` en valores de 0.0045 y 0.026, respectivamente, y explora que pasa cuando modificas el parámetro `numero-de-carros`. ¿Cuál es la velocidad máxima, mínimima y velocidad del auto muestra cuando tienes pocos autos? ¿Qué pasa conforme aumentas el número de autos?
- Pon el valor de `numero-de-autos` en 20 y el de `aceleracion` en 0.0045. Pon el valor de `desaceleracion` en 0 y ve subiéndolo poco a poco. ¿Qué significa que el valor de `desaceleracion` sea 0? ¿Qué pasa conforme aumenta el valor de `desaceleracion`?
{{</hint>}}

## Pertrubaciones

{{<youtube id="Yg2SLN-thK4">}}

{{<hint warning>}}**Explora el modelo**

¿Qué pasa cuando aumentas el tamaño de la perturbación? Pon el parámetro `numero-de-carros` en 18 y pon que la posicion y velocidad inicial sean homogeneas. Aumenta el tamaño de la perturbación dando click muchas veces seguidas en el botón `perturbación`. ¿Para qué cantidad de autos el disturbio logra desaparecer?

{{</hint>}}

## Tráfico fantasma y propiedades emergentes

{{<youtube id="dikGpjcegRU">}}

{{<hint info>}}**Material complementario**

Si les interesa saber más sobre el tráfico fantasma pueden consultar [el artículo donde se describe el experimento](https://iopscience.iop.org/article/10.1088/1367-2630/15/10/103034/pdf) y los siguientes videos:
- [Video: ¿Cómo se forman los atascos de tráfico en nuestras carreteras? Tu eres el culpable](https://www.youtube.com/watch?v=z2_1sfbHbgY)
- [Video: Why the @#$% is there so much traffic?](https://www.youtube.com/watch?v=TNokBgtSUvQ&themeRefresh=1)
- [Video: The Simple Solution to Traffic](https://www.youtube.com/watch?v=iHzzSao6ypE)

{{</hint>}}
