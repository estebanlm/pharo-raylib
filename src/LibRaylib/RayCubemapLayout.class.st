Class {
	#name : 'RayCubemapLayout',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'CUBEMAP_LAYOUT_AUTO_DETECT',
		'CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE',
		'CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR',
		'CUBEMAP_LAYOUT_LINE_HORIZONTAL',
		'CUBEMAP_LAYOUT_LINE_VERTICAL',
		'CUBEMAP_LAYOUT_PANORAMA'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayCubemapLayout class >> CUBEMAP_LAYOUT_AUTO_DETECT [
	"This method was automatically generated"
	^ CUBEMAP_LAYOUT_AUTO_DETECT
]

{ #category : 'accessing enum' }
RayCubemapLayout class >> CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE [
	"This method was automatically generated"
	^ CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE
]

{ #category : 'accessing enum' }
RayCubemapLayout class >> CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR [
	"This method was automatically generated"
	^ CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR
]

{ #category : 'accessing enum' }
RayCubemapLayout class >> CUBEMAP_LAYOUT_LINE_HORIZONTAL [
	"This method was automatically generated"
	^ CUBEMAP_LAYOUT_LINE_HORIZONTAL
]

{ #category : 'accessing enum' }
RayCubemapLayout class >> CUBEMAP_LAYOUT_LINE_VERTICAL [
	"This method was automatically generated"
	^ CUBEMAP_LAYOUT_LINE_VERTICAL
]

{ #category : 'accessing enum' }
RayCubemapLayout class >> CUBEMAP_LAYOUT_PANORAMA [
	"This method was automatically generated"
	^ CUBEMAP_LAYOUT_PANORAMA
]

{ #category : 'enum declaration' }
RayCubemapLayout class >> enumDecl [

	^ #(
	CUBEMAP_LAYOUT_AUTO_DETECT 0
	CUBEMAP_LAYOUT_LINE_VERTICAL 1
	CUBEMAP_LAYOUT_LINE_HORIZONTAL 2
	CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR 3
	CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE 4
	CUBEMAP_LAYOUT_PANORAMA 5 )
]
