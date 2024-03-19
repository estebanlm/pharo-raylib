Class {
	#name : 'RayBoundingBox',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_MAX',
		'OFFSET_MIN'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayBoundingBox class >> fieldsDesc [

	^ #(
	Vector3 min;
	Vector3 max
	)
]

{ #category : 'accessing - structure variables' }
RayBoundingBox >> max [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_MAX length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayBoundingBox >> max: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MAX put: anObject getHandle length: RayVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RayBoundingBox >> min [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_MIN length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayBoundingBox >> min: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MIN put: anObject getHandle length: RayVector3 byteSize
]
