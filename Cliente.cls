"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Cliente
	instanceVariableNames: 'id listaServicios'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{0F24FFE2-9919-4E88-B9B5-7487D33933D2}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

agregarServicio: unServicio
    listaServicios add: unServicio.
!

id
^id.!

iniClienteNom: unNom dni: unDni legajo: unLegajo id: unId
	super iniPersonaNom: unNom dni: unDni legajo: unLegajo.
	id:= unId.
	listaServicios:= OrderedCollection new.


!

servicios
	^listaServicios.! !
!Cliente categoriesFor: #agregarServicio:!public! !
!Cliente categoriesFor: #id!public! !
!Cliente categoriesFor: #iniClienteNom:dni:legajo:id:!public! !
!Cliente categoriesFor: #servicios!public! !

!Cliente class methodsFor!

crearClienteNom: unNom dni: unDni legajo: unLegajo id: unId
^(self new) iniClienteNom: unNom dni: unDni legajo: unLegajo id: unId.




! !
!Cliente class categoriesFor: #crearClienteNom:dni:legajo:id:!public! !

