Class {
	#name : 'RayRenderTexture',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_DEPTH',
		'OFFSET_ID',
		'OFFSET_TEXTURE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayRenderTexture class >> fieldsDesc [

	^ #(
	uint id;
	Texture texture;
	Texture depth
	)
]

{ #category : 'accessing - structure variables' }
RayRenderTexture >> depth [
	"This method was automatically generated"
	^ RayTexture fromHandle: (handle referenceStructAt: OFFSET_DEPTH length: RayTexture byteSize)
]

{ #category : 'accessing - structure variables' }
RayRenderTexture >> depth: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEPTH put: anObject getHandle length: RayTexture byteSize
]

{ #category : 'accessing - structure variables' }
RayRenderTexture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : 'accessing - structure variables' }
RayRenderTexture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : 'accessing - structure variables' }
RayRenderTexture >> texture [
	"This method was automatically generated"
	^ RayTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RayTexture byteSize)
]

{ #category : 'accessing - structure variables' }
RayRenderTexture >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RayTexture byteSize
]
