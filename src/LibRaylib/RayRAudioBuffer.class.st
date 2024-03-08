Class {
	#name : 'RayRAudioBuffer',
	#superclass : 'RayBaseObject',
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'finalizing' }
RayRAudioBuffer >> dispose [

	self ffiCall: #(void rAudioBuffer_dispose(rAudioBuffer* self))
]
