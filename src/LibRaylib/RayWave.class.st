Class {
	#name : 'RayWave',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_CHANNELS',
		'OFFSET_DATA',
		'OFFSET_FRAMECOUNT',
		'OFFSET_SAMPLERATE',
		'OFFSET_SAMPLESIZE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayWave class >> fieldsDesc [

	^ #(
	uint frameCount;
	uint sampleRate;
	uint sampleSize;
	uint channels;
	void* data
	)
]

{ #category : 'accessing - structure variables' }
RayWave >> channels [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHANNELS
]

{ #category : 'accessing - structure variables' }
RayWave >> channels: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHANNELS put: anObject
]

{ #category : 'accessing - structure variables' }
RayWave >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RayWave >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayWave >> frameCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FRAMECOUNT
]

{ #category : 'accessing - structure variables' }
RayWave >> frameCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayWave >> sampleRate [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLERATE
]

{ #category : 'accessing - structure variables' }
RayWave >> sampleRate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLERATE put: anObject
]

{ #category : 'accessing - structure variables' }
RayWave >> sampleSize [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLESIZE
]

{ #category : 'accessing - structure variables' }
RayWave >> sampleSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLESIZE put: anObject
]
