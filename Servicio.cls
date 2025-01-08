"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Servicio
	instanceVariableNames: 'id nombre descripcion tipo precio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Servicio guid: (GUID fromString: '{11BBE36E-C653-435D-96D7-A5AAC63AC63A}')!
Servicio comment: ''!
!Servicio categoriesForClass!Kernel-Objects! !
!Servicio methodsFor!

descripcion
^descripcion .!

id
^id .
!

iniServicioId: unId nombre: unNombre descripcion: unaDescripcion tipo: unTipo precio: unPrecio
	id:= unId.
	nombre:= unNombre.
	descripcion:= unaDescripcion.
	tipo:= unTipo.
	precio := unPrecio.!

modificarDescripcion: unaDescripcion
descripcion:= unaDescripcion .!

modificarNombre: unNombre
nombre := unNombre.!

modificarTipo: unTipo
tipo:= unTipo.!

nombre
^nombre .!

precio
^precio.!

tipo
^tipo.! !
!Servicio categoriesFor: #descripcion!public! !
!Servicio categoriesFor: #id!public! !
!Servicio categoriesFor: #iniServicioId:nombre:descripcion:tipo:precio:!public! !
!Servicio categoriesFor: #modificarDescripcion:!public! !
!Servicio categoriesFor: #modificarNombre:!public! !
!Servicio categoriesFor: #modificarTipo:!public! !
!Servicio categoriesFor: #nombre!public! !
!Servicio categoriesFor: #precio!public! !
!Servicio categoriesFor: #tipo!public! !

!Servicio class methodsFor!

crearServicioId: unId nombre: unNombre descripcion: unaDescripcion tipo: unTipo precio: unPrecio
    ^(self new) iniServicioId: unId nombre: unNombre descripcion: unaDescripcion tipo: unTipo precio: unPrecio.! !
!Servicio class categoriesFor: #crearServicioId:nombre:descripcion:tipo:precio:!public! !

