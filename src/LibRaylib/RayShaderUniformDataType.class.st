Class {
	#name : 'RayShaderUniformDataType',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'SHADER_UNIFORM_FLOAT',
		'SHADER_UNIFORM_INT',
		'SHADER_UNIFORM_IVEC2',
		'SHADER_UNIFORM_IVEC3',
		'SHADER_UNIFORM_IVEC4',
		'SHADER_UNIFORM_SAMPLER2D',
		'SHADER_UNIFORM_VEC2',
		'SHADER_UNIFORM_VEC3',
		'SHADER_UNIFORM_VEC4'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_FLOAT [
	"This method was automatically generated"
	^ SHADER_UNIFORM_FLOAT
]

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_INT [
	"This method was automatically generated"
	^ SHADER_UNIFORM_INT
]

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_IVEC2 [
	"This method was automatically generated"
	^ SHADER_UNIFORM_IVEC2
]

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_IVEC3 [
	"This method was automatically generated"
	^ SHADER_UNIFORM_IVEC3
]

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_IVEC4 [
	"This method was automatically generated"
	^ SHADER_UNIFORM_IVEC4
]

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_SAMPLER2D [
	"This method was automatically generated"
	^ SHADER_UNIFORM_SAMPLER2D
]

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_VEC2 [
	"This method was automatically generated"
	^ SHADER_UNIFORM_VEC2
]

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_VEC3 [
	"This method was automatically generated"
	^ SHADER_UNIFORM_VEC3
]

{ #category : 'accessing enum' }
RayShaderUniformDataType class >> SHADER_UNIFORM_VEC4 [
	"This method was automatically generated"
	^ SHADER_UNIFORM_VEC4
]

{ #category : 'enum declaration' }
RayShaderUniformDataType class >> enumDecl [

	^ #(
	SHADER_UNIFORM_FLOAT 0
	SHADER_UNIFORM_VEC2 1
	SHADER_UNIFORM_VEC3 2
	SHADER_UNIFORM_VEC4 3
	SHADER_UNIFORM_INT 4
	SHADER_UNIFORM_IVEC2 5
	SHADER_UNIFORM_IVEC3 6
	SHADER_UNIFORM_IVEC4 7
	SHADER_UNIFORM_SAMPLER2D 8 )
]
