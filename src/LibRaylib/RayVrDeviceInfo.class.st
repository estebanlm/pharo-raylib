Class {
	#name : 'RayVrDeviceInfo',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_CHROMAABCORRECTION',
		'OFFSET_EYETOSCREENDISTANCE',
		'OFFSET_HRESOLUTION',
		'OFFSET_HSCREENSIZE',
		'OFFSET_INTERPUPILLARYDISTANCE',
		'OFFSET_LENSDISTORTIONVALUES',
		'OFFSET_LENSSEPARATIONDISTANCE',
		'OFFSET_VRESOLUTION',
		'OFFSET_VSCREENSIZE'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayVrDeviceInfo class >> fieldsDesc [

	^ #(
	int hResolution;
	int vResolution;
	float hScreenSize;
	float vScreenSize;
	float eyeToScreenDistance;
	float lensSeparationDistance;
	float interpupillaryDistance;
	float lensDistortionValues;
	float chromaAbCorrection
	)
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> chromaAbCorrection [
	"This method was automatically generated"
	^handle floatAt: OFFSET_CHROMAABCORRECTION
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> chromaAbCorrection: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_CHROMAABCORRECTION put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> eyeToScreenDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_EYETOSCREENDISTANCE
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> eyeToScreenDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_EYETOSCREENDISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> hResolution [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HRESOLUTION
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> hResolution: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HRESOLUTION put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> hScreenSize [
	"This method was automatically generated"
	^handle floatAt: OFFSET_HSCREENSIZE
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> hScreenSize: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_HSCREENSIZE put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> interpupillaryDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_INTERPUPILLARYDISTANCE
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> interpupillaryDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_INTERPUPILLARYDISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> lensDistortionValues [
	"This method was automatically generated"
	^handle floatAt: OFFSET_LENSDISTORTIONVALUES
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> lensDistortionValues: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_LENSDISTORTIONVALUES put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> lensSeparationDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_LENSSEPARATIONDISTANCE
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> lensSeparationDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_LENSSEPARATIONDISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> vResolution [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VRESOLUTION
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> vResolution: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VRESOLUTION put: anObject
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> vScreenSize [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VSCREENSIZE
]

{ #category : 'accessing - structure variables' }
RayVrDeviceInfo >> vScreenSize: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VSCREENSIZE put: anObject
]
