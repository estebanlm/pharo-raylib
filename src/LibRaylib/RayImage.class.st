Class {
	#name : 'RayImage',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_FORMAT',
		'OFFSET_HEIGHT',
		'OFFSET_MIPMAPS',
		'OFFSET_WIDTH'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayImage class >> fieldsDesc [

	^ #(
	void* data;
	int width;
	int height;
	int mipmaps;
	int format
	)
]

{ #category : 'accessing - structure variables' }
RayImage >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RayImage >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayImage >> format [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FORMAT
]

{ #category : 'accessing - structure variables' }
RayImage >> format: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FORMAT put: anObject
]

{ #category : 'accessing - structure variables' }
RayImage >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : 'accessing - structure variables' }
RayImage >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : 'accessing - structure variables' }
RayImage >> mipmaps [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MIPMAPS
]

{ #category : 'accessing - structure variables' }
RayImage >> mipmaps: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MIPMAPS put: anObject
]

{ #category : 'accessing - structure variables' }
RayImage >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : 'accessing - structure variables' }
RayImage >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]
