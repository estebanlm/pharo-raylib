Class {
	#name : 'RayMaterial',
	#superclass : 'RayStructure',
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
	float_4 params
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
	^(FFIArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15)
]

{ #category : 'accessing - structure variables' }
RayMaterial >> params: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15 with: anObject getHandle startingAt: 1
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
