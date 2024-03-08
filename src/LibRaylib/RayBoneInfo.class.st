Class {
	#name : 'RayBoneInfo',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_NAME',
		'OFFSET_PARENT'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayBoneInfo class >> fieldsDesc [

	^ #(
	char name;
	int parent
	)
]

{ #category : 'accessing - structure variables' }
RayBoneInfo >> name [
	"This method was automatically generated"
	^handle unsignedCharAt: OFFSET_NAME
]

{ #category : 'accessing - structure variables' }
RayBoneInfo >> name: anObject [
	"This method was automatically generated"
	handle unsignedCharAt: OFFSET_NAME put: anObject
]

{ #category : 'accessing - structure variables' }
RayBoneInfo >> parent [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PARENT
]

{ #category : 'accessing - structure variables' }
RayBoneInfo >> parent: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PARENT put: anObject
]
