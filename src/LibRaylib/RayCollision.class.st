Class {
	#name : 'RayCollision',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_DISTANCE',
		'OFFSET_HIT',
		'OFFSET_NORMAL',
		'OFFSET_POINT'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayCollision class >> fieldsDesc [

	^ #(
	int hit;
	float distance;
	Vector3 point;
	Vector3 normal
	)
]

{ #category : 'accessing - structure variables' }
RayCollision >> distance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_DISTANCE
]

{ #category : 'accessing - structure variables' }
RayCollision >> distance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_DISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RayCollision >> hit [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HIT
]

{ #category : 'accessing - structure variables' }
RayCollision >> hit: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HIT put: anObject
]

{ #category : 'accessing - structure variables' }
RayCollision >> normal [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_NORMAL length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayCollision >> normal: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_NORMAL put: anObject getHandle length: RayVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RayCollision >> point [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_POINT length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayCollision >> point: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POINT put: anObject getHandle length: RayVector3 byteSize
]
