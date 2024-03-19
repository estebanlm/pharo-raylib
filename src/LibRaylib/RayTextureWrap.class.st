Class {
	#name : 'RayTextureWrap',
	#superclass : 'RayEnumeration',
	#classVars : [
		'TEXTURE_WRAP_CLAMP',
		'TEXTURE_WRAP_MIRROR_CLAMP',
		'TEXTURE_WRAP_MIRROR_REPEAT',
		'TEXTURE_WRAP_REPEAT'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayTextureWrap class >> TEXTURE_WRAP_CLAMP [
	"This method was automatically generated"
	^ TEXTURE_WRAP_CLAMP
]

{ #category : 'accessing enum' }
RayTextureWrap class >> TEXTURE_WRAP_MIRROR_CLAMP [
	"This method was automatically generated"
	^ TEXTURE_WRAP_MIRROR_CLAMP
]

{ #category : 'accessing enum' }
RayTextureWrap class >> TEXTURE_WRAP_MIRROR_REPEAT [
	"This method was automatically generated"
	^ TEXTURE_WRAP_MIRROR_REPEAT
]

{ #category : 'accessing enum' }
RayTextureWrap class >> TEXTURE_WRAP_REPEAT [
	"This method was automatically generated"
	^ TEXTURE_WRAP_REPEAT
]

{ #category : 'enum declaration' }
RayTextureWrap class >> enumDecl [

	^ #(
	TEXTURE_WRAP_REPEAT 0
	TEXTURE_WRAP_CLAMP 1
	TEXTURE_WRAP_MIRROR_REPEAT 2
	TEXTURE_WRAP_MIRROR_CLAMP 3 )
]
