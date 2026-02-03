+++
title = 'Práctica 0'
date = 2024-08-08T13:17:17-06:00
weight = 11
+++

# Práctica 0: Introducción a NetLogo, git y github

{{<hint info>}}
**Contenido:** 9 videos  
**Duración estimada:** 1 hora 20 minutos
{{</hint>}}

## Introducción

En este curso vamos a estar usando [NetLogo](https://ccl.northwestern.edu/netlogo/). NetLogo es una plataforma para hacer simulaciones computacionales que utiliza un lenguaje de programación muy sencillo que permite hacer modelos muy complejos de forma rápida. Así mismo, cuando uno crea un modelo con NetLogo también crea directamente una visualización. Esto permitie explorar de forma interactiva los distintos fenómenos de interés. 

![Logo de NetLogo](/curso_MBA/img/logo-netlogo.jpg)

En esta primera práctica vamos a: 

1. instalar NetLogo, 
2. ver qué es y cómo se usa, 
3. aprender los fundamentos del lenguaje, 
4. aprender sobre la historia de NetLogo,
5. aprender sobre cómo usaremos git y de github para entregar las actividades de programación.

## Instalación de NetLogo

Puedes descargar NetLogo directo desde [la página de descargas en el sitio oficial](https://ccl.northwestern.edu/netlogo/6.4.0/). Existen versiones para todos los sistemas operativos (Mac, Windows y Linux). El archivo que descargues debes poder abrirlo directamente y el progama se instalará en tu computadora (si estás en linux entonces debes extraer el archivo: `tar -xf ARCHIVO.tgz`, y luego correr el archivo ejecutable que se llama `netlogo`).

{{<hint info>}} **Versión Web de NetLogo**  
NetLogo también cuenta con una [versión web](https://www.netlogoweb.org/launch). Esta versión puede ser muy conveniente ya que pueden ejecutar modelos incluso desde un teléfono móvil. Sin embargo, esta versión es más lenta y no incluye todas las opciones que la versión de escritorio. En el curso vamos a revisar solamente cómo usar la version de escritorio. Aunque en ocasiones usaremos la versión web pero solo para explorar modelos.
{{</hint>}}

## ¿Qué es y cómo se usa NetLogo?

En este primer video mostramos qué es NetLogo y cómo se usa explorando un modelo de ejemplo.

{{<youtube id="KtYj0VVtqiE">}}

{{<hint info>}}**Material complementario**

Si les interesa saber más sobre los comportamientos colectivos de los animales pueden consultar los siguientes videos:
- [Video: Banadas de ESTORNINOS: así se explica uno de los más bellos espectáculos de la naturaleza](https://www.youtube.com/watch?v=ngyhoRYORm0)
- [Video: How do schools of fish siwm in harmony?](https://www.youtube.com/watch?v=dkP8NUwB2io)
{{</hint>}}

## Primeros pasos con NetLogo

En esta sección vamos a ver tres aspectos fundamentales de los modelos de NetLogo: las **tortugas**, los **parches** y los **procedimientos**.

### Tortugas (parte 1)

{{<youtube id="i01V-jX9-OA">}}

### Tortugas (parte 2)

{{<youtube id="f1rTBM4jNSM">}}

{{<hint info>}}**Info**  
Algunos comandos vistos en el video tienen sinónimos para escribirlos de forma más rápida:
- `forward` se puede escribir como `fd`
- `back` se puede escribir como `bk`
- `left` se puede escribir como `lt`
- `right` se puede escribir como `rt`
{{</hint>}}

### Parches

{{<youtube id="jOQ3pmTYwVI">}}

### Procedimientos `setup` y `go`

{{<youtube id="cZjm8vsyPks">}}

## Historia de NetLogo

{{<youtube id="YJnD2GRKKJQ">}}

## Git y github

En el curso habrá actividades de programación y proponemos que las organicemos en un repositorio de git y lo alojemos en github. Para ello en el siguiente video se da una introducción a para qué sirven esos programas.

{{<youtube id="mPmGqwPolv0">}}

### Instalación de git

Git está disponible para todos los sistemas operativos. Puedes descargarlo desde la [página oficial de Git](https://git-scm.com/). Te dejo un video mostrando cómo instalarlo en los distintos sistemas operativos:

{{<tabs "instalacion-git">}}
{{<tab "Windows">}}
[Video de cómo instalar git en Windows](https://www.youtube.com/watch?v=WcYTcttEf50)
{{</tab>}}
{{<tab "MacOS">}}
[Video de cómo instalar git en MacOS](https://www.youtube.com/watch?v=CGhF_DzLqbE)
{{</tab>}}
{{<tab "Linux">}}
Si usas linux entonces ya viene instalado por defecto y no tienes que hacer nada.
{{</tab>}}
{{</tabs>}}

Para probar tu instalación primero abre una terminal. En linux y mac busca y abre la aplicación que se llama "Terminal" y en Windows usa el programa "Powershell" o el programa "Git bash" que se debió instalar junto con git. **No uses la terminal de windows "cmd" ya que los comandos no serán los mismos que usaremos en los videos**.

Ya que abriste la terminal escribe el siguiente comando:

```bash
git --version
```

y si te aparece algo como lo siguiente entonces se intaló bien:

```bash
git version 2.X.X
```

### Crea una cuenta de github

{{<youtube id="XW4xQHWXYOY">}}

### Crear y subir repositorios a github

En el último video de esta práctica se muestra cómo crear repositorios en github y localmente y el flujo básico de trabajo que estaremos siguiendo en el curso.

{{<youtube id="rvWtdHGw-QA">}}

Los comandos que te va a pedir git que configures la primera vez para que sepa tu nombre y correo que los uses son los siguientes:

```bash
git config --global user.name "[nombre]"
git config --global user.email "[correo]"
```

Aquí el resumen de los comandos de git que se ven en el video:

| Comando | Descripción |
|-|-|
| `git init` | Inicializar un repositorio en la carpeta actual |
| `git status` | Mostrar los cambios y el estado de los archivos |
| `git add .`| Preparar los archvios para el commit |
| `git commit -m "[mensaje descriptivo]"` | Hacer un commit|
| `git push origin main` | Enviar los cambios del repo local al repo de remoto (github) |

{{<hint info>}}**Para saber más**  
[Aquí puedes aprender más sobre la sintaxis del lenguaje de marcado Markdown](https://www.markdownguide.org/basic-syntax/)
{{</hint>}}
