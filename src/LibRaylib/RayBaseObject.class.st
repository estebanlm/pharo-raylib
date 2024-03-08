Class {
	#name : 'RayBaseObject',
	#superclass : 'FFIOpaqueObject',
	#traits : 'LibTRaylib',
	#classTraits : 'LibTRaylib classTrait',
	#pools : [
		'RayRaylibTypedef'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'finalization' }
RayBaseObject >> autoRelease [
	
	FinalizationRegistry default add: self
]

{ #category : 'finalization' }
RayBaseObject >> dispose [
	
	self subclassResponsibility
]

{ #category : 'finalization' }
RayBaseObject >> finalize [
	
	self dispose.
	handle beNull
]

{ #category : 'initialization' }
RayBaseObject >> initialize [
	"do nothing (prevent initialize to set the handle)"
]
