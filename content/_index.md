+++
title = ''
date = 2024-07-28T20:50:49-06:00
draft = true
+++

# Inicio

Bienvenid@ a la página del curso *Proyecto I: Modelado basado en agentes de sistemas sociales ecológicos y socio-ecológicos (MBASSESE)*. 

En esta página encontrarás el contenido teórico y práctico del curso.

<script type="module">
	import * as util from 'https://code.agentscript.org/src/utils.js'
	import Model from 'https://code.agentscript.org/models/AntsModel.js'
	import TwoDraw from 'https://code.agentscript.org/src/TwoDraw.js'
	import Color from 'https://code.agentscript.org/src/Color.js'
	import Animator from 'https://code.agentscript.org/src/Animator.js'
	import Mouse from 'https://code.agentscript.org/src/Mouse.js'
 
	class ModeloPrueba extends Model {

	    densidad = 0.5
		
	    constructor(worldOptions = {
		minX: 0,
		minY: 0,
		maxX: 30,
		maxY: 30
	    }
	    ) {
		super(worldOptions)
	    }
	    
	    setup() {
		this.patches.setDefault("estado_t", 0)
		this.patches.setDefault("estado_t1", 0)
		this.patches.ask( p => {
		    if (util.randomFloat(1.0) < this.densidad){
			p.estado_t = 1
		    }
		}
				)
	    }

	    step() {
		this.patches.ask(p => {
		    const num_vecinos = p.neighbors.with(n => n.estado_t == 1).length
		    if (p.estado_t == 1 && (num_vecinos <= 1 || num_vecinos >= 4)) {
			p.estado_t1 = 0
		    }
		    else if (p.estado_t == 0 && num_vecinos == 3) {
			p.estado_t1 = 1
		    }
		    else {
			p.estado_t1 = p.estado_t
		    }
		}
				)
		this.patches.ask(p => {
		    p.estado_t = p.estado_t1
		}
				)
	    }
	}

 
	const model = new ModeloPrueba()
	
	await model.startup()
        model.setup()

	const colorEstado = {
	      0: '#F8F9FA',
	      1: 'black'
	  }
	  
	const view = new TwoDraw(model, {
	    div: 'modelDiv',
	    patchSize: 10,
	    drawOptions: {
		patchesColor: p => colorEstado[p.estado_t],
	    },
	})

	const anim = new Animator(
	    () => {
		model.step()
		view.draw()
	    },
	    -1,
	    50
	)

	util.toWindow({ util, model, view, anim })

	let detenido = false
	let parche
	const mouse = new Mouse(model, view, mouse => {
	    const { x, y, action } = mouse
	    switch (action){
	    case 'mousedown':
		parche = model.patches.minOneOf( p => p.distanceXY(x, y))
		parche.estado_t = 1
		break
	    case 'mousedrag':
		anim.stop()
		parche = model.patches.minOneOf( p => p.distanceXY(x, y))
		parche.estado_t = 1
		break
	    case 'mouseup':
		if (! detenido) anim.start()
		break
	    }
	    view.draw()
	}).start()
	
	
	document.getElementById("stopButton").addEventListener(
	    "click",
	    () => {
		detenido = true;
		anim.stop() }
	)
	document.getElementById("startButton").addEventListener(
	    "click",
	    () => {
		detenido = false;
		anim.start() }
	)
	document.getElementById("initButton").addEventListener(
	    "click",
	    () => {
		detenido = false;
		model.reset()
		model.setup()
		view.draw()
	    }
	)
	
</script>
<div id="modelDiv"></div>
<a class="book-btn" id="stopButton">Detener</a>
<a class="book-btn" id="startButton">Ejecutar</a>
<a class="book-btn" id="initButton">Inicializar</a>

# Contacto

- Luis Guillermo García Jácome
  - correo: [lggj37@ciencias.unam.mx](mailto:lggj37@ciencias.unam.mx)


<!-- ![el logo](./logo.png) -->
