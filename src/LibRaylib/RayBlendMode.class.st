Class {
	#name : 'RayBlendMode',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'BLEND_ADDITIVE',
		'BLEND_ADD_COLORS',
		'BLEND_ALPHA',
		'BLEND_ALPHA_PREMULTIPLY',
		'BLEND_CUSTOM',
		'BLEND_CUSTOM_SEPARATE',
		'BLEND_MULTIPLIED',
		'BLEND_SUBTRACT_COLORS'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayBlendMode class >> BLEND_ADDITIVE [
	"This method was automatically generated"
	^ BLEND_ADDITIVE
]

{ #category : 'accessing enum' }
RayBlendMode class >> BLEND_ADD_COLORS [
	"This method was automatically generated"
	^ BLEND_ADD_COLORS
]

{ #category : 'accessing enum' }
RayBlendMode class >> BLEND_ALPHA [
	"This method was automatically generated"
	^ BLEND_ALPHA
]

{ #category : 'accessing enum' }
RayBlendMode class >> BLEND_ALPHA_PREMULTIPLY [
	"This method was automatically generated"
	^ BLEND_ALPHA_PREMULTIPLY
]

{ #category : 'accessing enum' }
RayBlendMode class >> BLEND_CUSTOM [
	"This method was automatically generated"
	^ BLEND_CUSTOM
]

{ #category : 'accessing enum' }
RayBlendMode class >> BLEND_CUSTOM_SEPARATE [
	"This method was automatically generated"
	^ BLEND_CUSTOM_SEPARATE
]

{ #category : 'accessing enum' }
RayBlendMode class >> BLEND_MULTIPLIED [
	"This method was automatically generated"
	^ BLEND_MULTIPLIED
]

{ #category : 'accessing enum' }
RayBlendMode class >> BLEND_SUBTRACT_COLORS [
	"This method was automatically generated"
	^ BLEND_SUBTRACT_COLORS
]

{ #category : 'enum declaration' }
RayBlendMode class >> enumDecl [

	^ #(
	BLEND_ALPHA 0
	BLEND_ADDITIVE 1
	BLEND_MULTIPLIED 2
	BLEND_ADD_COLORS 3
	BLEND_SUBTRACT_COLORS 4
	BLEND_ALPHA_PREMULTIPLY 5
	BLEND_CUSTOM 6
	BLEND_CUSTOM_SEPARATE 7 )
]
