Class {
	#name : 'RayTexture',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_FORMAT',
		'OFFSET_HEIGHT',
		'OFFSET_ID',
		'OFFSET_MIPMAPS',
		'OFFSET_WIDTH'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayTexture class >> fieldsDesc [

	^ #(
	uint id;
	int width;
	int height;
	int mipmaps;
	int format
	)
]

{ #category : 'accessing - structure variables' }
RayTexture >> format [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FORMAT
]

{ #category : 'accessing - structure variables' }
RayTexture >> format: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FORMAT put: anObject
]

{ #category : 'accessing - structure variables' }
RayTexture >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : 'accessing - structure variables' }
RayTexture >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : 'accessing - structure variables' }
RayTexture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : 'accessing - structure variables' }
RayTexture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : 'accessing - structure variables' }
RayTexture >> mipmaps [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MIPMAPS
]

{ #category : 'accessing - structure variables' }
RayTexture >> mipmaps: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MIPMAPS put: anObject
]

{ #category : 'accessing - structure variables' }
RayTexture >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : 'accessing - structure variables' }
RayTexture >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]
