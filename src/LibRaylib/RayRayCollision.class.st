Class {
	#name : 'RayRayCollision',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
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
RayRayCollision class >> fieldsDesc [

	^ #(
	int hit;
	float distance;
	Vector3 point;
	Vector3 normal
	)
]

{ #category : 'accessing - structure variables' }
RayRayCollision >> distance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_DISTANCE
]

{ #category : 'accessing - structure variables' }
RayRayCollision >> distance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_DISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RayRayCollision >> hit [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HIT
]

{ #category : 'accessing - structure variables' }
RayRayCollision >> hit: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HIT put: anObject
]

{ #category : 'accessing - structure variables' }
RayRayCollision >> normal [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_NORMAL length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayRayCollision >> normal: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_NORMAL put: anObject getHandle length: RayVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RayRayCollision >> point [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_POINT length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayRayCollision >> point: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POINT put: anObject getHandle length: RayVector3 byteSize
]
