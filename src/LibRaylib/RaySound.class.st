Class {
	#name : 'RaySound',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_FRAMECOUNT',
		'OFFSET_STREAM'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RaySound class >> fieldsDesc [

	^ #(
	AudioStream stream;
	uint frameCount
	)
]

{ #category : 'accessing - structure variables' }
RaySound >> frameCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FRAMECOUNT
]

{ #category : 'accessing - structure variables' }
RaySound >> frameCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaySound >> stream [
	"This method was automatically generated"
	^ RayAudioStream fromHandle: (handle referenceStructAt: OFFSET_STREAM length: RayAudioStream byteSize)
]

{ #category : 'accessing - structure variables' }
RaySound >> stream: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_STREAM put: anObject getHandle length: RayAudioStream byteSize
]
