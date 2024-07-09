Class {
	#name : 'RayAutomationEvent',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_FRAME',
		'OFFSET_PARAMS',
		'OFFSET_TYPE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayAutomationEvent class >> fieldsDesc [

	^ #(
	uint frame;
	uint type;
	int_4 params
	)
]

{ #category : 'accessing - structure variables' }
RayAutomationEvent >> frame [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FRAME
]

{ #category : 'accessing - structure variables' }
RayAutomationEvent >> frame: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FRAME put: anObject
]

{ #category : 'accessing - structure variables' }
RayAutomationEvent >> params [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIInt32 size: 4) fromHandle: (handle copyFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15)
]

{ #category : 'accessing - structure variables' }
RayAutomationEvent >> params: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayAutomationEvent >> type [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_TYPE
]

{ #category : 'accessing - structure variables' }
RayAutomationEvent >> type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TYPE put: anObject
]
