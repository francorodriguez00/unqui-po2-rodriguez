!classDefinition: #Tests category: #TP2UML!
TestCase subclass: #Tests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP2UML'!

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:55:51'!
test001_sePuedeSaberInformacionBasicaDeLaEmpresa

| unaEmpresa |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

Assert that: (unaEmpresa nombre) isEqualTo: 'CAT'.! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:36:42'!
test002_sePuedeSaberInformacionBasicaDeUnEmpleado

| unaEmpresa unEmpleado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleado := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: 01/09/1980 sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

Assert that: (unEmpleado nombre) isEqualTo: 'Juan'.! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:44:03'!
test003_sePuedeSaberSiUnEmpeladoTrabajaEnLaEmpresa

| unaEmpresa unEmpleado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleado := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: 01/09/1980 sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

Assert isTrue: (unaEmpresa empleados includes: unEmpleado) ! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:47:02'!
test004_unEmpeladoPermanentePuedeCalcularSuSueldoBruto

| unaEmpresa unEmpleado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleado := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: 01/09/1980 sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

Assert that: (unEmpleado sueldoBruto) isEqualTo: 102050 * peso! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 20:02:42'!
test005_unEmpeladoTemporalPuedeCalcularSuSueldoBruto

| unaEmpresa unEmpleado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleado := unaEmpresa contratarEmpleadoTemporalConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 6 month: 4 year: 1980) sueldoBasico: 100000 * peso fechaFinDesignacion: 23/07/2015 cantidadHorasExtra: 5 * hora.

Assert that: (unEmpleado sueldoBruto) isEqualTo: 100200 * peso! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 20:02:46'!
test006_unEmpeladoTemporalPuedeCalcularSuSueldoNeto

| unaEmpresa unEmpleado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleado := unaEmpresa contratarEmpleadoTemporalConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 6 month: 4 year: 1980) sueldoBasico: 100000 * peso fechaFinDesignacion: 23/07/2015 cantidadHorasExtra: 5 * hora.

Assert that: (unEmpleado sueldoNeto) isEqualTo: 80135 * peso! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:36:36'!
test007_unEmpeladoPermanentelPuedeCalcularSuSueldoNeto

| unaEmpresa unEmpleado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleado := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: 01/09/1980 sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

Assert that: (unEmpleado sueldoNeto) isEqualTo: 76397.5 * peso! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 19:59:44'!
test008_unEmpeladoPuedeCalcularSuEdad

| unaEmpresa unEmpleado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleado := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 1 month: 9 year: 1980) sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

Assert that: (unEmpleado edad) isEqualTo: 45 ! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 19:53:48'!
test009_unaEmpresaPuedeCalcularElTotalQueVaADesembolsarEnConceptoDeSueldosBrutosPorTodosSusEmpleados

| unaEmpresa unEmpleado otroEmpleadoPermanente unEmpleadoPermanente unEmpleadoTemporal |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleadoPermanente := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 4 month: 7 year: 1980) sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

otroEmpleadoPermanente := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Jorge' direccion: 'Pipi 77' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 1 month: 9 year: 1980) sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

unEmpleadoTemporal := unaEmpresa contratarEmpleadoTemporalConNombre: 'Denise' direccion: 'Pipi 79' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 13 month: 2 year: 1980) sueldoBasico: 100000 * peso fechaFinDesignacion: 23/07/2015 cantidadHorasExtra: 5 * hora.

Assert that: (unaEmpresa totalSueldosBrutos) isEqualTo: 304300 * peso! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 19:53:19'!
test010_unaEmpresaPuedeCalcularElTotalQueVaADesembolsarEnConceptoDeSueldosNetosPorTodosSusEmpleados

| unaEmpresa unEmpleado otroEmpleadoPermanente unEmpleadoPermanente unEmpleadoTemporal unEmpleadoContratado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleadoPermanente := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 1 month: 10 year: 1980) sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

unEmpleadoContratado := unaEmpresa contratarEmpleadoContratadoConNombre: 'Juan' direccion: 'Pipi 75' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 1 month: 9 year: 1980) sueldoBasico: 100000 * peso numeroDeContrato: 7 medioDePago: 'Cheque'.

unEmpleadoTemporal := unaEmpresa contratarEmpleadoTemporalConNombre: 'Denise' direccion: 'Pipi 79' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 6 month: 7 year: 1980) sueldoBasico: 100000 * peso fechaFinDesignacion: 23/07/2015 cantidadHorasExtra: 5 * hora.

Assert that: (unaEmpresa totalSueldosNetos) isEqualTo: 256482.5 * peso! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 19:52:52'!
test011_unaEmpresaPuedeCalcularElMontoEnConceptoDeLasRetencionesPorTodosSusEmpleados

| unaEmpresa unEmpleado otroEmpleadoPermanente unEmpleadoPermanente unEmpleadoTemporal |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleadoPermanente := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 1 month: 9 year: 1980) sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

otroEmpleadoPermanente := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Jorge' direccion: 'Pipi 77' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 6 month: 5 year: 1980) sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

unEmpleadoTemporal := unaEmpresa contratarEmpleadoTemporalConNombre: 'Denise' direccion: 'Pipi 79' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 3 month: 9 year: 1980) sueldoBasico: 100000 * peso fechaFinDesignacion: 23/07/2015 cantidadHorasExtra: 5 * hora.

Assert that: (unaEmpresa totalRetenciones) isEqualTo: 71370 * peso! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 19:52:18'!
test012_unaEmpresaPuedeLiquidarSueldosDeTodosSusEmpleadosYCrearUnReciboDeHaberesPorCadaUno

| unaEmpresa unEmpleado otroEmpleadoPermanente unEmpleadoPermanente unEmpleadoTemporal unEmpleadoContratado nombresRecibos recibos |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleadoPermanente := unaEmpresa contratarEmpleadoPermanenteConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 1 month: 9 year: 1980) sueldoBasico: 100000 * peso cantidadHijos: 7 antiguedad: 20 * año.

unEmpleadoContratado := unaEmpresa contratarEmpleadoContratadoConNombre: 'Juan' direccion: 'Pipi 75' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 6 month: 4 year: 1980) sueldoBasico: 100000 * peso numeroDeContrato: 7 medioDePago: 'Cheque'.

unEmpleadoTemporal := unaEmpresa contratarEmpleadoTemporalConNombre: 'Denise' direccion: 'Pipi 79' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 1 month: 12 year: 1980) sueldoBasico: 100000 * peso fechaFinDesignacion: 23/07/2015 cantidadHorasExtra: 5 * hora.

recibos := unaEmpresa liquidarSueldos.

Assert that: (recibos size) isEqualTo: 3.

nombresRecibos := recibos collect: [:empleado | empleado nombre].

Assert isTrue: (nombresRecibos includes: 'Juan').
! !

!Tests methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 19:51:57'!
test013_unEmpeladoContratadoPuedeCalcularSuSueldoNeto

| unaEmpresa unEmpleado |
unaEmpresa := Empresa crearEmpresaConNombre: 'CAT' cuit: '10745738839'.

unEmpleado := unaEmpresa contratarEmpleadoContratadoConNombre: 'Juan' direccion: 'Pipi 76' estadoCivil: 'Soltero' fechaDeNacimiento: (Date newDay: 1 month: 9 year: 1980) sueldoBasico: 100000 * peso numeroDeContrato: 7 medioDePago: 'Cheque'.

Assert that: (unEmpleado sueldoNeto) isEqualTo: 99950 * peso.! !


!classDefinition: #Conceptos category: #TP2UML!
Object subclass: #Conceptos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP2UML'!

!Conceptos methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:46:29'!
inicializarSegun: unEmpleado 
	
	unEmpleado conceptosPara: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Conceptos class' category: #TP2UML!
Conceptos class
	instanceVariableNames: ''!

!Conceptos class methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 22:02:33'!
paraEmpleado: unEmpleado 
	
	^ self new inicializarSegun: unEmpleado ! !


!classDefinition: #Empleado category: #TP2UML!
Object subclass: #Empleado
	instanceVariableNames: 'nombre direccion estadoCivil fechaDeNacimiento sueldoBasico'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP2UML'!

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 16:46:11'!
direccion
	
	^direccion! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 19:59:38'!
edad
  
	| hoy diffYear ajuste |
    hoy := Date today.
    diffYear := hoy yearNumber - fechaDeNacimiento yearNumber.
    ajuste := ((hoy monthIndex < fechaDeNacimiento monthIndex)
              or: [(hoy monthIndex = fechaDeNacimiento monthIndex)
                   and: [hoy dayOfMonth < fechaDeNacimiento dayOfMonth]])
                 ifTrue: [1] ifFalse: [0].
    ^ (diffYear - ajuste) ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 13:01:55'!
fechaDeNacimiento
	
	^ fechaDeNacimiento ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 8/26/2025 23:51:17'!
nombre
	
	^nombre! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 16:18:50'!
porcentajeAportesJubilatorios

	self subclassResponsibility ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 16:19:17'!
porcentajeObraSocial

	self subclassResponsibility ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:10:41'!
retenciones

	self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:10:27'!
sueldoBruto 

	self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:25:58'!
sueldoNeto

	^ self sueldoBruto - self retenciones! !


!classDefinition: #EmpleadoContratado category: #TP2UML!
Empleado subclass: #EmpleadoContratado
	instanceVariableNames: 'numeroDeContrato medioDePago'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP2UML'!

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:27:27'!
conceptosPara: aConceptos 

	self conceptosParaEmpleadoContratado! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:27:01'!
conceptosParaEmpleadoContratado

	| conceptos |
    conceptos := Dictionary new.
    conceptos at: 'Gastos Administrativos Contractuales' put: self retenciones.

	^ conceptos! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:55:00'!
inicializarEmpleadoContratadoCon: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFecha sueldoBasico: unMonto numeroDeContrato: unNumero medioDePago: unMedioDePago 
	
	nombre := unNombre .
	direccion := unaDireccion .
	estadoCivil := unEstadoCivil .
	fechaDeNacimiento := unaFecha .
	sueldoBasico := unMonto .
	numeroDeContrato := unNumero .
	medioDePago := unMedioDePago .! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:20:36'!
retenciones 

	^ 50 * peso! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:19:56'!
sueldoBruto

	^ sueldoBasico! !


!classDefinition: #EmpleadoPermanente category: #TP2UML!
Empleado subclass: #EmpleadoPermanente
	instanceVariableNames: 'cantidadHijos antiguedad'
	classVariableNames: 'PorcentajeObraSocial'
	poolDictionaries: ''
	category: 'TP2UML'!

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:48:18'!
conceptosPara: aConceptos 

	self conceptosParaEmpleadoPermanente
	
	! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 22:10:56'!
conceptosParaEmpleadoPermanente
	
	| conceptos |
    conceptos := Dictionary new.
    conceptos at: 'Asignacion Por Hijo' put: (self montoAsignacionPorHijo * cantidadHijos).
    conceptos at: 'Asignacion Por Conyugue' put: self.
    conceptos at: 'Descuento Obra Social' put: self porcentajeObraSocial * self sueldoBruto.
    conceptos at: 'Descuento Jubilación' put: self porcentajeAportesJubilatorios * self sueldoBruto.
    conceptos at: 'Descuento Por Hijos' put: self montoAPagarPorHijo * cantidadHijos.

	^ conceptos! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:42:33'!
inicializarEmpleadoPermaneneteCon: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFecha sueldoBasico: unMonto cantidadHijos: unaCantidad antiguedad: unaAntiguedad 
	
	nombre := unNombre .
	direccion := unaDireccion .
	estadoCivil := unEstadoCivil .
	fechaDeNacimiento := unaFecha .
	sueldoBasico := unMonto .
	cantidadHijos := unaCantidad .
	antiguedad := unaAntiguedad .! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:33:14'!
montoAPagarPorHijo
	
	^ 20 * peso! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:46:15'!
montoAsignacionPorHijo
	
	^ 150 * peso! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:46:27'!
montoPorAntiguedad
	
	^ 50 * peso! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:32:59'!
porcentajeAportesJubilatorios
	
	^ 0.15! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:32:46'!
porcentajeObraSocial
	
	^ 0.1! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:01:32'!
retenciones
	
	^ (self sueldoBruto * self porcentajeObraSocial ) + (self sueldoBruto * self porcentajeAportesJubilatorios) + 
	   (self montoAPagarPorHijo * cantidadHijos)! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 9/1/2025 00:00:49'!
sueldoBruto
	
	^ sueldoBasico + (self montoAsignacionPorHijo * cantidadHijos) + (self montoPorAntiguedad * antiguedad / año) + 
	(self tienePareja ifTrue: [100 * peso] ifFalse: [0 * peso])! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'fr 9/1/2025 00:02:56'!
tienePareja

	^ estadoCivil = 'En pareja'! !


!classDefinition: #EmpleadoTemporal category: #TP2UML!
Empleado subclass: #EmpleadoTemporal
	instanceVariableNames: 'fechFinDesignacion cantidadHorasExtra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP2UML'!

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 22:15:25'!
conceptosPara: aConceptos 
	
	self conceptosParaEmpleadTemporal! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 22:12:33'!
conceptosParaEmpleadTemporal
	
	| conceptos |
    conceptos := Dictionary new.
    conceptos at: 'Horas Extra' put: (self montoPorHoraExtra * cantidadHorasExtra ).
    conceptos at: 'Descuento +50 años' put: self.
    conceptos at: 'Descuento Obra Social' put: self porcentajeObraSocial * self sueldoBruto.
    conceptos at: 'Descuento Jubilación' put: self porcentajeAportesJubilatorios * self sueldoBruto.
    conceptos at: 'Descuento Por Horas Extra' put: self montoAPagarPorHoraExtra * cantidadHorasExtra.

	^conceptos ! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:53:17'!
inicializarEmpleadoTemporalCon: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFechaDeNacimiento sueldoBasico: unMonto fechaFinDesignacion: unaFechaDeDesignacion cantidadHorasExtra: unaCantDeHoras 
	
	nombre := unNombre .
	direccion := unaDireccion .
	estadoCivil := unEstadoCivil .
	fechaDeNacimiento := unaFechaDeNacimiento .
	sueldoBasico := unMonto .
	fechFinDesignacion := unaFechaDeDesignacion .
	cantidadHorasExtra := unaCantDeHoras .! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:23:18'!
montoAPagarPorHoraExtra
	
	^ 5 * peso! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:55:01'!
montoPorHoraExtra
	
	^ 40 * peso! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:23:05'!
porcentajeAportesJubilatorios
	
	^ 0.1! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:22:41'!
porcentajeObraSocial
	
	^ 0.1! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 12:23:43'!
retenciones
	
	^ (self sueldoBruto * self porcentajeObraSocial) + (self sueldoBruto * self porcentajeAportesJubilatorios) + 
	   (cantidadHorasExtra / hora * self montoAPagarPorHoraExtra)! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 20:01:58'!
sueldoBruto
	
	^ sueldoBasico + (self montoPorHoraExtra * cantidadHorasExtra / hora) + (self superaLos50Años ifTrue:[(25 * peso)] ifFalse: [(0 * peso)])! !

!EmpleadoTemporal methodsFor: 'as yet unclassified' stamp: 'fr 9/5/2025 20:02:17'!
superaLos50Años 

	^ self edad > 50! !


!classDefinition: #Empresa category: #TP2UML!
Object subclass: #Empresa
	instanceVariableNames: 'nombre cuit empleados empleadosPermanentes empleadosTemporales empleadosContratados'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP2UML'!

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 9/1/2025 00:01:47'!
contratarEmpleadoContratadoConNombre: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFecha sueldoBasico: unMonto numeroDeContrato: unNumero medioDePago: unMedioDePago 
	
	| empleado |
	empleado := EmpleadoContratado new inicializarEmpleadoContratadoCon: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFecha sueldoBasico: unMonto numeroDeContrato: unNumero medioDePago: unMedioDePago.
	
	empleados add: empleado.	
	
	empleadosContratados add: empleado.
	
	^ empleado! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 16:18:39'!
contratarEmpleadoPermanenteConNombre: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFecha sueldoBasico: unMonto cantidadHijos: unaCantidad antiguedad: unaAntiguedad 
	
	| empleado |
	empleado := EmpleadoPermanente new inicializarEmpleadoPermaneneteCon: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFecha sueldoBasico: unMonto cantidadHijos: unaCantidad antiguedad: unaAntiguedad .
	
	empleados add: empleado.	
	
	empleadosPermanentes add: empleado.
	
	^ empleado! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 16:19:29'!
contratarEmpleadoTemporalConNombre: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFechaDeNacimiento sueldoBasico: unMonto fechaFinDesignacion: unaFechaDeDesignacion cantidadHorasExtra: unaCantDeHoras 

	| empleado |
	empleado := EmpleadoTemporal new inicializarEmpleadoTemporalCon: unNombre direccion: unaDireccion estadoCivil: unEstadoCivil fechaDeNacimiento: unaFechaDeNacimiento sueldoBasico: unMonto fechaFinDesignacion: unaFechaDeDesignacion cantidadHorasExtra: unaCantDeHoras.
	
	empleados add: empleado.	
	
	empleadosTemporales add: empleado.
	
	^ empleado! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 11:44:15'!
empleados
	
	^ empleados! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 23:19:05'!
inicializarEmpresaConNombre: unNombre yCuit: unCuit 
	
	nombre := unNombre .
	cuit := unCuit .
	empleados := Set new.
	empleadosPermanentes := Set new.
	empleadosTemporales := Set new.
	empleadosContratados := Set new.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 16:41:31'!
liquidarSueldos
	
	| recibos |
	recibos := Set new.
	
	empleados do: [: empleado | recibos add: (ReciboDeHaberes crearPara: empleado)].
	
	^ recibos.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/26/2025 23:21:50'!
nombre
	
	^nombre! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 14:07:46'!
totalRetenciones
	
	^ empleados inject: 0 into: [ :sum :empleado | sum + empleado retenciones ]! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 14:03:19'!
totalSueldosBrutos
	
	^ empleados inject: 0 into: [ :sum :empleado | sum + empleado sueldoBruto ]! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'fr 8/28/2025 14:05:32'!
totalSueldosNetos
	
	^ empleados inject: 0 into: [ :sum :empleado | sum + empleado sueldoNeto ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empresa class' category: #TP2UML!
Empresa class
	instanceVariableNames: ''!

!Empresa class methodsFor: 'as yet unclassified' stamp: 'fr 8/26/2025 23:20:46'!
crearEmpresaConNombre: unNombre cuit: unCuit 
	
	^ self new inicializarEmpresaConNombre: unNombre yCuit: unCuit.! !


!classDefinition: #ReciboDeHaberes category: #TP2UML!
Object subclass: #ReciboDeHaberes
	instanceVariableNames: 'nombre direccion fechaDeEmision sueldoBruto sueldoNeto conceptos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP2UML'!

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 20:55:38'!
inicializarParaEmpleado: unEmpleado 
	
	nombre := unEmpleado nombre.
	direccion := unEmpleado direccion.
	fechaDeEmision := Date today.
	sueldoBruto := unEmpleado sueldoBruto.
	sueldoNeto := unEmpleado sueldoNeto.
	conceptos := Conceptos paraEmpleado: unEmpleado. ! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 19:12:52'!
nombre
	
	^nombre! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReciboDeHaberes class' category: #TP2UML!
ReciboDeHaberes class
	instanceVariableNames: ''!

!ReciboDeHaberes class methodsFor: 'as yet unclassified' stamp: 'fr 8/31/2025 16:43:04'!
crearPara: empleado 
	
	^ self new inicializarParaEmpleado: empleado.! !
