object don {
 
 method esElegante(elMismo){
 		return true
 	}
	
}

class Subjefe{
	
	var subordinados 
	 	
 	method esElegante(elMismo){
 		return subordinados.tieneArmaSutil()
 	}
 	method atacar(unaFamilia){
 		var miembroMasPeligroso = unaFamilia.peligroso()
 		self.matar(miembroMasPeligroso)
 	}
 	
 	method matar(miembroMasPeligroso){
 		
 	}
}

class Soldado{
		 
 	method esElegante(elMismo){
 		return elMismo.tieneArmaSutil()
 	}
 	
 	
}
