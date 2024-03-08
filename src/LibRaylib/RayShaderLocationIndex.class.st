Class {
	#name : 'RayShaderLocationIndex',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'SHADER_LOC_COLOR_AMBIENT',
		'SHADER_LOC_COLOR_DIFFUSE',
		'SHADER_LOC_COLOR_SPECULAR',
		'SHADER_LOC_MAP_ALBEDO',
		'SHADER_LOC_MAP_BRDF',
		'SHADER_LOC_MAP_CUBEMAP',
		'SHADER_LOC_MAP_EMISSION',
		'SHADER_LOC_MAP_HEIGHT',
		'SHADER_LOC_MAP_IRRADIANCE',
		'SHADER_LOC_MAP_METALNESS',
		'SHADER_LOC_MAP_NORMAL',
		'SHADER_LOC_MAP_OCCLUSION',
		'SHADER_LOC_MAP_PREFILTER',
		'SHADER_LOC_MAP_ROUGHNESS',
		'SHADER_LOC_MATRIX_MODEL',
		'SHADER_LOC_MATRIX_MVP',
		'SHADER_LOC_MATRIX_NORMAL',
		'SHADER_LOC_MATRIX_PROJECTION',
		'SHADER_LOC_MATRIX_VIEW',
		'SHADER_LOC_VECTOR_VIEW',
		'SHADER_LOC_VERTEX_COLOR',
		'SHADER_LOC_VERTEX_NORMAL',
		'SHADER_LOC_VERTEX_POSITION',
		'SHADER_LOC_VERTEX_TANGENT',
		'SHADER_LOC_VERTEX_TEXCOORD01',
		'SHADER_LOC_VERTEX_TEXCOORD02'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_COLOR_AMBIENT [
	"This method was automatically generated"
	^ SHADER_LOC_COLOR_AMBIENT
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_COLOR_DIFFUSE [
	"This method was automatically generated"
	^ SHADER_LOC_COLOR_DIFFUSE
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_COLOR_SPECULAR [
	"This method was automatically generated"
	^ SHADER_LOC_COLOR_SPECULAR
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_ALBEDO [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_ALBEDO
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_BRDF [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_BRDF
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_CUBEMAP [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_CUBEMAP
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_EMISSION [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_EMISSION
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_HEIGHT [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_HEIGHT
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_IRRADIANCE [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_IRRADIANCE
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_METALNESS [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_METALNESS
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_NORMAL [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_NORMAL
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_OCCLUSION [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_OCCLUSION
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_PREFILTER [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_PREFILTER
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MAP_ROUGHNESS [
	"This method was automatically generated"
	^ SHADER_LOC_MAP_ROUGHNESS
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MATRIX_MODEL [
	"This method was automatically generated"
	^ SHADER_LOC_MATRIX_MODEL
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MATRIX_MVP [
	"This method was automatically generated"
	^ SHADER_LOC_MATRIX_MVP
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MATRIX_NORMAL [
	"This method was automatically generated"
	^ SHADER_LOC_MATRIX_NORMAL
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MATRIX_PROJECTION [
	"This method was automatically generated"
	^ SHADER_LOC_MATRIX_PROJECTION
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_MATRIX_VIEW [
	"This method was automatically generated"
	^ SHADER_LOC_MATRIX_VIEW
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_VECTOR_VIEW [
	"This method was automatically generated"
	^ SHADER_LOC_VECTOR_VIEW
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_VERTEX_COLOR [
	"This method was automatically generated"
	^ SHADER_LOC_VERTEX_COLOR
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_VERTEX_NORMAL [
	"This method was automatically generated"
	^ SHADER_LOC_VERTEX_NORMAL
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_VERTEX_POSITION [
	"This method was automatically generated"
	^ SHADER_LOC_VERTEX_POSITION
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_VERTEX_TANGENT [
	"This method was automatically generated"
	^ SHADER_LOC_VERTEX_TANGENT
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_VERTEX_TEXCOORD01 [
	"This method was automatically generated"
	^ SHADER_LOC_VERTEX_TEXCOORD01
]

{ #category : 'accessing enum' }
RayShaderLocationIndex class >> SHADER_LOC_VERTEX_TEXCOORD02 [
	"This method was automatically generated"
	^ SHADER_LOC_VERTEX_TEXCOORD02
]

{ #category : 'enum declaration' }
RayShaderLocationIndex class >> enumDecl [

	^ #(
	SHADER_LOC_VERTEX_POSITION 0
	SHADER_LOC_VERTEX_TEXCOORD01 1
	SHADER_LOC_VERTEX_TEXCOORD02 2
	SHADER_LOC_VERTEX_NORMAL 3
	SHADER_LOC_VERTEX_TANGENT 4
	SHADER_LOC_VERTEX_COLOR 5
	SHADER_LOC_MATRIX_MVP 6
	SHADER_LOC_MATRIX_VIEW 7
	SHADER_LOC_MATRIX_PROJECTION 8
	SHADER_LOC_MATRIX_MODEL 9
	SHADER_LOC_MATRIX_NORMAL 10
	SHADER_LOC_VECTOR_VIEW 11
	SHADER_LOC_COLOR_DIFFUSE 12
	SHADER_LOC_COLOR_SPECULAR 13
	SHADER_LOC_COLOR_AMBIENT 14
	SHADER_LOC_MAP_ALBEDO 15
	SHADER_LOC_MAP_METALNESS 16
	SHADER_LOC_MAP_NORMAL 17
	SHADER_LOC_MAP_ROUGHNESS 18
	SHADER_LOC_MAP_OCCLUSION 19
	SHADER_LOC_MAP_EMISSION 20
	SHADER_LOC_MAP_HEIGHT 21
	SHADER_LOC_MAP_CUBEMAP 22
	SHADER_LOC_MAP_IRRADIANCE 23
	SHADER_LOC_MAP_PREFILTER 24
	SHADER_LOC_MAP_BRDF 25 )
]
