Class {
	#name : 'RayMouseCursor',
	#superclass : 'RayEnumeration',
	#classVars : [
		'MOUSE_CURSOR_ARROW',
		'MOUSE_CURSOR_CROSSHAIR',
		'MOUSE_CURSOR_DEFAULT',
		'MOUSE_CURSOR_IBEAM',
		'MOUSE_CURSOR_NOT_ALLOWED',
		'MOUSE_CURSOR_POINTING_HAND',
		'MOUSE_CURSOR_RESIZE_ALL',
		'MOUSE_CURSOR_RESIZE_EW',
		'MOUSE_CURSOR_RESIZE_NESW',
		'MOUSE_CURSOR_RESIZE_NS',
		'MOUSE_CURSOR_RESIZE_NWSE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_ARROW [
	"This method was automatically generated"
	^ MOUSE_CURSOR_ARROW
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_CROSSHAIR [
	"This method was automatically generated"
	^ MOUSE_CURSOR_CROSSHAIR
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_DEFAULT [
	"This method was automatically generated"
	^ MOUSE_CURSOR_DEFAULT
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_IBEAM [
	"This method was automatically generated"
	^ MOUSE_CURSOR_IBEAM
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_NOT_ALLOWED [
	"This method was automatically generated"
	^ MOUSE_CURSOR_NOT_ALLOWED
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_POINTING_HAND [
	"This method was automatically generated"
	^ MOUSE_CURSOR_POINTING_HAND
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_RESIZE_ALL [
	"This method was automatically generated"
	^ MOUSE_CURSOR_RESIZE_ALL
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_RESIZE_EW [
	"This method was automatically generated"
	^ MOUSE_CURSOR_RESIZE_EW
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_RESIZE_NESW [
	"This method was automatically generated"
	^ MOUSE_CURSOR_RESIZE_NESW
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_RESIZE_NS [
	"This method was automatically generated"
	^ MOUSE_CURSOR_RESIZE_NS
]

{ #category : 'accessing enum' }
RayMouseCursor class >> MOUSE_CURSOR_RESIZE_NWSE [
	"This method was automatically generated"
	^ MOUSE_CURSOR_RESIZE_NWSE
]

{ #category : 'enum declaration' }
RayMouseCursor class >> enumDecl [

	^ #(
	MOUSE_CURSOR_DEFAULT 0
	MOUSE_CURSOR_ARROW 1
	MOUSE_CURSOR_IBEAM 2
	MOUSE_CURSOR_CROSSHAIR 3
	MOUSE_CURSOR_POINTING_HAND 4
	MOUSE_CURSOR_RESIZE_EW 5
	MOUSE_CURSOR_RESIZE_NS 6
	MOUSE_CURSOR_RESIZE_NWSE 7
	MOUSE_CURSOR_RESIZE_NESW 8
	MOUSE_CURSOR_RESIZE_ALL 9
	MOUSE_CURSOR_NOT_ALLOWED 10 )
]
