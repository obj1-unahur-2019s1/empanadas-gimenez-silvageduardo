object galvan {
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
		if (deuda > 0){
			sueldo -= deuda
			dinero += sueldo
			deuda -= nuevoValor
			}
		if (deuda <0){
			deuda = 0
		}	
			}
	method gastar(cuanto){
		sueldo =- cuanto
		deuda += cuanto
		if ( dinero > 0 && deuda > sueldo){
		 deuda -= dinero
		 dinero -= dinero
		}
		
}
	method totalDeuda(){
		 return deuda
		 }

	method totalDinero(){
		if (dinero > 0){
			return dinero
		}else{
			dinero = 0
			return dinero
		}
	}
}
object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldo = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
 	method cobrarSueldo(dinero){
 		sueldo += dinero
 	}
 	method totalCobrado(){
 		return sueldo
 	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
//		dinero -= empleado.sueldo()
//    	empleado.cobrarSueldo()
//		empleado.cobrarSueldo() no existe este metodo, se tiene que crear en ambos empleados 
		
	}
}
