Class {
	#name : 'RayCamera3D',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_FOVY',
		'OFFSET_POSITION',
		'OFFSET_PROJECTION',
		'OFFSET_TARGET',
		'OFFSET_UP'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayCamera3D class >> fieldsDesc [

	^ #(
	Vector3 position;
	Vector3 target;
	Vector3 up;
	float fovy;
	int projection
	)
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> fovy [
	"This method was automatically generated"
	^handle floatAt: OFFSET_FOVY
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> fovy: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_FOVY put: anObject
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> position [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: RayVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> projection [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PROJECTION
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> projection: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PROJECTION put: anObject
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> target [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle structAt: OFFSET_TARGET length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: RayVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> up [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_UP length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayCamera3D >> up: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_UP put: anObject getHandle length: RayVector3 byteSize
]
