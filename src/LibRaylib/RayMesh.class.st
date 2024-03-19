Class {
	#name : 'RayMesh',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_ANIMNORMALS',
		'OFFSET_ANIMVERTICES',
		'OFFSET_BONEIDS',
		'OFFSET_BONEWEIGHTS',
		'OFFSET_COLORS',
		'OFFSET_INDICES',
		'OFFSET_NORMALS',
		'OFFSET_TANGENTS',
		'OFFSET_TEXCOORDS',
		'OFFSET_TEXCOORDS2',
		'OFFSET_TRIANGLECOUNT',
		'OFFSET_VAOID',
		'OFFSET_VBOID',
		'OFFSET_VERTEXCOUNT',
		'OFFSET_VERTICES'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayMesh class >> fieldsDesc [

	^ #(
	int vertexCount;
	int triangleCount;
	float* vertices;
	float* texcoords;
	float* texcoords2;
	float* normals;
	float* tangents;
	uchar* colors;
	ushort* indices;
	float* animVertices;
	float* animNormals;
	uchar* boneIds;
	float* boneWeights;
	uint vaoId;
	uint* vboId
	)
]

{ #category : 'accessing - structure variables' }
RayMesh >> animNormals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMNORMALS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> animNormals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMNORMALS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> animVertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMVERTICES) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> animVertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMVERTICES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> boneIds [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEIDS) type: ExternalType byte asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> boneIds: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEIDS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> boneWeights [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEWEIGHTS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> boneWeights: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEWEIGHTS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> colors [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_COLORS) type: ExternalType byte asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> colors: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_COLORS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> indices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_INDICES) type: ExternalType ushort asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> indices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_INDICES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> normals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NORMALS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> normals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NORMALS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> tangents [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TANGENTS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> tangents: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TANGENTS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> texcoords [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> texcoords2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS2) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> texcoords2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS2 put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> texcoords: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> triangleCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TRIANGLECOUNT
]

{ #category : 'accessing - structure variables' }
RayMesh >> triangleCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TRIANGLECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayMesh >> vaoId [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_VAOID
]

{ #category : 'accessing - structure variables' }
RayMesh >> vaoId: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VAOID put: anObject
]

{ #category : 'accessing - structure variables' }
RayMesh >> vboId [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VBOID) type: ExternalType ulong asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> vboId: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VBOID put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayMesh >> vertexCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VERTEXCOUNT
]

{ #category : 'accessing - structure variables' }
RayMesh >> vertexCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VERTEXCOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayMesh >> vertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VERTICES) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RayMesh >> vertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VERTICES put: anObject getHandle.
]
