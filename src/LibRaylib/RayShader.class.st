Class {
	#name : 'RayShader',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_ID',
		'OFFSET_LOCS'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayShader class >> fieldsDesc [

	^ #(
	uint id;
	int* locs
	)
]

{ #category : 'accessing - structure variables' }
RayShader >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : 'accessing - structure variables' }
RayShader >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : 'accessing - structure variables' }
RayShader >> locs [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LOCS) type: ExternalType long asPointerType
]

{ #category : 'accessing - structure variables' }
RayShader >> locs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LOCS put: anObject getHandle.
]
