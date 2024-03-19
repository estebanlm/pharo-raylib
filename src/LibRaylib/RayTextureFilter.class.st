Class {
	#name : 'RayTextureFilter',
	#superclass : 'RayEnumeration',
	#classVars : [
		'TEXTURE_FILTER_ANISOTROPIC_16X',
		'TEXTURE_FILTER_ANISOTROPIC_4X',
		'TEXTURE_FILTER_ANISOTROPIC_8X',
		'TEXTURE_FILTER_BILINEAR',
		'TEXTURE_FILTER_POINT',
		'TEXTURE_FILTER_TRILINEAR'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayTextureFilter class >> TEXTURE_FILTER_ANISOTROPIC_16X [
	"This method was automatically generated"
	^ TEXTURE_FILTER_ANISOTROPIC_16X
]

{ #category : 'accessing enum' }
RayTextureFilter class >> TEXTURE_FILTER_ANISOTROPIC_4X [
	"This method was automatically generated"
	^ TEXTURE_FILTER_ANISOTROPIC_4X
]

{ #category : 'accessing enum' }
RayTextureFilter class >> TEXTURE_FILTER_ANISOTROPIC_8X [
	"This method was automatically generated"
	^ TEXTURE_FILTER_ANISOTROPIC_8X
]

{ #category : 'accessing enum' }
RayTextureFilter class >> TEXTURE_FILTER_BILINEAR [
	"This method was automatically generated"
	^ TEXTURE_FILTER_BILINEAR
]

{ #category : 'accessing enum' }
RayTextureFilter class >> TEXTURE_FILTER_POINT [
	"This method was automatically generated"
	^ TEXTURE_FILTER_POINT
]

{ #category : 'accessing enum' }
RayTextureFilter class >> TEXTURE_FILTER_TRILINEAR [
	"This method was automatically generated"
	^ TEXTURE_FILTER_TRILINEAR
]

{ #category : 'enum declaration' }
RayTextureFilter class >> enumDecl [

	^ #(
	TEXTURE_FILTER_POINT 0
	TEXTURE_FILTER_BILINEAR 1
	TEXTURE_FILTER_TRILINEAR 2
	TEXTURE_FILTER_ANISOTROPIC_4X 3
	TEXTURE_FILTER_ANISOTROPIC_8X 4
	TEXTURE_FILTER_ANISOTROPIC_16X 5 )
]
