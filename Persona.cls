"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'Dni nombre legajo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{EF10102B-6883-4600-BD59-DC5540338D8A}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

dni
^Dni.!

iniPersonaNom: unNom dni: unDni legajo: unLegajo
	nombre:= unNom.
	Dni:= unDni.
	legajo:= unLegajo.!

legajo
^legajo.!

modificarDni: unDni
Dni:= unDni.!

modificarLegajo: unLegajo
legajo:= unLegajo.!

modificarNombre: unNom
nombre:= unNom.!

nombre
^nombre.! !
!Persona categoriesFor: #dni!public! !
!Persona categoriesFor: #iniPersonaNom:dni:legajo:!public! !
!Persona categoriesFor: #legajo!public! !
!Persona categoriesFor: #modificarDni:!public! !
!Persona categoriesFor: #modificarLegajo:!public! !
!Persona categoriesFor: #modificarNombre:!public! !
!Persona categoriesFor: #nombre!public! !

!Persona class methodsFor!

crearPersonaNom: unNom dni: unDni legajo: unLegajo
    ^(self new) iniPersonaNom: unNom dni: unDni legajo: unLegajo.! !
!Persona class categoriesFor: #crearPersonaNom:dni:legajo:!public! !

