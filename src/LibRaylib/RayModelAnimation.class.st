Class {
	#name : 'RayModelAnimation',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_BONECOUNT',
		'OFFSET_BONES',
		'OFFSET_FRAMECOUNT',
		'OFFSET_FRAMEPOSES',
		'OFFSET_NAME'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayModelAnimation class >> fieldsDesc [

	^ #(
	int boneCount;
	int frameCount;
	BoneInfo* bones;
	Transform** framePoses;
	char_32 name
	)
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> boneCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BONECOUNT
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> boneCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BONECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> bones [
	"This method was automatically generated"
	^RayBoneInfo fromHandle: (handle pointerAt: OFFSET_BONES)
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> bones: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> frameCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FRAMECOUNT
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> frameCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> framePoses [
	"This method was automatically generated"
	^RayTransform fromHandle: (handle pointerAt: OFFSET_FRAMEPOSES)
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> framePoses: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FRAMEPOSES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> name [
	"This method was automatically generated"
	^(FFIArray ofType: #FFICharacterType size: 32) fromHandle: (handle copyFrom: OFFSET_NAME to: OFFSET_NAME + 31)
]

{ #category : 'accessing - structure variables' }
RayModelAnimation >> name: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_NAME to: OFFSET_NAME + 31 with: anObject getHandle startingAt: 1
]
