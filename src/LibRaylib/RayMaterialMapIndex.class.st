Class {
	#name : 'RayMaterialMapIndex',
	#superclass : 'RayEnumeration',
	#classVars : [
		'MATERIAL_MAP_ALBEDO',
		'MATERIAL_MAP_BRDF',
		'MATERIAL_MAP_CUBEMAP',
		'MATERIAL_MAP_EMISSION',
		'MATERIAL_MAP_HEIGHT',
		'MATERIAL_MAP_IRRADIANCE',
		'MATERIAL_MAP_METALNESS',
		'MATERIAL_MAP_NORMAL',
		'MATERIAL_MAP_OCCLUSION',
		'MATERIAL_MAP_PREFILTER',
		'MATERIAL_MAP_ROUGHNESS'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_ALBEDO [
	"This method was automatically generated"
	^ MATERIAL_MAP_ALBEDO
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_BRDF [
	"This method was automatically generated"
	^ MATERIAL_MAP_BRDF
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_CUBEMAP [
	"This method was automatically generated"
	^ MATERIAL_MAP_CUBEMAP
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_EMISSION [
	"This method was automatically generated"
	^ MATERIAL_MAP_EMISSION
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_HEIGHT [
	"This method was automatically generated"
	^ MATERIAL_MAP_HEIGHT
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_IRRADIANCE [
	"This method was automatically generated"
	^ MATERIAL_MAP_IRRADIANCE
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_METALNESS [
	"This method was automatically generated"
	^ MATERIAL_MAP_METALNESS
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_NORMAL [
	"This method was automatically generated"
	^ MATERIAL_MAP_NORMAL
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_OCCLUSION [
	"This method was automatically generated"
	^ MATERIAL_MAP_OCCLUSION
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_PREFILTER [
	"This method was automatically generated"
	^ MATERIAL_MAP_PREFILTER
]

{ #category : 'accessing enum' }
RayMaterialMapIndex class >> MATERIAL_MAP_ROUGHNESS [
	"This method was automatically generated"
	^ MATERIAL_MAP_ROUGHNESS
]

{ #category : 'enum declaration' }
RayMaterialMapIndex class >> enumDecl [

	^ #(
	MATERIAL_MAP_ALBEDO 0
	MATERIAL_MAP_METALNESS 1
	MATERIAL_MAP_NORMAL 2
	MATERIAL_MAP_ROUGHNESS 3
	MATERIAL_MAP_OCCLUSION 4
	MATERIAL_MAP_EMISSION 5
	MATERIAL_MAP_HEIGHT 6
	MATERIAL_MAP_CUBEMAP 7
	MATERIAL_MAP_IRRADIANCE 8
	MATERIAL_MAP_PREFILTER 9
	MATERIAL_MAP_BRDF 10 )
]
