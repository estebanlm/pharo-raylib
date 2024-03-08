Class {
	#name : 'RayFont',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_BASESIZE',
		'OFFSET_GLYPHCOUNT',
		'OFFSET_GLYPHPADDING',
		'OFFSET_GLYPHS',
		'OFFSET_RECS',
		'OFFSET_TEXTURE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayFont class >> fieldsDesc [

	^ #(
	int baseSize;
	int glyphCount;
	int glyphPadding;
	Texture2D texture;
	Rectangle* recs;
	GlyphInfo* glyphs
	)
]

{ #category : 'accessing - structure variables' }
RayFont >> baseSize [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BASESIZE
]

{ #category : 'accessing - structure variables' }
RayFont >> baseSize: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BASESIZE put: anObject
]

{ #category : 'accessing - structure variables' }
RayFont >> glyphCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_GLYPHCOUNT
]

{ #category : 'accessing - structure variables' }
RayFont >> glyphCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_GLYPHCOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayFont >> glyphPadding [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_GLYPHPADDING
]

{ #category : 'accessing - structure variables' }
RayFont >> glyphPadding: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_GLYPHPADDING put: anObject
]

{ #category : 'accessing - structure variables' }
RayFont >> glyphs [
	"This method was automatically generated"
	^RayGlyphInfo fromHandle: (handle pointerAt: OFFSET_GLYPHS)
]

{ #category : 'accessing - structure variables' }
RayFont >> glyphs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_GLYPHS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayFont >> recs [
	"This method was automatically generated"
	^RayRectangle fromHandle: (handle pointerAt: OFFSET_RECS)
]

{ #category : 'accessing - structure variables' }
RayFont >> recs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RECS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayFont >> texture [
	"This method was automatically generated"
	^ RayTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RayTexture byteSize)
]

{ #category : 'accessing - structure variables' }
RayFont >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RayTexture byteSize
]
