!classDefinition: #CondicionesParaEdades category: #TP02!
Object subclass: #CondicionesParaEdades
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!CondicionesParaEdades methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 19:15:32'!
aplicaPara: unaEdad
	
	^ self subclassResponsibility ! !

!CondicionesParaEdades methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 19:15:56'!
monto
	
	^ self subclassResponsibility ! !


!classDefinition: #CondicionNeutra category: #TP02!
CondicionesParaEdades subclass: #CondicionNeutra
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!CondicionNeutra methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 19:07:44'!
aplicaPara: unaEdad
	
	^ true! !

!CondicionNeutra methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:50:51'!
monto
	
	^0*peso! !


!classDefinition: #CondicionParaMayorA50 category: #TP02!
CondicionesParaEdades subclass: #CondicionParaMayorA50
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!CondicionParaMayorA50 methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:50:21'!
aplicaPara: unaEdad
	
	^unaEdad > 50! !

!CondicionParaMayorA50 methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:51:13'!
monto

	^ 25* peso! !


!classDefinition: #Empleado category: #TP02!
Object subclass: #Empleado
	instanceVariableNames: 'nombre direccion estadoCivil fechaNacimiento sueldoBasico'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:36:13'!
calcularAporteJubilatorio

	^ 0 * peso! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 14:47:24'!
calcularEdad

	^ ((((fechaNacimiento) distanceTo: (FixedGregorianDate today)) / (365.25*day)) truncated).! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:36:29'!
calcularObraSocial

	^ 0 * peso! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 14:49:25'!
calcularRetenciones

	self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 14:49:11'!
calcularSueldoBruto

	self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 14:50:47'!
calcularSueldoNeto

	^ self calcularSueldoBruto - self calcularRetenciones! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:32:30'!
desgloceDeConceptosPara: unRecibo

	^ self subclassResponsibility ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:15:30'!
direccion

	^ direccion ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 13:59:27'!
initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo

	nombre := unNombre.
	direccion := unaDireccion.
	estadoCivil := unEstado.
	fechaNacimiento := unaFecha.
	sueldoBasico := unSueldo.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:15:20'!
nombre

	^ nombre ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 16:43:49'!
sueldoBasico

	^ sueldoBasico ! !


!classDefinition: #Contratado category: #TP02!
Empleado subclass: #Contratado
	instanceVariableNames: 'numeroDeContrato medioDePago'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!Contratado methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:44:32'!
calcularGestosAdministrativosContractuales

	^ 50 * peso
	! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:44:15'!
calcularRetenciones


	| GestosAdministrativosContractuales |
	GestosAdministrativosContractuales := self calcularGestosAdministrativosContractuales.
	^ GestosAdministrativosContractuales 
	
	! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:43:10'!
calcularSueldoBruto

	^ sueldoBasico ! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:42:39'!
desgloceDeConceptosPara: unRecibo

	^ unRecibo desgloceContratadoPara: self! !

!Contratado methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:42:08'!
initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo numeroDeContrato: unNumero medioDePago: unMedioDePago

	self initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo.
	numeroDeContrato := unNumero.
	medioDePago := unMedioDePago.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Contratado class' category: #TP02!
Contratado class
	instanceVariableNames: ''!

!Contratado class methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:41:12'!
conNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo numeroDeContrato: unNumero medioDePago: unMedioDePago

	^ self new initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo numeroDeContrato: unNumero medioDePago: unMedioDePago! !


!classDefinition: #PlantaPermanente category: #TP02!
Empleado subclass: #PlantaPermanente
	instanceVariableNames: 'cantidadHijos antiguedad'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:46:35'!
calcularAporteJubilatorio

	^ (self calcularSueldoBruto) * 0.15! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:01:18'!
calcularAsignacionPorAntiguedad

	^ antiguedad * 50 * peso! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:55:14'!
calcularAsignacionPorConyuge

	^ estadoCivil montoPorAsignacionConyuge.! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:55:38'!
calcularAsignacionPorHijo

	^ cantidadHijos * 150 * peso! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:44:53'!
calcularObraSocial

	^ ((self calcularSueldoBruto) * 0.10) + (cantidadHijos * 20 * peso)! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:58:03'!
calcularRetenciones

	| obraSocial jubilacion |
	obraSocial := self calcularObraSocial.
	jubilacion := self calcularAporteJubilatorio.
	^ obraSocial + jubilacion
	
	! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 16:25:39'!
calcularSueldoBruto

	| salarioFamiliar |
	salarioFamiliar := (self calcularAsignacionPorHijo) + (self calcularAsignacionPorConyuge) + (self calcularAsignacionPorAntiguedad).
	^ sueldoBasico + salarioFamiliar! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:31:54'!
desgloceDeConceptosPara: unRecibo

	^ unRecibo desglocePermanentePara: self! !

!PlantaPermanente methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 16:22:23'!
initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo cantidadHijos: unaCantidadHijos antiguedad: anios

	self initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo.
	cantidadHijos := unaCantidadHijos.
	antiguedad := anios.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PlantaPermanente class' category: #TP02!
PlantaPermanente class
	instanceVariableNames: ''!

!PlantaPermanente class methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 16:21:55'!
conNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo cantidadHijos: unaCantidadHijos antiguedad: anios

	^ self new initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo cantidadHijos: unaCantidadHijos antiguedad: anios! !


!classDefinition: #PlantaTemporaria category: #TP02!
Empleado subclass: #PlantaTemporaria
	instanceVariableNames: 'fechaFinDesignacion cantidadHorasExtras'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:47:45'!
calcularAporteJubilatorio

	^ ((self calcularSueldoBruto) * 0.10) + (cantidadHorasExtras * 5 * peso)! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:02:21'!
calcularHorasExtra

	^ cantidadHorasExtras * 40 * peso! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:48:55'!
calcularObraSocial
	
	
	|handler valorFinal|
	
	handler := HandlerPorEdadObraSocialTemporaria new.
	
	valorFinal := handler retencionPorEdadObraSocialPara: self.
	
	^((self calcularSueldoBruto) * 0.10) + valorFinal.
	
	"
	^ (sueldoBruto * 0.10) + (self calcularEdad > 50 ifTrue: [25] ifFalse: [0])
	"! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:58:47'!
calcularRetenciones


	| obraSocial jubilacion |
	obraSocial := self calcularObraSocial.
	jubilacion := self calcularAporteJubilatorio.
	^ obraSocial + jubilacion
	
	! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 16:41:50'!
calcularSueldoBruto

	^ sueldoBasico + (self calcularHorasExtra)! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:33:02'!
desgloceDeConceptosPara: unRecibo


	^ unRecibo desgloceTemporariaPara: self.! !

!PlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 16:39:39'!
initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo fechaFin: unaFechaFin horasExtras: cantidadHoras


	self initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo.
	fechaFinDesignacion := unaFechaFin.
	cantidadHorasExtras := cantidadHoras.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PlantaTemporaria class' category: #TP02!
PlantaTemporaria class
	instanceVariableNames: ''!

!PlantaTemporaria class methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 16:38:30'!
conNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo fechaFin: unaFechaFin horasExtras: cantidadHoras

	^ self new initializeConNombre: unNombre direccion: unaDireccion estadoCivil: unEstado fechaNacimiento: unaFecha sueldoBasico: unSueldo fechaFin: unaFechaFin horasExtras: cantidadHoras! !


!classDefinition: #Empresa category: #TP02!
Object subclass: #Empresa
	instanceVariableNames: 'nombre cuit empleados recibos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!Empresa methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 13:45:03'!
agregarEmpleado: unEmpleado

	empleados add: unEmpleado.
	! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 13:52:00'!
calcularTotalRetenciones

	^ empleados sum: [:empleado | empleado calcularRetenciones]! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 13:51:18'!
calcularTotalSueldosBrutos

	^ empleados sum: [:empleado | empleado calcularSueldoBruto]! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 13:50:48'!
calcularTotalSueldosNetos

	^ empleados sum: [:empleado | empleado calcularSueldoNeto]! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 15:41:41'!
initializeConNombre: unNombre cuit: unCUIT

	nombre := unNombre.
	cuit := unCUIT.
	empleados := Set new.
	recibos := OrderedCollection new.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'lnl 4/3/2025 01:17:41'!
liquidarSueldos
	
	|recibosNuevos recibosAnteriores|
	
	recibosAnteriores := recibos.
	recibosNuevos := (empleados collect: [:empleado | ReciboHaberes generarPara: empleado]). 
	recibos := recibosAnteriores union: recibosNuevos.
	
	^ recibosNuevos 
	
	! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:05:59'!
recibos

	^ recibos 
	
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empresa class' category: #TP02!
Empresa class
	instanceVariableNames: ''!

!Empresa class methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 13:42:23'!
conNombre: unNombre cuit: unCUIT

	^ self new initializeConNombre: unNombre cuit: unCUIT. ! !


!classDefinition: #EstadoCivil category: #TP02!
Object subclass: #EstadoCivil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!EstadoCivil methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:58:38'!
montoPorAsignacionConyuge

	^ self subclassResponsibility ! !


!classDefinition: #Casado category: #TP02!
EstadoCivil subclass: #Casado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!Casado methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:00:11'!
montoPorAsignacionConyuge

	^ 100 * peso! !


!classDefinition: #Soltero category: #TP02!
EstadoCivil subclass: #Soltero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!Soltero methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:00:25'!
montoPorAsignacionConyuge

	^ 0 * peso! !


!classDefinition: #HandlerPorEdadObraSocialTemporaria category: #TP02!
Object subclass: #HandlerPorEdadObraSocialTemporaria
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!HandlerPorEdadObraSocialTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:45:37'!
condiciones

	^{CondicionParaMayorA50 new. CondicionNeutra new.}! !

!HandlerPorEdadObraSocialTemporaria methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:49:02'!
retencionPorEdadObraSocialPara: unEmpleado

	|condicion|
	
	condicion := (self condiciones detect: [: unaCondicion | unaCondicion aplicaPara: (unEmpleado calcularEdad) ]).
	
	^condicion monto.! !


!classDefinition: #ReciboHaberes category: #TP02!
Object subclass: #ReciboHaberes
	instanceVariableNames: 'nombreEmpleado direccion fechaEmision sueldoBruto retencion desgloceConceptos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:07:44'!
desgloceConceptos

	^ desgloceConceptos ! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:47:01'!
desgloceContratadoPara: unEmpleado

	|desgloce|

	desgloce := OrderedCollection new.
	desgloce add: ('Sueldo bruto: ', unEmpleado calcularSueldoBruto asString).
	desgloce add: ('Sueldo basico: ', unEmpleado sueldoBasico asString).

	desgloce add: ('Retencion: ', unEmpleado calcularRetenciones asString).
	desgloce add: ('Retencion por gestos administrativos contractuales: ', unEmpleado calcularGestosAdministrativosContractuales asString).

	^ desgloce 

	
	! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:21:17'!
desglocePermanentePara: unEmpleado

	|desgloce|

	desgloce := OrderedCollection new.
	desgloce add: ('Sueldo bruto: ', unEmpleado calcularSueldoBruto asString).
	desgloce add: ('Sueldo basico: ', unEmpleado sueldoBasico asString).
	desgloce add: ('Asignacion por hijo: ', unEmpleado calcularAsignacionPorHijo asString).
	desgloce add: ('Asignacion por conyuge: ', unEmpleado calcularAsignacionPorConyuge asString).
	desgloce add: ('Asignacion por antiguedad: ', unEmpleado calcularAsignacionPorAntiguedad asString).

	desgloce add: ('Retencion: ', unEmpleado calcularRetenciones asString).
	desgloce add: ('Retencion por obra social: ', unEmpleado calcularObraSocial asString).
	desgloce add: ('Retencion por aporte jubilatorio: ', unEmpleado calcularAporteJubilatorio asString).

	^ desgloce 

	
	! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:34:47'!
desgloceTemporariaPara: unEmpleado

	|desgloce|
	
	desgloce := OrderedCollection new.
	desgloce add: ('Sueldo bruto: ', unEmpleado calcularSueldoBruto asString).
	desgloce add: ('Sueldo basico: ', unEmpleado sueldoBasico asString).
	desgloce add: ('Asignacion horas extra: ', unEmpleado calcularHorasExtra asString).

	desgloce add: ('Retencion: ', unEmpleado calcularRetenciones asString).
	desgloce add: ('Retencion por obra social: ', unEmpleado calcularObraSocial asString).
	desgloce add: ('Retencion por aporte jubilatorio: ', unEmpleado calcularAporteJubilatorio asString).

	^ desgloce 
		
		! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:06:50'!
direccion

	^ direccion 
	
	! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:07:07'!
fechaEmision

	^ fechaEmision ! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 4/3/2025 01:16:27'!
initializePara: unEmpleado

	nombreEmpleado := unEmpleado nombre.
	direccion := unEmpleado direccion.
	fechaEmision := FixedGregorianDate today.
	sueldoBruto := unEmpleado calcularSueldoBruto.
	retencion := unEmpleado calcularRetenciones.
	desgloceConceptos := unEmpleado desgloceDeConceptosPara: self
	
	
	
	
	
	
	
	! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:06:25'!
nombreEmpleado

	^ nombreEmpleado 
	
	
	
	
	! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:07:31'!
retencion

	^ retencion ! !

!ReciboHaberes methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 18:07:22'!
sueldoBruto

	^ sueldoBruto ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReciboHaberes class' category: #TP02!
ReciboHaberes class
	instanceVariableNames: ''!

!ReciboHaberes class methodsFor: 'as yet unclassified' stamp: 'lnl 3/29/2025 17:07:55'!
generarPara: unEmpleado

	^ self new initializePara: unEmpleado.! !


!classDefinition: #Scripts category: #TP02!
Object subclass: #Scripts
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP02'!

!Scripts methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:56:24'!
script1
	
	| empresa |
	
	empresa := Empresa conNombre: 'Sarcor' cuit: '234789' .
	empresa agregarEmpleado: (PlantaPermanente conNombre: 'Juan' direccion: 'Calle 123' estadoCivil: (Casado new) fechaNacimiento: (May twentyfifth, 1995) sueldoBasico: (50000 * peso) cantidadHijos: 2 antiguedad: 10).
	empresa agregarEmpleado: (PlantaTemporaria conNombre: 'Ana' direccion: 'Avenida 456' estadoCivil: (Soltero new) fechaNacimiento: (August twelfth, 1976) sueldoBasico: (45000 * peso ) fechaFin: (August twelfth, 2036) horasExtras: 10).
	empresa agregarEmpleado: (Contratado conNombre: 'Alex' direccion: 'Boulevard 987' estadoCivil: (Soltero new) fechaNacimiento: (March twelfth, 1978) sueldoBasico: (85000 * peso) numeroDeContrato: 234786 medioDePago: 'Efectivo').

	"Calcular total de sueldos netos"
	^ empresa calcularTotalSueldosNetos.
	! !

!Scripts methodsFor: 'as yet unclassified' stamp: 'lnl 4/6/2025 16:57:02'!
script2
	
	| empresa2 |
	
	empresa2 := Empresa conNombre: 'Carrefour' cuit: '269874' .
	empresa2 agregarEmpleado: (PlantaPermanente conNombre: 'Carlos' direccion: 'Calle 789' estadoCivil: (Casado new) fechaNacimiento: (May twentyfifth, 1995) sueldoBasico: (55000 * peso) cantidadHijos: 3 antiguedad: 15).
	empresa2 agregarEmpleado: (PlantaTemporaria conNombre: 'Elena' direccion: 'Boulevard 321' estadoCivil: (Soltero new) fechaNacimiento: (August twelfth, 1976) sueldoBasico: (47000 * peso) fechaFin: (August twelfth, 2036) horasExtras: 5).
	empresa2 agregarEmpleado: (Contratado conNombre: 'Diego' direccion: 'Avenida 777' estadoCivil: (Casado new) fechaNacimiento: (June first, 1968) sueldoBasico: (25000 * peso) numeroDeContrato: 234786 medioDePago: 'Efectivo').

	"Generar recibos de sueldo"
	^ empresa2 liquidarSueldos. 
	! !
