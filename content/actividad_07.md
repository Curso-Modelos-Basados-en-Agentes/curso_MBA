+++
title = 'Actividad 7'
date = 2024-10-12T09:10:22-06:00
weight = 83
+++

# Actividad 7

{{<hint info>}}
**Fecha de entrega:** 19/10/2024  
**Forma de entrega:** repositorio de github
{{</hint>}}

Esta actividad está asociada a la Práctica 7. **La parte 2 de la actividad es opcional**. 

## Parte 1: Explora otros modelos de redes

Las redes sociales en el mundo real no son como en una látice en la que todos tienen el mismo número de enlaces. Hay personas que son muy populares y entonces tienen muchos enlaces, mientras que hay otros que no tienen muchos conocidos y tienen pocos enlaces. En la figura 3 del artículo los autores exploran otros tipos de redes que no son látices. Exploran las redes aleatorias (una donde los enlaces se forman de manera aleatoria entre los nodos), la red libre de escala o de enlace preferencial (que tiene la propiedad de que su distribución de grado sigue una ley de potencias: "hay unos cuantos nodos con muchísimos enlaces, mientras que la mayoría tienen bien poquitos enlaces") y otro modelo de red que genera clusters. ¿Los resultados del modelo son robustos al tipo de red que se usen?

<a href="/curso_MBA/netlogo/polarizacion_extension_redes.nlogo" download>Descarga este modelo extendido</a> que incluye un parámetro extra que se llama `tipo_red` que permite explorar 3 tipos de redes: "látice cuadrada", "aleatoria" y "libre de escala". Nota que con otros tipos de redes la posición espacial de los agentes ya no es relevante (lo importante son los enlaces). Diseña experimentos para comparar como la Psi cambia con esos 3 distintos tipos de red y generar algo similar a la figura 3 (nota que nosotros no implementamos el último tipo de redes que ellos usan). En esta parte de la actividad debes generar una figura con 3 páneles con los 3 tipos de red: "látice", "aleatoria" y "libre de escala", donde para cada uno se grafique la {{<katex>}}\Psi{{</katex>}} (polarización) en función del parámetro {{<katex>}}\gamma{{</katex>}}. Puedes hacer tu imagen con R o con python.

{{<hint info>}}**Tip**  
Para que no se tarden mucho en correr tus experimentos:

1. deja un tamaño de mundo pequeño (un mundo de 15 x 15 es suficiente), 
2. no dejes que se alarguen mucho tus experimentos (e.g., con unas 20,000 o 50,000 iteraciones está bien) y calcula tu Psi solo al final del experimento,
3. no explores intervalos de h muy grandes (con pasos de 0.2 es suficiente), y
4. si decides hacer experimentos largos puedes dejar tu compu en la noche corriendolos solo que cuida que no se duerma tu compu porque netlogo también se duerme.
{{</hint>}}

{{<hint info>}}**Para saber más**  
Para generar las redes con otras topologías usamos una extensión de NetLogo que se llama [`nw`](https://ccl.northwestern.edu/netlogo/docs/nw.html) que incluye varias funciones para crear y analizar redes. Revisa el código para ver cómo funciona. 
{{</hint>}}


## Parte 2 (opcional): Reproduce la figura 6 del artículo

En la segunda parte de la práctica debes reproducir la figura 6 del artículo donde se explora la dinámica de 2 corridas una con interacción local y otra con interacciones globales pero con valores bajos de homofilia. Para ello debes diseñar el experimento en NetLogo y analizarlo usando el script que se usa en la última parte de la práctica. Ve los detalles del experimento en el pie de figura y en el texto. 

{{<hint info>}}**Tip**  
- Puedes intentar hacer exactamente el mismo diseño experimental de los autores, usando el mismo número de agentes y tiempo (para cambiar el número de agentes tienes que cambiar en `Settings` el tamaño las coordenadas del mundo). Solo que si sigues el mismo diseño de los autores posiblemente se tarden mucho las corridas, así que mejor intentalo con un menor número de agentes como se hace en el video. Del tiempo también puedes usar rangos más pequeños como se hace en el video. 
- Para exportar tu imagen puedes usar la función: [`ggsave( )`](https://ggplot2.tidyverse.org/reference/ggsave.html)
{{</hint>}}

## Entrega

En tu repositorio crea una carpeta que se llame `actividad_07`. Esta carpeta debe incluir:

1. la imagen `tipos_de_red.png` con el ejercicio de la parte 1 de la actividad, 
2. el script `tipos_de_red.R` (o `tipos_de_red.py` si lo haces en python) con el script para hacer la figura de esta primera parte de la actividad.
3. si decides hacer la parte 2 opcional incluye también la imagen `dinamica_baja_homofilia.png` con el ejercicio de la parte 2 de la actividad.

Recuerda que para registrar tus cambios en el repositiorio de git y subirlo a github debes hacer los siguientes comandos desde la carpeta de tu repositorio

``` bash
# Agregar todos los cambios de mi repositorio a la zona "stage"
git add .

# Agegar los cambios al repositorio (hacer el "commit")
git commit -m "[un mensaje descriptivo]"

# Subir los cambios al repositorio remoto (github)
git push
```
