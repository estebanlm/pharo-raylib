Class {
	#name : 'RayTransform',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_ROTATION',
		'OFFSET_SCALE',
		'OFFSET_TRANSLATION'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayTransform class >> fieldsDesc [

	^ #(
	Vector3 translation;
	Quaternion rotation;
	Vector3 scale
	)
]

{ #category : 'accessing - structure variables' }
RayTransform >> rotation [
	"This method was automatically generated"
	^ RayVector4 fromHandle: (handle referenceStructAt: OFFSET_ROTATION length: RayVector4 byteSize)
]

{ #category : 'accessing - structure variables' }
RayTransform >> rotation: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_ROTATION put: anObject getHandle length: RayVector4 byteSize
]

{ #category : 'accessing - structure variables' }
RayTransform >> scale [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_SCALE length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayTransform >> scale: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SCALE put: anObject getHandle length: RayVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RayTransform >> translation [
	"This method was automatically generated"
	^ RayVector3 fromHandle: (handle referenceStructAt: OFFSET_TRANSLATION length: RayVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RayTransform >> translation: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TRANSLATION put: anObject getHandle length: RayVector3 byteSize
]
