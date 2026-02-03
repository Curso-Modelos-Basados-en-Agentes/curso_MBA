+++
title = 'Práctica 9'
date = 2024-10-24T10:23:20-06:00
weight = 101
+++

# Práctica 9: Algoritmos genéticos

{{<hint info>}}
**Contenido:** 11 videos  
**Duración estimada:** 2 horas 6 minutos 
{{</hint>}}

## Introducción

En esta práctica vamos a evolucionar a una población de tortugas usando un algoritmo genético y redes neuronales. Primero se explican brevemente los fundamentos de la evolución biológica, los algoritmos genéticos y las redes neuronales. Y luego se implementa el modelo explorando 3 condiciones distintas.

{{<hint info>}}
Esta práctica esta basada en modelos como los siguientes:
- [Video: I programmed some creatures. They Evolved.](https://www.youtube.com/watch?v=N3tRFayqVtk)
- [Video: Evolving AIs - Predator vs Prey, who will win?](https://www.youtube.com/watch?v=qwrp3lB-jkQ)
- [Video: AI Learns to Solve Obstacle Course (Neuroevolution)](https://www.youtube.com/watch?v=9Zk_hY_CjiE)
- [Página: Smart Rockets](https://shivank1006.github.io/Smart-Rockets/)
{{</hint>}}

## Teoría de la evolución

{{<youtube id="HhgWOet6Ark">}}

## Explicación de los algoritmos genéticos

{{<youtube id="cycyWEIDp-0">}}

## Redes neuronales artificiales

{{<youtube id="a3818LdTILY">}}

## Explicación del modelo

{{<youtube id="dEbGWL6wBa8">}}

## Procedimiento `setup`

{{<youtube id="VMKVsqhyFCk">}}

## Funciones de entrada y salida

{{<youtube id="iLAcRZsO5wo">}}

## Movimiento y construcción de redes neuronales 

{{<youtube id="Pah5J-pcq00">}}

Para ver cómo es la red neurnal de una tortuga puedes usar el siguiente comando, que retorna una lista como la del genotipo pero en lugar de solo poner los índices de las listas de funciones de entradas y salidas pone los nombres de las funciones.

```
to-report obtener-fenotipo
  let fenotipo []
  foreach genotipo [
    gen ->
    let entrada (item (item 0 gen) entradas-red)
    let salida (item (item 1 gen) salidas-red)
    let peso (item 2 gen)
    set fenotipo lput (list entrada salida peso) fenotipo
  ]
  report fenotipo
end
```

Con esta función, luego puedes pedirle a una tortuga que muestre cómo es su red neurnal en el Command Center:

```
ask one-of tortugas [ show obtener-fenotipo ]
```

Un ejemplo de salida sería:

```
["DistBordeDer" "GirarIzq" -0.8420470580627342] ["Aleatorio" "OrientarseAlimento" 3.537848247891339] ["DistBordeArr" "GirarDer" 1.5810106483579087]]
```

Que nos diría que en la red las entradas `DistBordeDer` y `DisBordeArr` están conectadas a la salida `GirarIzq` y `GirarDer` respectivamente (y el tercer valor de cada sublista es el peso de ese enlace).

## Dinámica generacional y reproducción

{{<youtube id="oB7KjuuYzwI">}}

## Mutaciones

{{<youtube id="S5s6itdedpQ">}}

## Extensión: Cambiar posición inicial

{{<youtube id="ZeQt2F_HsDo">}}

## Extensión: Agregar un depredador

{{<youtube id="zMrFoyDMoL8">}}

## Crea una animación de tu simulación

Para crear un gif y poder ver con más detalle el movimiento de tu simulación. Lo que necesitamos es que en cada iteración del modelo se guarde una imagen con un nombre distinto. Por ejemplo, para la iteración 0 queremos una imagen del mundo con el nombre `img-0000.png`, para la iteración 1 queremos una imagen con el nombre `img-0001.png`, para la iteración 2 una imagen con el nombre `img-0002.png`, etc. Para ello vamos a usar los siguientes comandos:

- [`export-view`](https://ccl.northwestern.edu/netlogo/docs/dictionary.html#export-cmds): que recibe un string de un nombre de archivo y exporta el mundo en un archivo png.
- [`word`](https://ccl.northwestern.edu/netlogo/docs/dictionary.html#word): que recibe múltipes valores que concatena en un solo string.
- [`ticks`](https://ccl.northwestern.edu/netlogo/docs/dictionary.html#ticks): que reporta el número de ticks que llevamos.

Adicionalmente para generar los nombres de archivo usaremos el comando `agregar-ceros`. Este comando recibe un número en string y el número de ceros que se quiera agregar a la izquierda y retorna un string de la longitud deseada.

```
to-report agregar-ceros [ cadena numero-ceros ]
  if length cadena >= numero-ceros [
    report cadena
  ]
  report agregar-ceros ( insert-item 0 cadena "0" ) numero-ceros
end
```

Juntando todos esos elementos podemos construir el siguiente comando:

```
export-view ( word ("img-") (agregar-ceros (word ticks "") 4) (".png"))
 
```

Que, cuando `ticks` es igual a 0, exporta una imagen con el nombre `img-0000.png` en la carpeta donde esté guardado tu archivo del modelo (`.nlogo`). 

Para hacer una captura de la simulación en cada iteracción agrega tu comando antes de cada tick. Por ejemplo en este modelo coloca el comando dentro del procedimiento go:

```
to go
  clear-drawing
  if count depredadores != num-depredador [ crear-depredador ]
  crear-alimento
  repeat duracion-generacion [
    ifelse trazo? [ ask tortugas [ pendown ]] [ask turtles [penup]]
    ask tortugas [ moverse ]
    ask tortugas [ comer ]
    ask depredadores [ moverse-dep ]
    ask depredadores [ comer-dep ]

    ;;; AQUÍ AGREGAMOS NUESTRO COMANDO PARA EXPORTAR LA IMAGEN
    export-view ( word ("img/depredador/img-") (agregar-ceros (word ticks "") 4) (".png"))
    tick
  ]
  ask tortugas [ morirse ]
  ask tortugas [ reproducirse ]
  ask tortugas with [ energia > 0 ] [die ]

  set generacion generacion + 1

end
```

Listo con esto ya tenemos nuestras imágenes en nuestra computadora. Ahora puedes construir tu gif usando alguna aplicación web como [EZGIF.COM](https://ezgif.com/maker). Si tienes [Imagemagick](https://imagemagick.org/script/convert.php) puedes ejecutar el siguiente comando en tu consola para hacer el gif:

```
convert -delay 5 -loop 0 *.png mi-animacion.gif
```
