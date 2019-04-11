object galvan {
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	var cuantoGuardar=0
	var cuantoCancelar=0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor	
			}
	method cobrarSueldo(){
		if(deuda>0){
			 cuantoCancelar = self.sueldo().min(deuda)// x.min(x) compara entre los 2 el minimo 
			 cuantoGuardar = self.sueldo() - cuantoCancelar  // 3 + 4 => 3.+(4) // 9.abs() -9-abs()( el n° es un ojb el "+" es el msj y el "(4)" el argumento)
			deuda -= cuantoCancelar
			dinero += cuantoGuardar
		} else{
			dinero += self.sueldo()
		}
//		dinero += self.sueldo()
//		if (deuda > 0){
//			dinero -= deuda
//			deuda -= deuda mal/incompleto
//			}
}
	method gastar(cuanto){
		if (dinero > 0 ){
			deuda -= dinero
		}
		dinero -= cuanto
		deuda += cuanto
}
	method totalDeuda(){
		 return deuda
		 }
	method totalDinero(){
		if (dinero > 0){
			return dinero
		}else{
			return 0
		}
	}
}
object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dinero = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo(){
		return cantidadEmpanadasVendidas * montoPorEmpanada 
	}
 	method cobrarSueldo(){
 		 dinero += self.sueldo()
 		 }
 	method totalCobrado(){
 	 return dinero 
 	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
 
		
	}
}
