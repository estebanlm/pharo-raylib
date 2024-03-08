Class {
	#name : 'RayGlyphInfo',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_ADVANCEX',
		'OFFSET_IMAGE',
		'OFFSET_OFFSETX',
		'OFFSET_OFFSETY',
		'OFFSET_VALUE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayGlyphInfo class >> fieldsDesc [

	^ #(
	int value;
	int offsetX;
	int offsetY;
	int advanceX;
	Image image
	)
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> advanceX [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_ADVANCEX
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> advanceX: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_ADVANCEX put: anObject
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> image [
	"This method was automatically generated"
	^ RayImage fromHandle: (handle referenceStructAt: OFFSET_IMAGE length: RayImage byteSize)
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> image: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_IMAGE put: anObject getHandle length: RayImage byteSize
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> offsetX [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_OFFSETX
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> offsetX: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_OFFSETX put: anObject
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> offsetY [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_OFFSETY
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> offsetY: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_OFFSETY put: anObject
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> value [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VALUE
]

{ #category : 'accessing - structure variables' }
RayGlyphInfo >> value: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VALUE put: anObject
]
