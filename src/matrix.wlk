import nave.*

object neo{
	
	var energia= 100
	
	method esElElegido()= true
	method saltar(){energia*= 0.5}
	method energia()= energia
	method vitalidad()= energia / 10
	
}

object morfeo{
	
	var cansado= false
	var property vitalidad= 8
	method estaCansado()= cansado
	method esElElegido()= false
	method saltar(){
		cansado= !(cansado)
		vitalidad-= 0.max(vitalidad-1)
	}
	method vitalidad()= vitalidad
	
}

object trinity{
	
	method esElElegido()= false
	method vitalidad()= 0
	method saltar(){}
}


