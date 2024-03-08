Class {
	#name : 'RayMaterialMap',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_COLOR',
		'OFFSET_TEXTURE',
		'OFFSET_VALUE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayMaterialMap class >> fieldsDesc [

	^ #(
	Texture2D texture;
	Color color;
	float value
	)
]

{ #category : 'accessing - structure variables' }
RayMaterialMap >> color [
	"This method was automatically generated"
	^ RayColor fromHandle: (handle referenceStructAt: OFFSET_COLOR length: RayColor byteSize)
]

{ #category : 'accessing - structure variables' }
RayMaterialMap >> color: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_COLOR put: anObject getHandle length: RayColor byteSize
]

{ #category : 'accessing - structure variables' }
RayMaterialMap >> texture [
	"This method was automatically generated"
	^ RayTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RayTexture byteSize)
]

{ #category : 'accessing - structure variables' }
RayMaterialMap >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RayTexture byteSize
]

{ #category : 'accessing - structure variables' }
RayMaterialMap >> value [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VALUE
]

{ #category : 'accessing - structure variables' }
RayMaterialMap >> value: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VALUE put: anObject
]
