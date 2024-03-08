Class {
	#name : 'RayNPatchInfo',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_BOTTOM',
		'OFFSET_LAYOUT',
		'OFFSET_LEFT',
		'OFFSET_RIGHT',
		'OFFSET_SOURCE',
		'OFFSET_TOP'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayNPatchInfo class >> fieldsDesc [

	^ #(
	Rectangle source;
	int left;
	int top;
	int right;
	int bottom;
	int layout
	)
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> bottom [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BOTTOM
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> bottom: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BOTTOM put: anObject
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> layout [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LAYOUT
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> layout: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LAYOUT put: anObject
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> left [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LEFT
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> left: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LEFT put: anObject
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> right [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_RIGHT
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> right: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_RIGHT put: anObject
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> source [
	"This method was automatically generated"
	^ RayRectangle fromHandle: (handle referenceStructAt: OFFSET_SOURCE length: RayRectangle byteSize)
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> source: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SOURCE put: anObject getHandle length: RayRectangle byteSize
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> top [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TOP
]

{ #category : 'accessing - structure variables' }
RayNPatchInfo >> top: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TOP put: anObject
]
