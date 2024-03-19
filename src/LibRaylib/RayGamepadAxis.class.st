Class {
	#name : 'RayGamepadAxis',
	#superclass : 'RayEnumeration',
	#classVars : [
		'GAMEPAD_AXIS_LEFT_TRIGGER',
		'GAMEPAD_AXIS_LEFT_X',
		'GAMEPAD_AXIS_LEFT_Y',
		'GAMEPAD_AXIS_RIGHT_TRIGGER',
		'GAMEPAD_AXIS_RIGHT_X',
		'GAMEPAD_AXIS_RIGHT_Y'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayGamepadAxis class >> GAMEPAD_AXIS_LEFT_TRIGGER [
	"This method was automatically generated"
	^ GAMEPAD_AXIS_LEFT_TRIGGER
]

{ #category : 'accessing enum' }
RayGamepadAxis class >> GAMEPAD_AXIS_LEFT_X [
	"This method was automatically generated"
	^ GAMEPAD_AXIS_LEFT_X
]

{ #category : 'accessing enum' }
RayGamepadAxis class >> GAMEPAD_AXIS_LEFT_Y [
	"This method was automatically generated"
	^ GAMEPAD_AXIS_LEFT_Y
]

{ #category : 'accessing enum' }
RayGamepadAxis class >> GAMEPAD_AXIS_RIGHT_TRIGGER [
	"This method was automatically generated"
	^ GAMEPAD_AXIS_RIGHT_TRIGGER
]

{ #category : 'accessing enum' }
RayGamepadAxis class >> GAMEPAD_AXIS_RIGHT_X [
	"This method was automatically generated"
	^ GAMEPAD_AXIS_RIGHT_X
]

{ #category : 'accessing enum' }
RayGamepadAxis class >> GAMEPAD_AXIS_RIGHT_Y [
	"This method was automatically generated"
	^ GAMEPAD_AXIS_RIGHT_Y
]

{ #category : 'enum declaration' }
RayGamepadAxis class >> enumDecl [

	^ #(
	GAMEPAD_AXIS_LEFT_X 0
	GAMEPAD_AXIS_LEFT_Y 1
	GAMEPAD_AXIS_RIGHT_X 2
	GAMEPAD_AXIS_RIGHT_Y 3
	GAMEPAD_AXIS_LEFT_TRIGGER 4
	GAMEPAD_AXIS_RIGHT_TRIGGER 5 )
]
