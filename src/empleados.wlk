object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	method sueldo() { return sueldo }
	method totalDinero(){
		return dinero
	}
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
		if (deuda > 0){
			sueldo -= deuda
			dinero += sueldo
			deuda -= sueldo
				
			}
			
		
		}
	method gastar(cuanto){
		sueldo =- cuanto
		deuda += cuanto
		}
	method totalDeuda(){
		return deuda
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
