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
		'TraceLogCallback',
		'TraceLogLevel',
		'Transform',
		'Vector2',
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

	pid_t := #int.
	uint16_t := #uint16.
	uint8_t := #uint8.
	int16_t := #int16.
	int64_t := #int64.
	uint32_t := #uint32.
	time_t := #int.
	uintptr_t := #'void *'.
	int32_t := #int32.
	int8_t := #int8.
	bool := #Boolean.
	uint64_t := #uint64.
	MouseCursor := RayMouseCursor.
	ShaderLocationIndex := RayShaderLocationIndex.
	Font := RayFont.
	BlendMode := RayBlendMode.
	SaveFileTextCallback := FFICallback.
	Matrix := RayMatrix.
	rAudioProcessor := RayRAudioProcessor.
	MaterialMap := RayMaterialMap.
	AutomationEvent := RayAutomationEvent.
	rAudioBuffer := RayRAudioBuffer.
	Vector2 := RayVector2.
	TextureCubemap := RayTexture.
	Shader := RayShader.
	VrStereoConfig := RayVrStereoConfig.
	NPatchInfo := RayNPatchInfo.
	Vector3 := RayVector3.
	ModelAnimation := RayModelAnimation.
	RenderTexture := RayRenderTexture.
	Rectangle := RayRectangle.
	PixelFormat := RayPixelFormat.
	Vector4 := RayVector4.
	NPatchLayout := RayNPatchLayout.
	AudioCallback := FFICallback.
	Model := RayModel.
	MaterialMapIndex := RayMaterialMapIndex.
	FilePathList := RayFilePathList.
	Camera3D := RayCamera3D.
	GamepadButton := RayGamepadButton.
	Mesh := RayMesh.
	int_4 := FFIArray ofType: 'int' size: 4.
	ShaderUniformDataType := RayShaderUniformDataType.
	BoundingBox := RayBoundingBox.
	AudioStream := RayAudioStream.
	TraceLogCallback := FFICallback.
	VrDeviceInfo := RayVrDeviceInfo.
	MouseButton := RayMouseButton.
	Texture2D := RayTexture.
	Material := RayMaterial.
	BoneInfo := RayBoneInfo.
	ShaderAttributeDataType := RayShaderAttributeDataType.
	GlyphInfo := RayGlyphInfo.
	Matrix_2 := FFIArray ofType: Matrix size: 2.
	LoadFileDataCallback := FFICallback.
	Quaternion := RayVector4.
	Ray := RayRay.
	CubemapLayout := RayCubemapLayout.
	ConfigFlags := RayConfigFlags.
	Camera2D := RayCamera2D.
	RenderTexture2D := RayRenderTexture.
	Wave := RayWave.
	float_2 := FFIArray ofType: 'float' size: 2.
	TextureWrap := RayTextureWrap.
	Gesture := RayGesture.
	Sound := RaySound.
	CameraProjection := RayCameraProjection.
	Texture := RayTexture.
	KeyboardKey := RayKeyboardKey.
	float_4 := FFIArray ofType: 'float' size: 4.
	TextureFilter := RayTextureFilter.
	Transform := RayTransform.
	Color := RayColor.
	LoadFileTextCallback := FFICallback.
	Camera := RayCamera3D.
	CameraMode := RayCameraMode.
	FontType := RayFontType.
	GamepadAxis := RayGamepadAxis.
	char_32 := FFIArray ofType: 'char' size: 32.
	Image := RayImage.
	AutomationEventList := RayAutomationEventList.
	TraceLogLevel := RayTraceLogLevel.
	Music := RayMusic
]
