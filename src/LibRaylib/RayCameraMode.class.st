Class {
	#name : 'RayCameraMode',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'CAMERA_CUSTOM',
		'CAMERA_FIRST_PERSON',
		'CAMERA_FREE',
		'CAMERA_ORBITAL',
		'CAMERA_THIRD_PERSON'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayCameraMode class >> CAMERA_CUSTOM [
	"This method was automatically generated"
	^ CAMERA_CUSTOM
]

{ #category : 'accessing enum' }
RayCameraMode class >> CAMERA_FIRST_PERSON [
	"This method was automatically generated"
	^ CAMERA_FIRST_PERSON
]

{ #category : 'accessing enum' }
RayCameraMode class >> CAMERA_FREE [
	"This method was automatically generated"
	^ CAMERA_FREE
]

{ #category : 'accessing enum' }
RayCameraMode class >> CAMERA_ORBITAL [
	"This method was automatically generated"
	^ CAMERA_ORBITAL
]

{ #category : 'accessing enum' }
RayCameraMode class >> CAMERA_THIRD_PERSON [
	"This method was automatically generated"
	^ CAMERA_THIRD_PERSON
]

{ #category : 'enum declaration' }
RayCameraMode class >> enumDecl [

	^ #(
	CAMERA_CUSTOM 0
	CAMERA_FREE 1
	CAMERA_ORBITAL 2
	CAMERA_FIRST_PERSON 3
	CAMERA_THIRD_PERSON 4 )
]
