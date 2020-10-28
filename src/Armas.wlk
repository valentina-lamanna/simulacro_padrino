class Revolver{
	var cantidadDeBalas
	method serUtilizada(persona){
		if (cantidadDeBalas > 0){
			persona.morir()
			cantidadDeBalas -= 1}	
	}
}

class Escopeta{
	method serUtilizada(persona){
		if(persona.herida()){
			persona.morir()
		}else{
			persona.herir()
		}
		
		
	}
}

class CuerdaDePiano{
	var calidad // buena , mala , muy buena
	method serUtilizada(persona){
		if(calidad == "buena"){
			persona.morir()
		}
		
	}
}
