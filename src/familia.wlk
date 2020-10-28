import Personas.*
import Armas.*


class Familia{
	var integrantes
	
	method duermeConLosPescados(persona){
		return persona.duermeConLosPescados()
	}
	
	method peligroso(){
		return self.vivoYconMasArmas()
		
	}
	method vivoYconMasArmas(){
		return integrantes.filter({integrante => integrante.estaVivo()}).max({integrante => integrante.cantidadDeArmas()})
	}
		
	method armarALaFamilia(){
		const revolverDe6= new Revolver(cantidadDeBalas = 6)
		integrantes.forEach({integrante => integrante.agregarArma(revolverDe6)})
		
	}
	method esElegante(persona){
		return persona.esElegante()
	}
	
	method ataqueSorpresa(unaFamilia){
		integrantes.forEach({integrante => integrante.atacar(unaFamilia)})
		
	}
	
	method luto(){
		integrantes.filter({integrante => integrante.esElDon()}).morir()
		integrantes.forEach({integrante => integrante.aumentaLealtad(10)})
		integrantes.forEach({integrante => integrante.tranfromarseEnSubjefe()})
		const elMasLeal = integrantes.max({integrante => integrante.lealtad()})
		elMasLeal.convertirseEnDon()
	}
	
	
	
}

