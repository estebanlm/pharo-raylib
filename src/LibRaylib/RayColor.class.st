Class {
	#name : 'RayColor',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_A',
		'OFFSET_B',
		'OFFSET_G',
		'OFFSET_R'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'constants' }
RayColor class >> black [

	^ self newR: 0 g: 0 b: 0 a: 255
]

{ #category : 'constants' }
RayColor class >> blue [

	^ self newR: 0 g: 121 b: 241 a: 255
]

{ #category : 'field definition' }
RayColor class >> fieldsDesc [

	^ #(
	uchar r;
	uchar g;
	uchar b;
	uchar a
	)
]

{ #category : 'constants' }
RayColor class >> gold [

	^ self newR: 255 g: 203 b: 0 a: 255
]

{ #category : 'constants' }
RayColor class >> green [

	^ self newR: 0 g: 200 b: 0 a: 255
]

{ #category : 'constants' }
RayColor class >> lightGray [

	^ self newR: 200 g: 200 b: 200 a: 255
]

{ #category : 'constants' }
RayColor class >> lime [

	^ self newR: 0 g: 158 b: 47 a: 255
]

{ #category : 'constants' }
RayColor class >> maroon [

	^ self newR: 190 g: 33 b: 55 a: 255
]

{ #category : 'instance creation' }
RayColor class >> newR: r g: g b: b a: a [

	^ self new 
		r: r; 
		g: g; 
		b: b; 
		a: a;
		yourself
]

{ #category : 'constants' }
RayColor class >> skyBlue [

	^ self newR: 102 g: 191 b: 255 a: 255
]

{ #category : 'constants' }
RayColor class >> white [

	^ self newR: 245 g: 245 b: 245 a: 255
]

{ #category : 'accessing - structure variables' }
RayColor >> a [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_A
]

{ #category : 'accessing - structure variables' }
RayColor >> a: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_A put: anObject
]

{ #category : 'accessing - structure variables' }
RayColor >> b [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_B
]

{ #category : 'accessing - structure variables' }
RayColor >> b: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_B put: anObject
]

{ #category : 'accessing - structure variables' }
RayColor >> g [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_G
]

{ #category : 'accessing - structure variables' }
RayColor >> g: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_G put: anObject
]

{ #category : 'accessing - structure variables' }
RayColor >> r [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_R
]

{ #category : 'accessing - structure variables' }
RayColor >> r: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_R put: anObject
]
