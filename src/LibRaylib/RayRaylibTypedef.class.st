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
		'RayCollision',
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
		'int16_t',
		'int32_t',
		'int64_t',
		'int8_t',
		'rAudioBuffer',
		'rAudioProcessor',
		'uint16_t',
		'uint32_t',
		'uint64_t',
		'uint8_t'
	],
	#category : 'LibRaylib-Library',
	#package : 'LibRaylib',
	#tag : 'Library'
}

{ #category : 'class initialization' }
RayRaylibTypedef class >> initialize [

	uint32_t := #uint32.
	bool := #Boolean.
	uint16_t := #uint16.
	int16_t := #int16.
	uint64_t := #uint64.
	int32_t := #int32.
	int8_t := #int8.
	uint8_t := #uint8.
	int64_t := #int64.
	MouseCursor := RayMouseCursor.
	ShaderLocationIndex := RayShaderLocationIndex.
	Font := RayFont.
	BlendMode := RayBlendMode.
	SaveFileTextCallback := FFICallback.
	Matrix := RayMatrix.
	RayCollision := RayRayCollision.
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
	LoadFileDataCallback := FFICallback.
	Quaternion := RayVector4.
	Ray := RayRay.
	CubemapLayout := RayCubemapLayout.
	ConfigFlags := RayConfigFlags.
	Camera2D := RayCamera2D.
	RenderTexture2D := RayRenderTexture.
	Wave := RayWave.
	TextureWrap := RayTextureWrap.
	Gesture := RayGesture.
	CameraProjection := RayCameraProjection.
	Sound := RaySound.
	Texture := RayTexture.
	KeyboardKey := RayKeyboardKey.
	TextureFilter := RayTextureFilter.
	Transform := RayTransform.
	Color := RayColor.
	LoadFileTextCallback := FFICallback.
	Camera := RayCamera3D.
	CameraMode := RayCameraMode.
	FontType := RayFontType.
	GamepadAxis := RayGamepadAxis.
	Image := RayImage.
	AutomationEventList := RayAutomationEventList.
	TraceLogLevel := RayTraceLogLevel.
	Music := RayMusic
]
