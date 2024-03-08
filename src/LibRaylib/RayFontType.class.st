Class {
	#name : 'RayFontType',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'FONT_BITMAP',
		'FONT_DEFAULT',
		'FONT_SDF'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayFontType class >> FONT_BITMAP [
	"This method was automatically generated"
	^ FONT_BITMAP
]

{ #category : 'accessing enum' }
RayFontType class >> FONT_DEFAULT [
	"This method was automatically generated"
	^ FONT_DEFAULT
]

{ #category : 'accessing enum' }
RayFontType class >> FONT_SDF [
	"This method was automatically generated"
	^ FONT_SDF
]

{ #category : 'enum declaration' }
RayFontType class >> enumDecl [

	^ #(
	FONT_DEFAULT 0
	FONT_BITMAP 1
	FONT_SDF 2 )
]
