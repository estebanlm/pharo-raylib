Class {
	#name : 'RayAudioStream',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_BUFFER',
		'OFFSET_CHANNELS',
		'OFFSET_PROCESSOR',
		'OFFSET_SAMPLERATE',
		'OFFSET_SAMPLESIZE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayAudioStream class >> fieldsDesc [

	^ #(
	rAudioBuffer* buffer;
	rAudioProcessor* processor;
	uint sampleRate;
	uint sampleSize;
	uint channels
	)
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> buffer [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BUFFER) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> buffer: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BUFFER put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> channels [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHANNELS
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> channels: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHANNELS put: anObject
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> processor [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PROCESSOR) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> processor: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PROCESSOR put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> sampleRate [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLERATE
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> sampleRate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLERATE put: anObject
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> sampleSize [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLESIZE
]

{ #category : 'accessing - structure variables' }
RayAudioStream >> sampleSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLESIZE put: anObject
]
