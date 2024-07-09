Class {
	#name : 'RayVrStereoConfig',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_LEFTLENSCENTER',
		'OFFSET_LEFTSCREENCENTER',
		'OFFSET_PROJECTION',
		'OFFSET_RIGHTLENSCENTER',
		'OFFSET_RIGHTSCREENCENTER',
		'OFFSET_SCALE',
		'OFFSET_SCALEIN',
		'OFFSET_VIEWOFFSET'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayVrStereoConfig class >> fieldsDesc [

	^ #(
	Matrix_2 projection;
	Matrix_2 viewOffset;
	float_2 leftLensCenter;
	float_2 rightLensCenter;
	float_2 leftScreenCenter;
	float_2 rightScreenCenter;
	float_2 scale;
	float_2 scaleIn
	)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> leftLensCenter [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_LEFTLENSCENTER to: OFFSET_LEFTLENSCENTER + 7)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> leftLensCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LEFTLENSCENTER to: OFFSET_LEFTLENSCENTER + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> leftScreenCenter [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_LEFTSCREENCENTER to: OFFSET_LEFTSCREENCENTER + 7)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> leftScreenCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LEFTSCREENCENTER to: OFFSET_LEFTSCREENCENTER + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> projection [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIExternalStructureType size: 2) fromHandle: (handle copyFrom: OFFSET_PROJECTION to: OFFSET_PROJECTION + 127)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> projection: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PROJECTION to: OFFSET_PROJECTION + 127 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> rightLensCenter [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_RIGHTLENSCENTER to: OFFSET_RIGHTLENSCENTER + 7)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> rightLensCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_RIGHTLENSCENTER to: OFFSET_RIGHTLENSCENTER + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> rightScreenCenter [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_RIGHTSCREENCENTER to: OFFSET_RIGHTSCREENCENTER + 7)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> rightScreenCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_RIGHTSCREENCENTER to: OFFSET_RIGHTSCREENCENTER + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> scale [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_SCALE to: OFFSET_SCALE + 7)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> scale: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_SCALE to: OFFSET_SCALE + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> scaleIn [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_SCALEIN to: OFFSET_SCALEIN + 7)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> scaleIn: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_SCALEIN to: OFFSET_SCALEIN + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> viewOffset [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIExternalStructureType size: 2) fromHandle: (handle copyFrom: OFFSET_VIEWOFFSET to: OFFSET_VIEWOFFSET + 127)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> viewOffset: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_VIEWOFFSET to: OFFSET_VIEWOFFSET + 127 with: anObject getHandle startingAt: 1
]
