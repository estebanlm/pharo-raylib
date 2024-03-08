Class {
	#name : 'RayShaderAttributeDataType',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'SHADER_ATTRIB_FLOAT',
		'SHADER_ATTRIB_VEC2',
		'SHADER_ATTRIB_VEC3',
		'SHADER_ATTRIB_VEC4'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayShaderAttributeDataType class >> SHADER_ATTRIB_FLOAT [
	"This method was automatically generated"
	^ SHADER_ATTRIB_FLOAT
]

{ #category : 'accessing enum' }
RayShaderAttributeDataType class >> SHADER_ATTRIB_VEC2 [
	"This method was automatically generated"
	^ SHADER_ATTRIB_VEC2
]

{ #category : 'accessing enum' }
RayShaderAttributeDataType class >> SHADER_ATTRIB_VEC3 [
	"This method was automatically generated"
	^ SHADER_ATTRIB_VEC3
]

{ #category : 'accessing enum' }
RayShaderAttributeDataType class >> SHADER_ATTRIB_VEC4 [
	"This method was automatically generated"
	^ SHADER_ATTRIB_VEC4
]

{ #category : 'enum declaration' }
RayShaderAttributeDataType class >> enumDecl [

	^ #(
	SHADER_ATTRIB_FLOAT 0
	SHADER_ATTRIB_VEC2 1
	SHADER_ATTRIB_VEC3 2
	SHADER_ATTRIB_VEC4 3 )
]
