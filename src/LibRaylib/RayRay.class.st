Class {
	#name : 'RayRay',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_DIRECTION',
		'OFFSET_POSITION'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayRay class >> fieldsDesc [

	^ #(
	Vector3 position;
	Vector3 direction
	)
]

{ #category : 'accessing - structure variables' }
RayRay >> direction [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_DIRECTION length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayRay >> direction: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DIRECTION put: anObject getHandle length: RayVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RayRay >> position [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayRay >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: RayVector3 byteSize
]
