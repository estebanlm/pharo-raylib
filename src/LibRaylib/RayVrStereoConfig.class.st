Class {
	#name : 'RayVrStereoConfig',
	#superclass : 'RayStructure',
	#classTraits : '{} + TraitedClass',
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
	Matrix projection;
	Matrix viewOffset;
	float leftLensCenter;
	float rightLensCenter;
	float leftScreenCenter;
	float rightScreenCenter;
	float scale;
	float scaleIn
	)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> leftLensCenter [
	"This method was automatically generated"
	^handle floatAt: OFFSET_LEFTLENSCENTER
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> leftLensCenter: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_LEFTLENSCENTER put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> leftScreenCenter [
	"This method was automatically generated"
	^handle floatAt: OFFSET_LEFTSCREENCENTER
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> leftScreenCenter: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_LEFTSCREENCENTER put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> projection [
	"This method was automatically generated"
	^ RayMatrix fromHandle: (handle referenceStructAt: OFFSET_PROJECTION length: RayMatrix byteSize)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> projection: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_PROJECTION put: anObject getHandle length: RayMatrix byteSize
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> rightLensCenter [
	"This method was automatically generated"
	^handle floatAt: OFFSET_RIGHTLENSCENTER
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> rightLensCenter: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_RIGHTLENSCENTER put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> rightScreenCenter [
	"This method was automatically generated"
	^handle floatAt: OFFSET_RIGHTSCREENCENTER
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> rightScreenCenter: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_RIGHTSCREENCENTER put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> scale [
	"This method was automatically generated"
	^handle floatAt: OFFSET_SCALE
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> scale: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_SCALE put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> scaleIn [
	"This method was automatically generated"
	^handle floatAt: OFFSET_SCALEIN
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> scaleIn: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_SCALEIN put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> viewOffset [
	"This method was automatically generated"
	^ RayMatrix fromHandle: (handle referenceStructAt: OFFSET_VIEWOFFSET length: RayMatrix byteSize)
]

{ #category : 'accessing - structure variables' }
RayVrStereoConfig >> viewOffset: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_VIEWOFFSET put: anObject getHandle length: RayMatrix byteSize
]
