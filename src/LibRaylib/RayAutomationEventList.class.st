Class {
	#name : 'RayAutomationEventList',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_CAPACITY',
		'OFFSET_COUNT',
		'OFFSET_EVENTS'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayAutomationEventList class >> fieldsDesc [

	^ #(
	uint capacity;
	uint count;
	AutomationEvent* events
	)
]

{ #category : 'accessing - structure variables' }
RayAutomationEventList >> capacity [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CAPACITY
]

{ #category : 'accessing - structure variables' }
RayAutomationEventList >> capacity: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CAPACITY put: anObject
]

{ #category : 'accessing - structure variables' }
RayAutomationEventList >> count [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_COUNT
]

{ #category : 'accessing - structure variables' }
RayAutomationEventList >> count: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_COUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayAutomationEventList >> events [
	"This method was automatically generated"
	^RayAutomationEvent fromHandle: (handle pointerAt: OFFSET_EVENTS)
]

{ #category : 'accessing - structure variables' }
RayAutomationEventList >> events: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_EVENTS put: anObject getHandle.
]
