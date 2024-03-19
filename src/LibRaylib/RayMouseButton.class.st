Class {
	#name : 'RayMouseButton',
	#superclass : 'RayEnumeration',
	#classVars : [
		'MOUSE_BUTTON_BACK',
		'MOUSE_BUTTON_EXTRA',
		'MOUSE_BUTTON_FORWARD',
		'MOUSE_BUTTON_LEFT',
		'MOUSE_BUTTON_MIDDLE',
		'MOUSE_BUTTON_RIGHT',
		'MOUSE_BUTTON_SIDE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayMouseButton class >> MOUSE_BUTTON_BACK [
	"This method was automatically generated"
	^ MOUSE_BUTTON_BACK
]

{ #category : 'accessing enum' }
RayMouseButton class >> MOUSE_BUTTON_EXTRA [
	"This method was automatically generated"
	^ MOUSE_BUTTON_EXTRA
]

{ #category : 'accessing enum' }
RayMouseButton class >> MOUSE_BUTTON_FORWARD [
	"This method was automatically generated"
	^ MOUSE_BUTTON_FORWARD
]

{ #category : 'accessing enum' }
RayMouseButton class >> MOUSE_BUTTON_LEFT [
	"This method was automatically generated"
	^ MOUSE_BUTTON_LEFT
]

{ #category : 'accessing enum' }
RayMouseButton class >> MOUSE_BUTTON_MIDDLE [
	"This method was automatically generated"
	^ MOUSE_BUTTON_MIDDLE
]

{ #category : 'accessing enum' }
RayMouseButton class >> MOUSE_BUTTON_RIGHT [
	"This method was automatically generated"
	^ MOUSE_BUTTON_RIGHT
]

{ #category : 'accessing enum' }
RayMouseButton class >> MOUSE_BUTTON_SIDE [
	"This method was automatically generated"
	^ MOUSE_BUTTON_SIDE
]

{ #category : 'enum declaration' }
RayMouseButton class >> enumDecl [

	^ #(
	MOUSE_BUTTON_LEFT 0
	MOUSE_BUTTON_RIGHT 1
	MOUSE_BUTTON_MIDDLE 2
	MOUSE_BUTTON_SIDE 3
	MOUSE_BUTTON_EXTRA 4
	MOUSE_BUTTON_FORWARD 5
	MOUSE_BUTTON_BACK 6 )
]
