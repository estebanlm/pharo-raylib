Class {
	#name : 'RayGestureEvent',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_POINTCOUNT',
		'OFFSET_POINTID',
		'OFFSET_POSITION',
		'OFFSET_TOUCHACTION'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayGestureEvent class >> fieldsDesc [

	^ #(
	int touchAction;
	int pointCount;
	int_8 pointId;
	Vector2_8 position
	)
]

{ #category : 'accessing - structure variables' }
RayGestureEvent >> pointCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_POINTCOUNT
]

{ #category : 'accessing - structure variables' }
RayGestureEvent >> pointCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_POINTCOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayGestureEvent >> pointId [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIInt32 size: 8) fromHandle: (handle copyFrom: OFFSET_POINTID to: OFFSET_POINTID + 31)
]

{ #category : 'accessing - structure variables' }
RayGestureEvent >> pointId: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_POINTID to: OFFSET_POINTID + 31 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayGestureEvent >> position [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIExternalStructureType size: 8) fromHandle: (handle copyFrom: OFFSET_POSITION to: OFFSET_POSITION + 63)
]

{ #category : 'accessing - structure variables' }
RayGestureEvent >> position: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_POSITION to: OFFSET_POSITION + 63 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayGestureEvent >> touchAction [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TOUCHACTION
]

{ #category : 'accessing - structure variables' }
RayGestureEvent >> touchAction: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TOUCHACTION put: anObject
]
