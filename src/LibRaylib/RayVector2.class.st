Class {
	#name : 'RayVector2',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayVector2 class >> fieldsDesc [

	^ #(
	float x;
	float y
	)
]

{ #category : 'accessing - structure variables' }
RayVector2 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : 'accessing - structure variables' }
RayVector2 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : 'accessing - structure variables' }
RayVector2 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : 'accessing - structure variables' }
RayVector2 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]
