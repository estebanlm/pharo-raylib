Class {
	#name : 'RayRaylibTypedef',
	#superclass : 'SharedPool',
	#classVars : [
		'AudioCallback',
		'AudioStream',
		'AutomationEvent',
		'AutomationEventList',
		'BlendMode',
		'BoneInfo',
		'BoundingBox',
		'Camera',
		'Camera2D',
		'Camera3D',
		'CameraMode',
		'CameraProjection',
		'Color',
		'ConfigFlags',
		'CubemapLayout',
		'FilePathList',
		'Font',
		'FontType',
		'GamepadAxis',
		'GamepadButton',
		'Gesture',
		'GestureEvent',
		'GlyphInfo',
		'Image',
		'KeyboardKey',
		'LoadFileDataCallback',
		'LoadFileTextCallback',
		'Material',
		'MaterialMap',
		'MaterialMapIndex',
		'Matrix',
		'Matrix_2',
		'Mesh',
		'Model',
		'ModelAnimation',
		'MouseButton',
		'MouseCursor',
		'Music',
		'NPatchInfo',
		'NPatchLayout',
		'PixelFormat',
		'Quaternion',
		'Ray',
		'Rectangle',
		'RenderTexture',
		'RenderTexture2D',
		'SaveFileTextCallback',
		'Shader',
		'ShaderAttributeDataType',
		'ShaderLocationIndex',
		'ShaderUniformDataType',
		'Sound',
		'Texture',
		'Texture2D',
		'TextureCubemap',
		'TextureFilter',
		'TextureWrap',
		'TouchAction',
		'TraceLogCallback',
		'TraceLogLevel',
		'Transform',
		'Vector2',
		'Vector2_8',
		'Vector3',
		'Vector4',
		'VrDeviceInfo',
		'VrStereoConfig',
		'Wave',
		'bool',
		'char_32',
		'float_2',
		'float_4',
		'int16_t',
		'int32_t',
		'int64_t',
		'int8_t',
		'int_4',
		'int_8',
		'pid_t',
		'rAudioBuffer',
		'rAudioProcessor',
		'time_t',
		'uint16_t',
		'uint32_t',
		'uint64_t',
		'uint8_t',
		'uintptr_t'
	],
	#category : 'LibRaylib-Library',
	#package : 'LibRaylib',
	#tag : 'Library'
}

{ #category : 'class initialization' }
RayRaylibTypedef class >> initialize [

	uint16_t := #uint16.
	uint64_t := #uint64.
	uint8_t := #uint8.
	int32_t := #int32.
	uint32_t := #uint32.
	time_t := #int.
	pid_t := #int.
	bool := #Boolean.
	int8_t := #int8.
	int16_t := #int16.
	int64_t := #int64.
	uintptr_t := #'void *'.
	Vector2 := RayVector2.
	TouchAction := RayTouchAction.
	int_8 := FFIArray ofType: 'int' size: 8.
	Vector2_8 := FFIArray ofType: Vector2 size: 8.
	GestureEvent := RayGestureEvent.
	Vector3 := RayVector3.
	Vector4 := RayVector4.
	Quaternion := RayVector4.
	Matrix := RayMatrix.
	Color := RayColor.
	Rectangle := RayRectangle.
	Image := RayImage.
	Texture := RayTexture.
	Texture2D := RayTexture.
	TextureCubemap := RayTexture.
	RenderTexture := RayRenderTexture.
	RenderTexture2D := RayRenderTexture.
	NPatchInfo := RayNPatchInfo.
	GlyphInfo := RayGlyphInfo.
	Font := RayFont.
	Camera3D := RayCamera3D.
	Camera := RayCamera3D.
	Camera2D := RayCamera2D.
	Mesh := RayMesh.
	Shader := RayShader.
	MaterialMap := RayMaterialMap.
	float_4 := FFIArray ofType: 'float' size: 4.
	Material := RayMaterial.
	Transform := RayTransform.
	char_32 := FFIArray ofType: 'char' size: 32.
	BoneInfo := RayBoneInfo.
	Model := RayModel.
	ModelAnimation := RayModelAnimation.
	Ray := RayRay.
	BoundingBox := RayBoundingBox.
	Wave := RayWave.
	rAudioBuffer := RayRAudioBuffer.
	rAudioProcessor := RayRAudioProcessor.
	AudioStream := RayAudioStream.
	Sound := RaySound.
	Music := RayMusic.
	VrDeviceInfo := RayVrDeviceInfo.
	Matrix_2 := FFIArray ofType: Matrix size: 2.
	float_2 := FFIArray ofType: 'float' size: 2.
	VrStereoConfig := RayVrStereoConfig.
	FilePathList := RayFilePathList.
	int_4 := FFIArray ofType: 'int' size: 4.
	AutomationEvent := RayAutomationEvent.
	AutomationEventList := RayAutomationEventList.
	ConfigFlags := RayConfigFlags.
	TraceLogLevel := RayTraceLogLevel.
	KeyboardKey := RayKeyboardKey.
	MouseButton := RayMouseButton.
	MouseCursor := RayMouseCursor.
	GamepadButton := RayGamepadButton.
	GamepadAxis := RayGamepadAxis.
	MaterialMapIndex := RayMaterialMapIndex.
	ShaderLocationIndex := RayShaderLocationIndex.
	ShaderUniformDataType := RayShaderUniformDataType.
	ShaderAttributeDataType := RayShaderAttributeDataType.
	PixelFormat := RayPixelFormat.
	TextureFilter := RayTextureFilter.
	TextureWrap := RayTextureWrap.
	CubemapLayout := RayCubemapLayout.
	FontType := RayFontType.
	BlendMode := RayBlendMode.
	Gesture := RayGesture.
	CameraMode := RayCameraMode.
	CameraProjection := RayCameraProjection.
	NPatchLayout := RayNPatchLayout.
	TraceLogCallback := FFICallback.
	LoadFileDataCallback := FFICallback.
	LoadFileTextCallback := FFICallback.
	SaveFileTextCallback := FFICallback.
	AudioCallback := FFICallback
]
