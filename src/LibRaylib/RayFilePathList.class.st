Class {
	#name : 'RayFilePathList',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_CAPACITY',
		'OFFSET_COUNT',
		'OFFSET_PATHS'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayFilePathList class >> fieldsDesc [

	^ #(
	uint capacity;
	uint count;
	char** paths
	)
]

{ #category : 'accessing - structure variables' }
RayFilePathList >> capacity [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CAPACITY
]

{ #category : 'accessing - structure variables' }
RayFilePathList >> capacity: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CAPACITY put: anObject
]

{ #category : 'accessing - structure variables' }
RayFilePathList >> count [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_COUNT
]

{ #category : 'accessing - structure variables' }
RayFilePathList >> count: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_COUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayFilePathList >> paths [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PATHS) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
RayFilePathList >> paths: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PATHS put: anObject getHandle.
]
