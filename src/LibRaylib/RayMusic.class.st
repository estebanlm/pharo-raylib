Class {
	#name : 'RayMusic',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_CTXDATA',
		'OFFSET_CTXTYPE',
		'OFFSET_FRAMECOUNT',
		'OFFSET_LOOPING',
		'OFFSET_STREAM'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayMusic class >> fieldsDesc [

	^ #(
	AudioStream stream;
	uint frameCount;
	int looping;
	int ctxType;
	void* ctxData
	)
]

{ #category : 'accessing - structure variables' }
RayMusic >> ctxData [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_CTXDATA) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RayMusic >> ctxData: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CTXDATA put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMusic >> ctxType [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CTXTYPE
]

{ #category : 'accessing - structure variables' }
RayMusic >> ctxType: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CTXTYPE put: anObject
]

{ #category : 'accessing - structure variables' }
RayMusic >> frameCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FRAMECOUNT
]

{ #category : 'accessing - structure variables' }
RayMusic >> frameCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayMusic >> looping [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LOOPING
]

{ #category : 'accessing - structure variables' }
RayMusic >> looping: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LOOPING put: anObject
]

{ #category : 'accessing - structure variables' }
RayMusic >> stream [
	"This method was automatically generated"
	^ RayAudioStream fromHandle: (handle referenceStructAt: OFFSET_STREAM length: RayAudioStream byteSize)
]

{ #category : 'accessing - structure variables' }
RayMusic >> stream: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_STREAM put: anObject getHandle length: RayAudioStream byteSize
]
