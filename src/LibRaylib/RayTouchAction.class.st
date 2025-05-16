Class {
	#name : 'RayTouchAction',
	#superclass : 'RayEnumeration',
	#classVars : [
		'TOUCH_ACTION_CANCEL',
		'TOUCH_ACTION_DOWN',
		'TOUCH_ACTION_MOVE',
		'TOUCH_ACTION_UP'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayTouchAction class >> TOUCH_ACTION_CANCEL [
	"This method was automatically generated"
	^ TOUCH_ACTION_CANCEL
]

{ #category : 'accessing enum' }
RayTouchAction class >> TOUCH_ACTION_DOWN [
	"This method was automatically generated"
	^ TOUCH_ACTION_DOWN
]

{ #category : 'accessing enum' }
RayTouchAction class >> TOUCH_ACTION_MOVE [
	"This method was automatically generated"
	^ TOUCH_ACTION_MOVE
]

{ #category : 'accessing enum' }
RayTouchAction class >> TOUCH_ACTION_UP [
	"This method was automatically generated"
	^ TOUCH_ACTION_UP
]

{ #category : 'enum declaration' }
RayTouchAction class >> enumDecl [

	^ #(
	TOUCH_ACTION_UP 0
	TOUCH_ACTION_DOWN 1
	TOUCH_ACTION_MOVE 2
	TOUCH_ACTION_CANCEL 3 )
]
