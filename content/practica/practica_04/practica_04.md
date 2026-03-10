+++
title = 'Práctica 4'
date = 2024-09-20T13:54:16-06:00
weight = 62
+++

# Práctica 4: Teoría evolutiva de juegos 

{{<hint info>}}
**Contenido:** 10 videos  
**Duración estimada:** 1 hora 40 minutos
{{</hint>}}

## Introducción 

La teoría de juegos es una rama de las matemáticas que estudia las "interacciones estrategias". En esta práctica vamos estudiar qué pasa cuando ponemos a una población a interactuar y evolucionar de acuerdo a las reglas de algunos modelos de la teoría de juegos. 

Primero repasamos el modelo más famoso de la teoría de juegos: "dilema del prisionero", luego introducimos qué es la teoría evolutiva de juegos. Posteriormente consturimos dos modelos: (1) un modelo sin estructura espacial donde todos los jugadores interactuan con todos los otros jugadores y (2) un modelo con estructura espacial donde los jugadores solo interacutan con su localidad. Este modelo tiene propiedades muy interesantes.

Los modelos que se consturen en esta práctica se presentan en las partes II y III del libro abierto y libre: [«Agent-Based Evolutionary Game Dynamics»](https://wisc.pb.unizin.org/agent-based-evolutionary-game-dynamics/).

## Dilema del prisionero

{{<youtube id="Hp7EQ8bMWOw">}}

{{<hint info>}} **Aclaración**

En la terminología clásica del "dilema del prisionero" a la estratgia _quedarse callado_ se le conoce como **cooperar** (ya que representa la situación donde un jugador busca cooperar con el otro para obtener una mejor ganancia) y a la estrategia _confesar_ se le conoce como **desertar** (ya que representa el caso donde un jugador confiesa y traiciona declarando en su contra).

{{</hint>}}

## Teoría evolutiva de juegos

{{<youtube id="oP918vu6ANk">}}

## Parte 1: Modelo de población bien mezcladas

### Explicación del modelo

{{<youtube id="tzqW24EPyTY">}}

### Procedimiento setup

{{<youtube id="TPOmZOZa7Pg">}}

{{<hint info>}}**Para saber más...** <br>
Para crear la lista de colores en el procedimiento `init_pagos` en el video se utiliza la función [`map`](https://docs.netlogo.org/dictionary#map) junto con el operador de procedimientos anónimos que es como una flechita a la derecha [`->`](https://docs.netlogo.org/dictionary#arrow). Los procedimientos o funciones anónimas son un concepto muy útil en la programación, [en python es equivalente a las _funciones lambda_](https://www.geeksforgeeks.org/python/python-lambda-anonymous-functions-filter-map-reduce/).

{{</hint>}}

### Procedimiento go

{{<youtube id="vD4qkyv6dyA">}}

### Exploración del modelo

{{<youtube id="29e6-iqwz1o">}}

{{<hint info>}}**Explora el modelo**  
Un juego clásico en la teoría evolutivas de juegos es el [juego de la gallina o el juego del halcón y la paloma](https://en.wikipedia.org/wiki/Chicken_(game)). Introduce una matríz de pagos que cumpla las condiciones de este juego y explora qué pasa. ¿Cuál es la estrategia evolutivamente estable para este juego? ¿La paloma (comportarse como "gallina") o el halcón ("hacerse el valiente")?
{{</hint>}}

## Parte 2: Modelo con estructura espacial

### Explicación del modelo

{{<youtube id="y7gm6yHXt5c">}}

### Procedimiento setup

{{<youtube id="jeROWXwYueA">}}

### Procedimiento go

{{<youtube id="EWHKcY7MeAw">}}

### Exploración del modelo

{{<youtube id="JG_d-icd4Ks">}}

{{<hint info>}} **Para saber más...** <br>
Aquí puedes consultar [el artículo que se menciona en el video](https://www.nature.com/articles/359826a0.pdf).
{{</hint>}}

{{<hint warning>}} **Cuestionario**  
Esta práctica tiene asociado un cuestionario está disponible en el aula virtual del curso.
{{</hint>}}
