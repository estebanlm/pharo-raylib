Class {
	#name : 'RayVector4',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_W',
		'OFFSET_X',
		'OFFSET_Y',
		'OFFSET_Z'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayVector4 class >> fieldsDesc [

	^ #(
	float x;
	float y;
	float z;
	float w
	)
]

{ #category : 'accessing - structure variables' }
RayVector4 >> w [
	"This method was automatically generated"
	^handle floatAt: OFFSET_W
]

{ #category : 'accessing - structure variables' }
RayVector4 >> w: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_W put: anObject
]

{ #category : 'accessing - structure variables' }
RayVector4 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : 'accessing - structure variables' }
RayVector4 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : 'accessing - structure variables' }
RayVector4 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : 'accessing - structure variables' }
RayVector4 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]

{ #category : 'accessing - structure variables' }
RayVector4 >> z [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Z
]

{ #category : 'accessing - structure variables' }
RayVector4 >> z: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Z put: anObject
]
