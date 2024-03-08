Class {
	#name : 'RayMaterial',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_MAPS',
		'OFFSET_PARAMS',
		'OFFSET_SHADER'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayMaterial class >> fieldsDesc [

	^ #(
	Shader shader;
	MaterialMap* maps;
	float params
	)
]

{ #category : 'accessing - structure variables' }
RayMaterial >> maps [
	"This method was automatically generated"
	^RayMaterialMap fromHandle: (handle pointerAt: OFFSET_MAPS)
]

{ #category : 'accessing - structure variables' }
RayMaterial >> maps: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MAPS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMaterial >> params [
	"This method was automatically generated"
	^handle floatAt: OFFSET_PARAMS
]

{ #category : 'accessing - structure variables' }
RayMaterial >> params: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_PARAMS put: anObject
]

{ #category : 'accessing - structure variables' }
RayMaterial >> shader [
	"This method was automatically generated"
	^ RayShader fromHandle: (handle referenceStructAt: OFFSET_SHADER length: RayShader byteSize)
]

{ #category : 'accessing - structure variables' }
RayMaterial >> shader: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SHADER put: anObject getHandle length: RayShader byteSize
]
