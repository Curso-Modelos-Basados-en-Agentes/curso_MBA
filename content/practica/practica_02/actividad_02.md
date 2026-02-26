+++
title = 'Actividad 2'
date = 2024-08-24T12:00:34-06:00
weight = 33
+++

# Actividad 2

{{<hint info>}}
**Fecha de entrega:** 02/03/2024  
**Forma de entrega:** repositorio de github
{{</hint>}}

## Entropía de Shannon

En la sesión de [Teoría 1: Introducción a los sistemas complejos]({{<relref "../../teoria/teoria_01#cómo-medir-la-complejidad">}}) estudiamos la entropía de Shannon. Recuerda que esta se puede entender como una medida de la "incertidumbre" de un sistema. Un sistema con mucha "sorpesa" (e.g., una secuencia aleatoria de ceros y unos) tiene una alta entropía de Shannon, mientras que un sistema con baja "sorpresa" (e.g., una secuencia de puros ceros) tiene una baja entropía de Shannon.

La expresión de la entropía de Shannon es la siguiente:

{{< katex />}}

$$ H = - \sum_i  p_i \log_2 p_i  $$

donde \\(p_i\\) es la probabilidad del estado \\(i\\). Esto lo podemos aplicar a nuestro sistema de luciérnagas, en este contexto tenemos dos posibles estados: (1) prendido y (2) apagado. Así \\(p_1\\) puede representar la fracción de luciérnagas prendidas y \\(p_2\\) la fracción de luciérnagas apagadas.  Conforme las luciérnagas se sincronizan, ¿cómo esperamos que cambie la entropía de Shannon?

1. En tu simulador de sincronización de luciérnagas que construiste en la Práctica 2 crea una gráfica que muestre cómo cambia la entropía de Shannon.
2. Explora que pasa y escribe un pequeño párrafo con tus observaciones (agrégalo a un archivo que se llame `observaciones.md`).

{{<hint info>}} **Tips**
1. Para calcular el logaritmo puedes usar la función [`log`](https://docs.netlogo.org/dictionary#log)
2. Nota que a NetLogo no le gustan los signos negativos al inicio de una expresión. Para definir números negativos debes usar paréntesis. Por ejemplo:
   ```lisp
   set dos_negativo (-2)
   ```
3. Puedes hacer los cálculos para calcular la entropía de Shannon en la pestaña de código usando un _reporter_ o _reportero_. Los reporteros son simplemente funciones (o procedimientos) que retornan un valor (este valor se lo puedes pasar al comando `plot` en la gráfica). Estos se definen con la palabra [`to-report`](https://docs.netlogo.org/dictionary#to-report) y deben incluir hasta el final una expresión [`report`](https://docs.netlogo.org/dictionary#report) con el valor a retornar. Por ejemplo, un reportero que regresa la fracción de parches de color azules se podría ver así:
   ```lisp
   to-report fraccion_azules
      let num_patches_azules count patches with [ pcolor = blue ]
      let num_patches count patches
      report num_patches_azules / num_patches
   end
   ```
   También nota que para definir variables locales por primera vez se debe usar la palabra [`let`](https://docs.netlogo.org/dictionary#let) (sin embargo para cambiar su valor después se debe usar la palabra `set`).
4. En caso de que \\(p_i = 0 \\), para no tener problemas con el logarítmo haz que el término \\(i\\) de la entropía de Shannon sea cero.
{{</hint>}}

## Entrega

En tu repositorio crea una carpeta que se llame `actividad_02`. Ensta carpeta debe incluir:

1. el archivo `sincronizacion_luciernagas.nlogo` con tu código de la práctica 2.
2. el archivo `observaciones.md` con tus observaciones de explorar el modelo.

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


