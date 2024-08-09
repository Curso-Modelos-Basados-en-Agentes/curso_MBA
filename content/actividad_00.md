+++
title = 'Actividad 0'
date = 2024-08-09T11:58:47-06:00
+++

# Actividad 0

{{<hint info>}}
**Fecha de entrega:** 16/08/2024  
**Forma de entrega:** repositorio de github
{{</hint>}}

Esta actividad está asociada a la Práctica 0.

## Parte 1: Escribe tu nombre

En la primera parte de la actividad debes hacer un modelo de NetLogo con un botón que escriba tu nombre en el mundo.

1.  Abre un proyecto nuevo de NetLogo.
2.  En la pestaña de interfaz crea un botón "setup"
3.  En la pestaña de código agrega el siguiente procedimiento para tu botón setup (este código crea una tortuga creca de la esquina superior izquierda lista para dibujar cuando se mueva):
```lisp
to setup
  clear-all
  create-turtles 1 [
    setxy -10 10    ;; <-- aquí puedes ajustar la posición inicial de la tortuga 
    set heading 180 ;; <-- esto orienta a la tortuga para que mire hacia abajo
    pen-down
  ]
end
```
4.  Introduciendo comandos en el Centro de comando ("Command center" en la pestaña de interfaz) haz que la tortuga se mueva de tal forma que escribas tu nombre. Usa los siguientes comandos: 
    -   `forward NUM` o `fd NUM` (avanzar NUM pasos)
    -   `back NUM` o `bk NUM` (retroceder NUM pasos)
    -   `right NUM` o `rt NUM` (girar hacia la derecha NUM grados)
    -   `left NUM` o `lt NUM` (girar hacia la izquierda NUM grados)
    -   `pen-down` o `pendown` (bajar la pluma para trazar cuando la tortuga se mueve)
    -   `pen-up` o `penup` (levantar la pluma para dejar de trazar cuando la tortuga se mueve)
    -   cuando quieras reiniciar usa el botón "setup" o llama directamente al procedimiento en el centro de comando escribiendo `setup`.
    
    Por ejemplo el siguiente comando escribe "LU":
    
	```lisp
    ask turtles [ fd 10 lt 90 fd 5 penup fd 2 lt 90 fd 10 rt 180 pendown fd 10 lt 90 fd 5 lt 90 fd 10 ]
    ```
	
	{{<hint info>}}**Tips**  
    1. Construye el comando poco a poco, debes pensar en las intrucciones como si tú fueras la tortuga.  
	2. Recuerda que cuando estás en el centro de comandos puedes acceder al comando previo usando la flecha hacia arriba de tu teclado, así ya no tienes que escribir tu comando desde cero. Además si no quieres andar picando el botón "setup" a cada rato puedes ponder el setup antes de tu comando: `setup ask turtles [ INSTRUCCIONES ]`.
	{{</hint>}}

5. Cuando ya tengas tu comando listo crea un botón en la interfaz que se llame: `escribir_nombre` y en la pestaña de código agrega un procedimiento con el comando que construiste:
```lisp
to escribir_nombre
  AQUI VAN TUS COMANDOS
end
``` 
A NetLogo no le importan los saltos de línea, así que en la pestaña de código puedes poner cada comando en una línea individual para que sea más legible. Por ejemplo el comando que escribe "LU" que puse arriba es equivalente al siguiente que es mucho legible en la pestaña de código:
```lisp
ask turtles [
  fd 10
  lt 90
  fd 5
  penup
  fd 2
  lt 90
  fd 10
  rt 180
  pendown
  fd 10
  lt 90
  fd 5
  lt 90
  fd 10
]
```
6.  Guarda tu archivo como `nombre.nlogo` y agregálo a la carpeta `actividad_00`.

## Parte 2: Dibuja algo cool

En la segunda parte de la actividad debes crear un modelo de NetLogo que dibuje algo combinando los comandos que se ven en la práctica.

1. Abre un proyecto nuevo de NetLogo.
2. Crea un botón "setup" que inicialice tu modelo.
3. En la pestaña de cógido crea el procedimiento setup. Aquí tu puedes crear las condiciones iniciales que tu quieras. Por ejemplo para crear varias tortugas listas para dibujar en posiciones aleatorias podrías usar el siguiente procedimiento:
```lisp
to setup
  clear-all
  create-turtles 50 [
    setxy random-xcor random-ycor
    pendown
  ]
end
```
4. Crea un botón en la interfaz que se llame "dibujo".
5. Crea el procedimiento `dibujo` en la pestaña de código y pon tu código que genere un dibujo. Aquí hay [unos ejemplos del tipo de dibujos que se pueden hacer para que te pongas creativo](https://www.google.com/search?q=turtle+graphics+drawings+coding&tbm=isch&chips=q:turtle+graphics+drawings+coding,online_chips:spiral:kyM66fSrh-A%3D&client=firefox-b-e&hl=en&sa=X&ved=2ahUKEwjWr7Tjs-iHAxV33ckDHQylPWQQ4lYoAHoECAEQKQ&biw=1024&bih=683). Puedes buscar "turtles graphics programming" para buscar más ejemplos.
{{<hint info>}}**Tip**  
Para hacer patrones repetivios usa el comando `repeat NUM [ COMANDO ]`. Puedes meter un comando `repeat` dentro de otro para tener patrones interesantes.
{{</hint>}}
6. Guarda tu archivo como `dibujo.nlogo` y agregálo a la carpeta `actividad_00`.

## Entrega

Tu carpeta `actividad_00` de esta actividad en el repositorio de github debe incluir:
1.  el archivo `nombre.nlogo` con tu ejercicio de la parte 1, y
2.  el archivo `dibujo.nlogo` con tu ejercicio de la parte 2

En el aula virtual solo debes poner el url de tu repositorio de github.
