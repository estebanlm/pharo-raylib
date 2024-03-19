Class {
	#name : 'RayCamera2D',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_OFFSET',
		'OFFSET_ROTATION',
		'OFFSET_TARGET',
		'OFFSET_ZOOM'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayCamera2D class >> fieldsDesc [

	^ #(
	Vector2 offset;
	Vector2 target;
	float rotation;
	float zoom
	)
]

{ #category : 'accessing - structure variables' }
RayCamera2D >> offset [
	"This method was automatically generated"
	^ RayVector2 fromHandle: (handle referenceStructAt: OFFSET_OFFSET length: RayVector2 byteSize)
]

{ #category : 'accessing - structure variables' }
RayCamera2D >> offset: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OFFSET put: anObject getHandle length: RayVector2 byteSize
]

{ #category : 'accessing - structure variables' }
RayCamera2D >> rotation [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ROTATION
]

{ #category : 'accessing - structure variables' }
RayCamera2D >> rotation: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ROTATION put: anObject
]

{ #category : 'accessing - structure variables' }
RayCamera2D >> target [
	"This method was automatically generated"
	^ RayVector2 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: RayVector2 byteSize)
]

{ #category : 'accessing - structure variables' }
RayCamera2D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: RayVector2 byteSize
]

{ #category : 'accessing - structure variables' }
RayCamera2D >> zoom [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ZOOM
]

{ #category : 'accessing - structure variables' }
RayCamera2D >> zoom: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ZOOM put: anObject
]
