object don {
  method esElegante(elMismo){
 		return true
 	}
  method hacerTrabajo(persona, elMismo){
   var unSub = elMismo.unSub()
   unSub.hacerTrabajo(persona)	
   unSub.hacerTrabajo(persona)		
 }
	
}

object subjefe{
	
	method esElegante(elMismo){
		const unSub = elMismo.unSub()
 		return unSub.tieneArmaSutil()
 	}
 	 	
 	method hacerTrabajo(persona, elMismo){
 		const unArma = elMismo.unArma()
 		unArma.serUtlizada(persona) 
 		
 	}
}


object soldado{
	
 	method esElegante(elMismo){
 		return elMismo.tieneArmaSutil()
 	}
 	
 	method hacerTrabajo(persona, elMismo){
 		const primerArma =  elMismo.primerArma()
 		primerArma.serUtlizada(persona)
 	}
 	
 	
 	
 	
}
