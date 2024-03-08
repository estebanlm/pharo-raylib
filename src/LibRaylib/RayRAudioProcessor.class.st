Class {
	#name : 'RayRAudioProcessor',
	#superclass : 'RayBaseObject',
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'finalizing' }
RayRAudioProcessor >> dispose [

	self ffiCall: #(void rAudioProcessor_dispose(rAudioProcessor* self))
]
