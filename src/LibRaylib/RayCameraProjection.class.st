Class {
	#name : 'RayCameraProjection',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'CAMERA_ORTHOGRAPHIC',
		'CAMERA_PERSPECTIVE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayCameraProjection class >> CAMERA_ORTHOGRAPHIC [
	"This method was automatically generated"
	^ CAMERA_ORTHOGRAPHIC
]

{ #category : 'accessing enum' }
RayCameraProjection class >> CAMERA_PERSPECTIVE [
	"This method was automatically generated"
	^ CAMERA_PERSPECTIVE
]

{ #category : 'enum declaration' }
RayCameraProjection class >> enumDecl [

	^ #(
	CAMERA_PERSPECTIVE 0
	CAMERA_ORTHOGRAPHIC 1 )
]
