import tiposDePersonas.*

class Integrante{
	var property duermeConLosPescados // bool
	var estado = "vivo"
	var armas
	var lealtad
	var clase // don suborfinado , soldado // esta clase tambien contienelas armas
	var subordinados 
	var familia
	
	}
	method estaVivo(){
		return (estado == "vivo")
	}
	
	 method cantidadDeArmas(){
 		return armas.size()
 	}
 	
 	method agregarArma(arma){
 		armas.add(arma)
 	}
 	
 	method esElegante(){
 		return clase.esElegante(self)
 	}
 	method unSub(){
 		return subordinados.head()// alguna funcion que elija al azar} 
 	
 	method atacar(unaFamilia){
 		const miembroMasPeligroso = unaFamilia.peligroso()
 		self.hacerTrabajo(miembroMasPeligroso)
 	}

	method hacerTrabajo(persona) {
	  clase.hacerTrabajo(persona)
	} 	

	method tieneArmaSutil(){
 		return armas.contains(cuerdaDePiano)||armas.contains(revolverDe1)  // no cree las armas 
 	}
 	
 	method unArma(){
 		return armas.head()//  alguna funcion que elija al azar
 	}
 	
 	method primerArma(){
 		return armas.head()
 
 	}
 	method morir(){
 		estado = "muerto"
 	}
 	
 	method herir(){
 		estado = "herido"
 	}
 	method esElDon(){
 		return clase == don
 	}
 	
 	method aumentaLealtad(valor){
 		lealtad = (lealtad + valor).min(100)
 	}
 	
 	method tranfromarseEnSubjefe(){
 		if(self.cumple()){
 			clase == subjefe
 		}
 	}
 	
 	method cumple(){
 		return clase== soldado && self.cantidadDeArmas()> 5
 	}
 	
 	method convertirseEnDon(){
 		clase = don
 	}
 	
 	
 	
 	
 }



