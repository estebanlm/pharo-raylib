Class {
	#name : 'RayGesture',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'GESTURE_DOUBLETAP',
		'GESTURE_DRAG',
		'GESTURE_HOLD',
		'GESTURE_NONE',
		'GESTURE_PINCH_IN',
		'GESTURE_PINCH_OUT',
		'GESTURE_SWIPE_DOWN',
		'GESTURE_SWIPE_LEFT',
		'GESTURE_SWIPE_RIGHT',
		'GESTURE_SWIPE_UP',
		'GESTURE_TAP'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_DOUBLETAP [
	"This method was automatically generated"
	^ GESTURE_DOUBLETAP
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_DRAG [
	"This method was automatically generated"
	^ GESTURE_DRAG
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_HOLD [
	"This method was automatically generated"
	^ GESTURE_HOLD
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_NONE [
	"This method was automatically generated"
	^ GESTURE_NONE
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_PINCH_IN [
	"This method was automatically generated"
	^ GESTURE_PINCH_IN
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_PINCH_OUT [
	"This method was automatically generated"
	^ GESTURE_PINCH_OUT
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_SWIPE_DOWN [
	"This method was automatically generated"
	^ GESTURE_SWIPE_DOWN
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_SWIPE_LEFT [
	"This method was automatically generated"
	^ GESTURE_SWIPE_LEFT
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_SWIPE_RIGHT [
	"This method was automatically generated"
	^ GESTURE_SWIPE_RIGHT
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_SWIPE_UP [
	"This method was automatically generated"
	^ GESTURE_SWIPE_UP
]

{ #category : 'accessing enum' }
RayGesture class >> GESTURE_TAP [
	"This method was automatically generated"
	^ GESTURE_TAP
]

{ #category : 'enum declaration' }
RayGesture class >> enumDecl [

	^ #(
	GESTURE_NONE 0
	GESTURE_TAP 1
	GESTURE_DOUBLETAP 2
	GESTURE_HOLD 4
	GESTURE_DRAG 8
	GESTURE_SWIPE_RIGHT 16
	GESTURE_SWIPE_LEFT 32
	GESTURE_SWIPE_UP 64
	GESTURE_SWIPE_DOWN 128
	GESTURE_PINCH_IN 256
	GESTURE_PINCH_OUT 512 )
]
