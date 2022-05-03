import matrix.*

object nave {
	var pasajeros=[neo, trinity, morfeo]	
	method cuantosPasajeros()= pasajeros.size()
	
	method pasajeroDeMayorVitalidad()= pasajeros.max({ p => p.vitalidad() })
	method pasajeroDeMenorVitalidad()= pasajeros.min({ p => p.vitalidad() })
	
	method estaEquilibrada()=  self.pasajeroDeMayorVitalidad().vitalidad() < self.pasajeroDeMenorVitalidad.vitalidad() * 2
	
	method elElegidoEstaEnLaNave()= pasajeros.any({ p => p.esElElegido() })
	
	method naveChoca(){
		pasajeros.forEach({ p => p.saltar()})
		pasajeros.clear()
	}

	method naveAcelera(){
		pasajeros.filter({ p => not p.esElElegido() }).forEach({p=> p.saltar()})
	}
	

	
}
