Class {
	#name : 'RayNPatchLayout',
	#superclass : 'RayEnumeration',
	#classVars : [
		'NPATCH_NINE_PATCH',
		'NPATCH_THREE_PATCH_HORIZONTAL',
		'NPATCH_THREE_PATCH_VERTICAL'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayNPatchLayout class >> NPATCH_NINE_PATCH [
	"This method was automatically generated"
	^ NPATCH_NINE_PATCH
]

{ #category : 'accessing enum' }
RayNPatchLayout class >> NPATCH_THREE_PATCH_HORIZONTAL [
	"This method was automatically generated"
	^ NPATCH_THREE_PATCH_HORIZONTAL
]

{ #category : 'accessing enum' }
RayNPatchLayout class >> NPATCH_THREE_PATCH_VERTICAL [
	"This method was automatically generated"
	^ NPATCH_THREE_PATCH_VERTICAL
]

{ #category : 'enum declaration' }
RayNPatchLayout class >> enumDecl [

	^ #(
	NPATCH_NINE_PATCH 0
	NPATCH_THREE_PATCH_VERTICAL 1
	NPATCH_THREE_PATCH_HORIZONTAL 2 )
]
