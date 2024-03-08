Class {
	#name : 'RayModel',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'OFFSET_BINDPOSE',
		'OFFSET_BONECOUNT',
		'OFFSET_BONES',
		'OFFSET_MATERIALCOUNT',
		'OFFSET_MATERIALS',
		'OFFSET_MESHCOUNT',
		'OFFSET_MESHES',
		'OFFSET_MESHMATERIAL',
		'OFFSET_TRANSFORM'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayModel class >> fieldsDesc [

	^ #(
	Matrix transform;
	int meshCount;
	int materialCount;
	Mesh* meshes;
	Material* materials;
	int* meshMaterial;
	int boneCount;
	BoneInfo* bones;
	Transform* bindPose
	)
]

{ #category : 'accessing - structure variables' }
RayModel >> bindPose [
	"This method was automatically generated"
	^RayTransform fromHandle: (handle pointerAt: OFFSET_BINDPOSE)
]

{ #category : 'accessing - structure variables' }
RayModel >> bindPose: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BINDPOSE put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayModel >> boneCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BONECOUNT
]

{ #category : 'accessing - structure variables' }
RayModel >> boneCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BONECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayModel >> bones [
	"This method was automatically generated"
	^RayBoneInfo fromHandle: (handle pointerAt: OFFSET_BONES)
]

{ #category : 'accessing - structure variables' }
RayModel >> bones: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayModel >> materialCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MATERIALCOUNT
]

{ #category : 'accessing - structure variables' }
RayModel >> materialCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MATERIALCOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayModel >> materials [
	"This method was automatically generated"
	^RayMaterial fromHandle: (handle pointerAt: OFFSET_MATERIALS)
]

{ #category : 'accessing - structure variables' }
RayModel >> materials: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MATERIALS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayModel >> meshCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MESHCOUNT
]

{ #category : 'accessing - structure variables' }
RayModel >> meshCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MESHCOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayModel >> meshMaterial [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MESHMATERIAL) type: ExternalType long asPointerType
]

{ #category : 'accessing - structure variables' }
RayModel >> meshMaterial: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MESHMATERIAL put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayModel >> meshes [
	"This method was automatically generated"
	^RayMesh fromHandle: (handle pointerAt: OFFSET_MESHES)
]

{ #category : 'accessing - structure variables' }
RayModel >> meshes: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MESHES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayModel >> transform [
	"This method was automatically generated"
	^ RayMatrix fromHandle: (handle referenceStructAt: OFFSET_TRANSFORM length: RayMatrix byteSize)
]

{ #category : 'accessing - structure variables' }
RayModel >> transform: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TRANSFORM put: anObject getHandle length: RayMatrix byteSize
]
