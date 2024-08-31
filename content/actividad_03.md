+++
title = 'Actividad 3'
date = 2024-08-31T12:20:54-06:00
weight = 43
+++

# Actividad 3

{{<hint info>}}
**Fecha de entrega:** 14/09/2024  
**Forma de entrega:** repositorio de github
{{</hint>}}

Esta actividad está asociada a la Práctica 3.

## Parte 1: Otros autómatas celulares

Además del juego de la vida y del autómata celular elemental existen muchas otras [relgas de autómatas celulares](https://en.wikipedia.org/wiki/Category:Cellular_automaton_rules). Algunas reglas son pequeñas variaciones del juego de la vida, otras son reglas totalmente distintas y otros autómatas permiten más de 2 estados por celda. Con cada regla se pueden obtener comportamientos muy distintos.

En esta actividad debes elegir una regla de un autómata que sea distina al juego de la vida e implementarla en NetLogo.

## Parte 2: Falling sand simulator

Dentro del género de juegos "sandbox" existe un subgénero que se llama "falling-sand games". Estos juegos se caracterizan por tener un motor de juego que es un autómata celular. Por lo tanto, en estos juegos la física del juego está dada por las reglas que se le ponen al autómata celular. Un juego famoso de este género es [Noitia](https://store.steampowered.com/app/881100/Noita/), un roguelite. No obstante la mayoría de los "falling-sand games" son mundos libres, por ejemplo [sandspile](https://sandspiel.club/). Fíjate como en este juego puedes elegir "elementos" como arena, agua o fuego y ponerlos a interactuar. Las reglas que dictan como se comportan e interactuan los elementos son un autómata celular. Por ejemplo, las reglas del arena son algo así:

1. Si yo soy una celda de tipo arena y la celda que tengo abajo es de tipo aire entonces intercambio mi tipo con la de abajo (la celda de abajo se hace arena y yo me hago aire). Esta regla permite simular la gravedad (aunque sin aceleración). Sin embargo, esta regla solita no es suficiente ya que obtenemos columnas rígidas de arena que no se caen. Para que obtener un comportamiento que eumula a una pila de arena debemos de agregar las siguientes dos reglas.
2. Si la celda de abajo a la derecha es aire entonces intercambio mi tipo con ella (la celda de abajo a la derecha se hace arena y yo aire).
3. Si la celda de abajo a la izquierda es aire entonces intercambio mi tipo con ella (la celda de abajo a la izquierda se hace arena y yo aire).

Las últimas dos reglas que son iguales pueden ocurrir en cualquier orden o hacer que se intercambien de manera aleatoria.

Con estas tres reglas sencillas podemos obtener una simulación básica del elemento arena. En [sandspiel studio](https://studio.sandspiel.club/) uno puede ver las reglas detrás de cada elemento en un editor muy amigable tipo "scratch" (asegurate de abrir el editor: "Open Editor"). En el editor puedes crear tus propias reglas.

El objetivo de esta práctica es que crees un autómata que se comporte como la "arena" (si quieres implementar otros elementos adelante, es un reto interesante).

## Entrega

En tu repositorio crea una carpeta que se llame `actividad_03`. Esta carpeta debe incluir:

1. el archivo `otro_automata.nlogo` con la implementación del autómata celular que elegiste en la parte 1, y
2. el archivo `falling-sand.nlogo` con la implementación de tu "falling sand simulator" de la parte 2 de la actividad.

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

