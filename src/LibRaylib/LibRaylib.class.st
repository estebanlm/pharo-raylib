"
This library is generated using pharo-cig, and this script: 

```
CigCLibraryGenerator new
	prefix: 'Ray';
	bindingsName: 'raylib';
	import: '/home/esteban/dev/vm/raylib/src/raylib.h';
	cIncludePath: '/home/esteban/dev/vm/raylib/src';
	cLib: 'raylib';
	withClasses;
	useMainThread;
	generate.
```
"
Class {
	#name : 'LibRaylib',
	#superclass : 'FFILibrary',
	#pools : [
		'RayRaylibTypedef'
	],
	#category : 'LibRaylib-Library',
	#package : 'LibRaylib',
	#tag : 'Library'
}

{ #category : 'examples' }
LibRaylib class >> example [
	| ray |

	ray := self uniqueInstance.
	
	ray initWindowWidth: 800 height: 450 title: 'Raylib [core] example - basic window'.
	ray setTargetFPS: 60.
	[ ray windowShouldClose = 0 ] whileTrue: [ 
		ray drawDo: [ 
			ray clearBackground: RayColor white.
			ray 
				drawText: 'Congrats! You created your first window!' 
				posX: 190
				posY: 200
				fontSize: 20 
				color: RayColor lightGray.
			ray drawFPSPosX: 10 posY: 10 ] ].

	ray closeWindow
]

{ #category : 'examples' }
LibRaylib class >> example3d [
	| ray camera cameraMode numColumns columns DEG2RAD KEY_ONE KEY_TWO KEY_THREE KEY_FOUR KEY_P |

	ray := self uniqueInstance.
	
	DEG2RAD := Float pi / 180.0.
	
	KEY_ONE := 49.
	KEY_TWO := 50.
	KEY_THREE := 51.
	KEY_FOUR := 52.
	KEY_P := 80.
	
	ray initWindowWidth: 800 height: 450 title: 'Raylib [core] example - 3d camera first person'.
	
	camera := RayCamera3D new.
	camera position: (RayVector3 newX: 0.0 y: 2.0 z: 4.0).
	camera target: (RayVector3 newX: 0.0 y: 2.0 z: 0.0).
	camera up: (RayVector3 newX: 0.0 y: 1.0 z: 0.0).
	camera fovy: 60.0.
	camera projection: RayCameraProjection CAMERA_PERSPECTIVE value. 

	cameraMode := RayCameraMode CAMERA_FIRST_PERSON.

	numColumns := 20.
	columns := Array streamContents: [ :stream |
		numColumns timesRepeat: [ 
			| height |
			height := ray getRandomValueMin: 1 max: 12.
			stream nextPut: { 
				height.
				RayVector3 
					newX: (ray getRandomValueMin: -15 max: 15) 
					y: (height / 2.0) 
					z: (ray getRandomValueMin: -15 max: 15).
				RayColor 
					newR: (ray getRandomValueMin: 20 max: 255)
					g: (ray getRandomValueMin: 10 max: 55) 
					b: 30 
					a: 255 } ] ].
	
	"ray disableCursor."
	ray setTargetFPS: 60.
	
	[ ray windowShouldClose = 0 ] whileTrue: [
		((ray isKeyPressed: KEY_ONE) ~= 0) ifTrue: [
			cameraMode := RayCameraMode CAMERA_FREE.
			camera up: (RayVector3 newX: 0.0 y: 1.0 z: 0.0) ].
		((ray isKeyPressed: KEY_TWO) ~= 0) ifTrue: [
			cameraMode := RayCameraMode CAMERA_FIRST_PERSON.
			camera up: (RayVector3 newX: 0.0 y: 1.0 z: 0.0) ].
		((ray isKeyPressed: KEY_THREE) ~= 0) ifTrue: [
			cameraMode := RayCameraMode CAMERA_THIRD_PERSON.
			camera up: (RayVector3 newX: 0.0 y: 1.0 z: 0.0) ].
		((ray isKeyPressed: KEY_FOUR) ~= 0) ifTrue: [
			cameraMode := RayCameraMode CAMERA_ORBITAL.
			camera up: (RayVector3 newX: 0.0 y: 1.0 z: 0.0) ].
		((ray isKeyPressed: KEY_P) ~= 0) ifTrue: [
			cameraMode := RayCameraMode CAMERA_THIRD_PERSON.
			(camera projection = (RayCameraProjection CAMERA_PERSPECTIVE value))
				ifTrue: [ 
					camera position: (RayVector3 newX: 0.0 y: 2.0 z: -100.0).
					camera target: (RayVector3 newX: 0.0 y: 2.0 z: 0.0).
					camera up: (RayVector3 newX: 0.0 y: 1.0 z: 0.0).
					camera projection: RayCameraProjection CAMERA_ORTHOGRAPHIC value.
					camera fovy: 20.0.
					ray 
						cameraYawCamera: camera 
						angle: -135 * DEG2RAD 
						rotateAroundTarget: true.
					ray 
						cameraPitchCamera: camera 
						angle: -45 * DEG2RAD 
						lockView: true 
						rotateAroundTarget: true 
						rotateUp: false ]
				ifFalse: [ 
					camera position: (RayVector3 newX: 0.0 y: 2.0 z: 10.0).
					camera target: (RayVector3 newX: 0.0 y: 2.0 z: 0.0).
					camera up: (RayVector3 newX: 0.0 y: 1.0 z: 0.0).
					camera projection: RayCameraProjection CAMERA_PERSPECTIVE value.
					camera fovy: 60.0 ] ].		

		ray updateCamera: camera mode: cameraMode value. 
		ray drawDo: [ 
			ray clearBackground: RayColor white.
			ray mode3D: camera do: [ 
				ray 
					drawPlaneCenterPos: RayVector3 new 
					size: (RayVector2 newX: 32.0 y: 32.0) 
					color: RayColor lightGray.
				ray 
					drawCubePosition: (RayVector3 newX: -16 y: 2.5 z: 0.0)  
					width: 1.0 
					height: 5.0  
					length: 32.0 
					color: RayColor blue.
				ray 
					drawCubePosition: (RayVector3 newX: 16 y: 2.5 z: 0.0)  
					width: 1.0 
					height: 5.0  
					length: 32.0 
					color: RayColor lime.
				ray 
					drawCubePosition: (RayVector3 newX: 0 y: 2.5 z: 16.0)  
					width: 32.0 
					height: 5.0  
					length: 1.0 
					color: RayColor gold.
					
				columns do: [ :aTuple |
					ray drawCubePosition: aTuple second width: 2.0 height: aTuple first length: 2.0 color: aTuple third.
					ray drawCubeWiresPosition: camera target width: 0.5 height: 0.5 length: 0.5 color: RayColor maroon. 
				].
			
				cameraMode = RayCameraMode CAMERA_THIRD_PERSON ifTrue: [ 
					ray drawCubePosition: camera target width: 0.5 height: 0.5 length: 0.5 color: RayColor green.
					ray drawCubeWiresPosition: camera target width: 0.5 height: 0.5 length: 0.5 color: RayColor green ] ].

			ray drawRectanglePosX: 5 posY: 5 width: 330 height: 100 color: (ray fadeColor: RayColor skyBlue alpha: 0.5).
			ray drawRectangleLinesPosX: 5 posY: 5 width: 330 height: 100 color: RayColor blue. 
			
			ray drawText: 'Camera controls:' posX: 15 posY: 15 fontSize: 10 color: RayColor black.
			ray drawText: '- Move keys: W, A, S, D, Space, Left-Ctrl' posX: 15 posY: 30 fontSize: 10 color: RayColor black.
			ray drawText: '- Look around: arrow keys or mouse' posX: 15 posY: 45 fontSize: 10 color: RayColor black.
			ray drawText: '- Camera mode keys: 1, 2, 3, 4' posX: 15 posY: 60 fontSize: 10 color: RayColor black.
			ray drawText: '- Zoom keys: num-plus, num-minus or moise scroll' posX: 15 posY: 75 fontSize: 10 color: RayColor black.
			ray drawText: '- Camera projection key: P' posX: 15 posY: 90 fontSize: 10 color: RayColor black.

			ray drawRectanglePosX: 600 posY: 5 width: 195 height: 100 color: (ray fadeColor: RayColor skyBlue alpha: 0.5).
			ray drawRectangleLinesPosX: 600 posY: 5 width: 195 height: 100 color: RayColor blue.

			ray drawText: ('- Mode: ', (cameraMode item asString allButFirst: 7)) 
				posX: 610 posY: 30 fontSize: 10 color: RayColor black.
			ray drawText: ('- Projection: ', ((RayCameraProjection fromInteger: camera projection) item asString allButFirst: 7)) 
				posX: 610 posY: 45 fontSize: 10 color: RayColor black.
			ray drawText: ('- Position: {1}, {2}, {3}' format: { camera position x. camera position y. camera position z }) 
				posX: 610 posY: 60 fontSize: 10 color: RayColor black.
			ray drawText: ('- Target: {1}, {2}, {3}' format: { camera target x. camera target y. camera target z }) 
				posX: 610 posY: 75 fontSize: 10 color: RayColor black.
			ray drawText: ('- Up: {1}, {2}, {3}' format: { camera up x. camera up y. camera up z }) 
				posX: 610 posY: 90 fontSize: 10 color: RayColor black.
		] 
	].

	ray closeWindow
]

{ #category : 'public' }
LibRaylib >> attachAudioMixedProcessor: processor [

	self ffiCall: #(void AttachAudioMixedProcessor(AudioCallback processor))
]

{ #category : 'public' }
LibRaylib >> attachAudioStreamProcessorStream: stream processor: processor [

	self ffiCall: #(void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor))
]

{ #category : 'public' }
LibRaylib >> beginBlendMode: mode [

	self ffiCall: #(void BeginBlendMode(int mode))
]

{ #category : 'public' }
LibRaylib >> beginDrawing [

	self ffiCall: #(void BeginDrawing())
]

{ #category : 'public' }
LibRaylib >> beginMode2D: camera [

	self ffiCall: #(void BeginMode2D(Camera2D camera))
]

{ #category : 'public' }
LibRaylib >> beginMode3D: camera [

	self ffiCall: #(void BeginMode3D(Camera3D camera))
]

{ #category : 'public' }
LibRaylib >> beginScissorModeX: x y: y width: width height: height [

	self ffiCall: #(void BeginScissorMode(int x, int y, int width, int height))
]

{ #category : 'public' }
LibRaylib >> beginShaderMode: shader [

	self ffiCall: #(void BeginShaderMode(Shader shader))
]

{ #category : 'public' }
LibRaylib >> beginTextureMode: target [

	self ffiCall: #(void BeginTextureMode(RenderTexture2D target))
]

{ #category : 'public' }
LibRaylib >> beginVrStereoMode: config [

	self ffiCall: #(void BeginVrStereoMode(VrStereoConfig config))
]

{ #category : 'public' }
LibRaylib >> cameraMoveForwardCamera: camera distance: distance moveInWorldPlane: moveInWorldPlane [

	self ffiCall: #(void CameraMoveForward(int* camera, float distance, int moveInWorldPlane))
]

{ #category : 'public' }
LibRaylib >> cameraMoveRightCamera: camera distance: distance moveInWorldPlane: moveInWorldPlane [

	self ffiCall: #(void CameraMoveRight(int* camera, float distance, int moveInWorldPlane))
]

{ #category : 'public' }
LibRaylib >> cameraMoveToTargetCamera: camera delta: delta [

	self ffiCall: #(void CameraMoveToTarget(int* camera, float delta))
]

{ #category : 'public' }
LibRaylib >> cameraMoveUpCamera: camera distance: distance [

	self ffiCall: #(void CameraMoveUp(int* camera, float distance))
]

{ #category : 'public' }
LibRaylib >> cameraPitchCamera: camera angle: angle lockView: lockView rotateAroundTarget: rotateAroundTarget rotateUp: rotateUp [

	self ffiCall: #(void CameraPitch(int* camera, float angle, int lockView, int rotateAroundTarget, int rotateUp))
]

{ #category : 'public' }
LibRaylib >> cameraRollCamera: camera angle: angle [

	self ffiCall: #(void CameraRoll(int* camera, float angle))
]

{ #category : 'public' }
LibRaylib >> cameraYawCamera: camera angle: angle rotateAroundTarget: rotateAroundTarget [

	self ffiCall: #(void CameraYaw(int* camera, float angle, int rotateAroundTarget))
]

{ #category : 'public' }
LibRaylib >> changeDirectory: dir [

	self ffiCall: #(int ChangeDirectory(const char* dir))
]

{ #category : 'public' }
LibRaylib >> checkCollisionBoxSphereBox: box center: center radius: radius [

	self ffiCall: #(int CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius))
]

{ #category : 'public' }
LibRaylib >> checkCollisionBoxesBox1: box1 box2: box2 [

	self ffiCall: #(int CheckCollisionBoxes(BoundingBox box1, BoundingBox box2))
]

{ #category : 'public' }
LibRaylib >> checkCollisionCircleLineCenter: center radius: radius p1: p1 p2: p2 [

	self ffiCall: #(int CheckCollisionCircleLine(Vector2 center, float radius, Vector2 p1, Vector2 p2))
]

{ #category : 'public' }
LibRaylib >> checkCollisionCircleRecCenter: center radius: radius rec: rec [

	self ffiCall: #(int CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec))
]

{ #category : 'public' }
LibRaylib >> checkCollisionCirclesCenter1: center1 radius1: radius1 center2: center2 radius2: radius2 [

	self ffiCall: #(int CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2))
]

{ #category : 'public' }
LibRaylib >> checkCollisionLinesStartPos1: startPos1 endPos1: endPos1 startPos2: startPos2 endPos2: endPos2 collisionPoint: collisionPoint [

	self ffiCall: #(int CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2* collisionPoint))
]

{ #category : 'public' }
LibRaylib >> checkCollisionPointCirclePoint: point center: center radius: radius [

	self ffiCall: #(int CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius))
]

{ #category : 'public' }
LibRaylib >> checkCollisionPointLinePoint: point p1: p1 p2: p2 threshold: threshold [

	self ffiCall: #(int CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold))
]

{ #category : 'public' }
LibRaylib >> checkCollisionPointPolyPoint: point points: points pointCount: pointCount [

	self ffiCall: #(int CheckCollisionPointPoly(Vector2 point, Vector2* points, int pointCount))
]

{ #category : 'public' }
LibRaylib >> checkCollisionPointRecPoint: point rec: rec [

	self ffiCall: #(int CheckCollisionPointRec(Vector2 point, Rectangle rec))
]

{ #category : 'public' }
LibRaylib >> checkCollisionPointTrianglePoint: point p1: p1 p2: p2 p3: p3 [

	self ffiCall: #(int CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3))
]

{ #category : 'public' }
LibRaylib >> checkCollisionRecsRec1: rec1 rec2: rec2 [

	self ffiCall: #(int CheckCollisionRecs(Rectangle rec1, Rectangle rec2))
]

{ #category : 'public' }
LibRaylib >> checkCollisionSpheresCenter1: center1 radius1: radius1 center2: center2 radius2: radius2 [

	self ffiCall: #(int CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2))
]

{ #category : 'public' }
LibRaylib >> clearBackground: color [

	self ffiCall: #(void ClearBackground(Color color))
]

{ #category : 'public' }
LibRaylib >> clearWindowState: flags [

	self ffiCall: #(void ClearWindowState(uint flags))
]

{ #category : 'public' }
LibRaylib >> closeAudioDevice [

	self ffiCall: #(void CloseAudioDevice())
]

{ #category : 'public' }
LibRaylib >> closeWindow [

	self ffiCall: #(void CloseWindow())
]

{ #category : 'public' }
LibRaylib >> codepointToUTF8Codepoint: codepoint utf8Size: utf8Size [

	self ffiCall: #(const char* CodepointToUTF8(int codepoint, int* utf8Size))
]

{ #category : 'public' }
LibRaylib >> colorAlphaBlendDst: dst src: src tint: tint [

	self ffiCall: #(Color ColorAlphaBlend(Color dst, Color src, Color tint))
]

{ #category : 'public' }
LibRaylib >> colorAlphaColor: color alpha: alpha [

	self ffiCall: #(Color ColorAlpha(Color color, float alpha))
]

{ #category : 'public' }
LibRaylib >> colorBrightnessColor: color factor: factor [

	self ffiCall: #(Color ColorBrightness(Color color, float factor))
]

{ #category : 'public' }
LibRaylib >> colorContrastColor: color contrast: contrast [

	self ffiCall: #(Color ColorContrast(Color color, float contrast))
]

{ #category : 'public' }
LibRaylib >> colorFromHSVHue: hue saturation: saturation value: value [

	self ffiCall: #(Color ColorFromHSV(float hue, float saturation, float value))
]

{ #category : 'public' }
LibRaylib >> colorFromNormalized: normalized [

	self ffiCall: #(Color ColorFromNormalized(Vector4 normalized))
]

{ #category : 'public' }
LibRaylib >> colorIsEqualCol1: col1 col2: col2 [

	self ffiCall: #(int ColorIsEqual(Color col1, Color col2))
]

{ #category : 'public' }
LibRaylib >> colorNormalize: color [

	self ffiCall: #(Vector4 ColorNormalize(Color color))
]

{ #category : 'public' }
LibRaylib >> colorTintColor: color tint: tint [

	self ffiCall: #(Color ColorTint(Color color, Color tint))
]

{ #category : 'public' }
LibRaylib >> colorToHSV: color [

	self ffiCall: #(Vector3 ColorToHSV(Color color))
]

{ #category : 'public' }
LibRaylib >> colorToInt: color [

	self ffiCall: #(int ColorToInt(Color color))
]

{ #category : 'public' }
LibRaylib >> compressData: data dataSize: dataSize compDataSize: compDataSize [

	self ffiCall: #(uchar* CompressData(const uchar* data, int dataSize, int* compDataSize))
]

{ #category : 'public' }
LibRaylib >> decodeDataBase64Data: data outputSize: outputSize [

	self ffiCall: #(uchar* DecodeDataBase64(const uchar* data, int* outputSize))
]

{ #category : 'public' }
LibRaylib >> decompressDataCompData: compData compDataSize: compDataSize dataSize: dataSize [

	self ffiCall: #(uchar* DecompressData(const uchar* compData, int compDataSize, int* dataSize))
]

{ #category : 'public' }
LibRaylib >> detachAudioMixedProcessor: processor [

	self ffiCall: #(void DetachAudioMixedProcessor(AudioCallback processor))
]

{ #category : 'public' }
LibRaylib >> detachAudioStreamProcessorStream: stream processor: processor [

	self ffiCall: #(void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor))
]

{ #category : 'public' }
LibRaylib >> directoryExists: dirPath [

	self ffiCall: #(int DirectoryExists(const char* dirPath))
]

{ #category : 'public' }
LibRaylib >> disableCursor [

	self ffiCall: #(void DisableCursor())
]

{ #category : 'public' }
LibRaylib >> disableEventWaiting [

	self ffiCall: #(void DisableEventWaiting())
]

{ #category : 'public' }
LibRaylib >> drawBillboardCamera: camera texture: texture position: position scale: scale tint: tint [

	self ffiCall: #(void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float scale, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawBillboardCamera: camera texture: texture position: position size: size tint: tint [

	self ffiCall: #(void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawBillboardProCamera: camera texture: texture source: source position: position up: up size: size origin: origin rotation: rotation tint: tint [

	self ffiCall: #(void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawBillboardRecCamera: camera texture: texture source: source position: position size: size tint: tint [

	self ffiCall: #(void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawBoundingBox: box color: color [

	self ffiCall: #(void DrawBoundingBox(BoundingBox box, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCapsuleStartPos: startPos endPos: endPos radius: radius slices: slices rings: rings color: color [

	self ffiCall: #(void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCapsuleWiresStartPos: startPos endPos: endPos radius: radius slices: slices rings: rings color: color [

	self ffiCall: #(void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCircle3DCenter: center radius: radius rotationAxis: rotationAxis rotationAngle: rotationAngle color: color [

	self ffiCall: #(void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCircleCenterX: centerX centerY: centerY radius: radius color: color [

	self ffiCall: #(void DrawCircle(int centerX, int centerY, float radius, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCircleGradientCenterX: centerX centerY: centerY radius: radius color1: color1 color2: color2 [

	self ffiCall: #(void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2))
]

{ #category : 'public' }
LibRaylib >> drawCircleLinesCenterX: centerX centerY: centerY radius: radius color: color [

	self ffiCall: #(void DrawCircleLines(int centerX, int centerY, float radius, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCircleLinesVCenter: center radius: radius color: color [

	self ffiCall: #(void DrawCircleLinesV(Vector2 center, float radius, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCircleSectorCenter: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [

	self ffiCall: #(void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCircleSectorLinesCenter: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [

	self ffiCall: #(void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCircleVCenter: center radius: radius color: color [

	self ffiCall: #(void DrawCircleV(Vector2 center, float radius, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCubePosition: position width: width height: height length: length color: color [

	self ffiCall: #(void DrawCube(Vector3 position, float width, float height, float length, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCubeVPosition: position size: size color: color [

	self ffiCall: #(void DrawCubeV(Vector3 position, Vector3 size, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCubeWiresPosition: position width: width height: height length: length color: color [

	self ffiCall: #(void DrawCubeWires(Vector3 position, float width, float height, float length, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCubeWiresVPosition: position size: size color: color [

	self ffiCall: #(void DrawCubeWiresV(Vector3 position, Vector3 size, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCylinderExStartPos: startPos endPos: endPos startRadius: startRadius endRadius: endRadius sides: sides color: color [

	self ffiCall: #(void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCylinderPosition: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [

	self ffiCall: #(void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCylinderWiresExStartPos: startPos endPos: endPos startRadius: startRadius endRadius: endRadius sides: sides color: color [

	self ffiCall: #(void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color))
]

{ #category : 'public' }
LibRaylib >> drawCylinderWiresPosition: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [

	self ffiCall: #(void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color))
]

{ #category : 'drawing' }
LibRaylib >> drawDo: aBlock [ 

	self beginDrawing.
	aBlock ensure: [ 
		self endDrawing ]
]

{ #category : 'public' }
LibRaylib >> drawEllipseCenterX: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [

	self ffiCall: #(void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color))
]

{ #category : 'public' }
LibRaylib >> drawEllipseLinesCenterX: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [

	self ffiCall: #(void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color))
]

{ #category : 'public' }
LibRaylib >> drawFPSPosX: posX posY: posY [

	self ffiCall: #(void DrawFPS(int posX, int posY))
]

{ #category : 'public' }
LibRaylib >> drawGridSlices: slices spacing: spacing [

	self ffiCall: #(void DrawGrid(int slices, float spacing))
]

{ #category : 'public' }
LibRaylib >> drawLine3DStartPos: startPos endPos: endPos color: color [

	self ffiCall: #(void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color))
]

{ #category : 'public' }
LibRaylib >> drawLineBezierStartPos: startPos endPos: endPos thick: thick color: color [

	self ffiCall: #(void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawLineExStartPos: startPos endPos: endPos thick: thick color: color [

	self ffiCall: #(void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawLineStartPosX: startPosX startPosY: startPosY endPosX: endPosX endPosY: endPosY color: color [

	self ffiCall: #(void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color))
]

{ #category : 'public' }
LibRaylib >> drawLineStripPoints: points pointCount: pointCount color: color [

	self ffiCall: #(void DrawLineStrip(Vector2* points, int pointCount, Color color))
]

{ #category : 'public' }
LibRaylib >> drawLineVStartPos: startPos endPos: endPos color: color [

	self ffiCall: #(void DrawLineV(Vector2 startPos, Vector2 endPos, Color color))
]

{ #category : 'public' }
LibRaylib >> drawMesh: mesh material: material transform: transform [

	self ffiCall: #(void DrawMesh(Mesh mesh, Material material, Matrix transform))
]

{ #category : 'public' }
LibRaylib >> drawMeshInstancedMesh: mesh material: material transforms: transforms instances: instances [

	self ffiCall: #(void DrawMeshInstanced(Mesh mesh, Material material, Matrix* transforms, int instances))
]

{ #category : 'public' }
LibRaylib >> drawModel: model position: position scale: scale tint: tint [

	self ffiCall: #(void DrawModel(Model model, Vector3 position, float scale, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawModelExModel: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [

	self ffiCall: #(void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawModelWiresExModel: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [

	self ffiCall: #(void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawModelWiresModel: model position: position scale: scale tint: tint [

	self ffiCall: #(void DrawModelWires(Model model, Vector3 position, float scale, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawPixelPosX: posX posY: posY color: color [

	self ffiCall: #(void DrawPixel(int posX, int posY, Color color))
]

{ #category : 'public' }
LibRaylib >> drawPixelVPosition: position color: color [

	self ffiCall: #(void DrawPixelV(Vector2 position, Color color))
]

{ #category : 'public' }
LibRaylib >> drawPlaneCenterPos: centerPos size: size color: color [

	self ffiCall: #(void DrawPlane(Vector3 centerPos, Vector2 size, Color color))
]

{ #category : 'public' }
LibRaylib >> drawPoint3DPosition: position color: color [

	self ffiCall: #(void DrawPoint3D(Vector3 position, Color color))
]

{ #category : 'public' }
LibRaylib >> drawPolyCenter: center sides: sides radius: radius rotation: rotation color: color [

	self ffiCall: #(void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color))
]

{ #category : 'public' }
LibRaylib >> drawPolyLinesCenter: center sides: sides radius: radius rotation: rotation color: color [

	self ffiCall: #(void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color))
]

{ #category : 'public' }
LibRaylib >> drawPolyLinesExCenter: center sides: sides radius: radius rotation: rotation lineThick: lineThick color: color [

	self ffiCall: #(void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRay: ray color: color [

	self ffiCall: #(void DrawRay(Ray ray, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleGradientExRec: rec col1: col1 col2: col2 col3: col3 col4: col4 [

	self ffiCall: #(void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4))
]

{ #category : 'public' }
LibRaylib >> drawRectangleGradientHPosX: posX posY: posY width: width height: height color1: color1 color2: color2 [

	self ffiCall: #(void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2))
]

{ #category : 'public' }
LibRaylib >> drawRectangleGradientVPosX: posX posY: posY width: width height: height color1: color1 color2: color2 [

	self ffiCall: #(void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2))
]

{ #category : 'public' }
LibRaylib >> drawRectangleLinesExRec: rec lineThick: lineThick color: color [

	self ffiCall: #(void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleLinesPosX: posX posY: posY width: width height: height color: color [

	self ffiCall: #(void DrawRectangleLines(int posX, int posY, int width, int height, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectanglePosX: posX posY: posY width: width height: height color: color [

	self ffiCall: #(void DrawRectangle(int posX, int posY, int width, int height, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleProRec: rec origin: origin rotation: rotation color: color [

	self ffiCall: #(void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleRec: rec color: color [

	self ffiCall: #(void DrawRectangleRec(Rectangle rec, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleRoundedLinesExRec: rec roundness: roundness segments: segments lineThick: lineThick color: color [

	self ffiCall: #(void DrawRectangleRoundedLinesEx(Rectangle rec, float roundness, int segments, float lineThick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleRoundedLinesRec: rec roundness: roundness segments: segments color: color [

	self ffiCall: #(void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleRoundedLinesRec: rec roundness: roundness segments: segments lineThick: lineThick color: color [

	self ffiCall: #(void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleRoundedRec: rec roundness: roundness segments: segments color: color [

	self ffiCall: #(void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRectangleVPosition: position size: size color: color [

	self ffiCall: #(void DrawRectangleV(Vector2 position, Vector2 size, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRingCenter: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [

	self ffiCall: #(void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color))
]

{ #category : 'public' }
LibRaylib >> drawRingLinesCenter: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [

	self ffiCall: #(void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSphereCenterPos: centerPos radius: radius color: color [

	self ffiCall: #(void DrawSphere(Vector3 centerPos, float radius, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSphereExCenterPos: centerPos radius: radius rings: rings slices: slices color: color [

	self ffiCall: #(void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSphereWiresCenterPos: centerPos radius: radius rings: rings slices: slices color: color [

	self ffiCall: #(void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineBasisPoints: points pointCount: pointCount thick: thick color: color [

	self ffiCall: #(void DrawSplineBasis(Vector2* points, int pointCount, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineBezierCubicPoints: points pointCount: pointCount thick: thick color: color [

	self ffiCall: #(void DrawSplineBezierCubic(Vector2* points, int pointCount, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineBezierQuadraticPoints: points pointCount: pointCount thick: thick color: color [

	self ffiCall: #(void DrawSplineBezierQuadratic(Vector2* points, int pointCount, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineCatmullRomPoints: points pointCount: pointCount thick: thick color: color [

	self ffiCall: #(void DrawSplineCatmullRom(Vector2* points, int pointCount, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineLinearPoints: points pointCount: pointCount thick: thick color: color [

	self ffiCall: #(void DrawSplineLinear(Vector2* points, int pointCount, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineSegmentBasisP1: p1 p2: p2 p3: p3 p4: p4 thick: thick color: color [

	self ffiCall: #(void DrawSplineSegmentBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineSegmentBezierCubicP1: p1 c2: c2 c3: c3 p4: p4 thick: thick color: color [

	self ffiCall: #(void DrawSplineSegmentBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineSegmentBezierQuadraticP1: p1 c2: c2 p3: p3 thick: thick color: color [

	self ffiCall: #(void DrawSplineSegmentBezierQuadratic(Vector2 p1, Vector2 c2, Vector2 p3, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineSegmentCatmullRomP1: p1 p2: p2 p3: p3 p4: p4 thick: thick color: color [

	self ffiCall: #(void DrawSplineSegmentCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawSplineSegmentLinearP1: p1 p2: p2 thick: thick color: color [

	self ffiCall: #(void DrawSplineSegmentLinear(Vector2 p1, Vector2 p2, float thick, Color color))
]

{ #category : 'public' }
LibRaylib >> drawText: text posX: posX posY: posY fontSize: fontSize color: color [

	self ffiCall: #(void DrawText(const char* text, int posX, int posY, int fontSize, Color color))
]

{ #category : 'public' }
LibRaylib >> drawTextCodepointFont: font codepoint: codepoint position: position fontSize: fontSize tint: tint [

	self ffiCall: #(void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTextCodepointsFont: font codepoints: codepoints codepointCount: codepointCount position: position fontSize: fontSize spacing: spacing tint: tint [

	self ffiCall: #(void DrawTextCodepoints(Font font, const int* codepoints, int codepointCount, Vector2 position, float fontSize, float spacing, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTextExFont: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [

	self ffiCall: #(void DrawTextEx(Font font, const char* text, Vector2 position, float fontSize, float spacing, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTextProFont: font text: text position: position origin: origin rotation: rotation fontSize: fontSize spacing: spacing tint: tint [

	self ffiCall: #(void DrawTextPro(Font font, const char* text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTexture: texture posX: posX posY: posY tint: tint [

	self ffiCall: #(void DrawTexture(Texture2D texture, int posX, int posY, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTextureExTexture: texture position: position rotation: rotation scale: scale tint: tint [

	self ffiCall: #(void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTextureNPatchTexture: texture nPatchInfo: nPatchInfo dest: dest origin: origin rotation: rotation tint: tint [

	self ffiCall: #(void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTextureProTexture: texture source: source dest: dest origin: origin rotation: rotation tint: tint [

	self ffiCall: #(void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTextureRecTexture: texture source: source position: position tint: tint [

	self ffiCall: #(void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTextureVTexture: texture position: position tint: tint [

	self ffiCall: #(void DrawTextureV(Texture2D texture, Vector2 position, Color tint))
]

{ #category : 'public' }
LibRaylib >> drawTriangle3DV1: v1 v2: v2 v3: v3 color: color [

	self ffiCall: #(void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color))
]

{ #category : 'public' }
LibRaylib >> drawTriangleFanPoints: points pointCount: pointCount color: color [

	self ffiCall: #(void DrawTriangleFan(Vector2* points, int pointCount, Color color))
]

{ #category : 'public' }
LibRaylib >> drawTriangleLinesV1: v1 v2: v2 v3: v3 color: color [

	self ffiCall: #(void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color))
]

{ #category : 'public' }
LibRaylib >> drawTriangleStrip3DPoints: points pointCount: pointCount color: color [

	self ffiCall: #(void DrawTriangleStrip3D(Vector3* points, int pointCount, Color color))
]

{ #category : 'public' }
LibRaylib >> drawTriangleStripPoints: points pointCount: pointCount color: color [

	self ffiCall: #(void DrawTriangleStrip(Vector2* points, int pointCount, Color color))
]

{ #category : 'public' }
LibRaylib >> drawTriangleV1: v1 v2: v2 v3: v3 color: color [

	self ffiCall: #(void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color))
]

{ #category : 'public' }
LibRaylib >> enableCursor [

	self ffiCall: #(void EnableCursor())
]

{ #category : 'public' }
LibRaylib >> enableEventWaiting [

	self ffiCall: #(void EnableEventWaiting())
]

{ #category : 'public' }
LibRaylib >> encodeDataBase64Data: data dataSize: dataSize outputSize: outputSize [

	self ffiCall: #(char* EncodeDataBase64(const uchar* data, int dataSize, int* outputSize))
]

{ #category : 'public' }
LibRaylib >> endBlendMode [

	self ffiCall: #(void EndBlendMode())
]

{ #category : 'public' }
LibRaylib >> endDrawing [

	self ffiCall: #(void EndDrawing())
]

{ #category : 'public' }
LibRaylib >> endMode2D [

	self ffiCall: #(void EndMode2D())
]

{ #category : 'public' }
LibRaylib >> endMode3D [

	self ffiCall: #(void EndMode3D())
]

{ #category : 'public' }
LibRaylib >> endScissorMode [

	self ffiCall: #(void EndScissorMode())
]

{ #category : 'public' }
LibRaylib >> endShaderMode [

	self ffiCall: #(void EndShaderMode())
]

{ #category : 'public' }
LibRaylib >> endTextureMode [

	self ffiCall: #(void EndTextureMode())
]

{ #category : 'public' }
LibRaylib >> endVrStereoMode [

	self ffiCall: #(void EndVrStereoMode())
]

{ #category : 'public' }
LibRaylib >> exportAutomationEventList: list fileName: fileName [

	self ffiCall: #(int ExportAutomationEventList(AutomationEventList list, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> exportDataAsCodeData: data dataSize: dataSize fileName: fileName [

	self ffiCall: #(int ExportDataAsCode(const uchar* data, int dataSize, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> exportFontAsCodeFont: font fileName: fileName [

	self ffiCall: #(int ExportFontAsCode(Font font, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> exportImage: image fileName: fileName [

	self ffiCall: #(int ExportImage(Image image, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> exportImageAsCodeImage: image fileName: fileName [

	self ffiCall: #(int ExportImageAsCode(Image image, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> exportImageToMemoryImage: image fileType: fileType fileSize: fileSize [

	self ffiCall: #(uchar* ExportImageToMemory(Image image, const char* fileType, int* fileSize))
]

{ #category : 'public' }
LibRaylib >> exportMesh: mesh fileName: fileName [

	self ffiCall: #(int ExportMesh(Mesh mesh, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> exportMeshAsCodeMesh: mesh fileName: fileName [

	self ffiCall: #(int ExportMeshAsCode(Mesh mesh, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> exportWave: wave fileName: fileName [

	self ffiCall: #(int ExportWave(Wave wave, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> exportWaveAsCodeWave: wave fileName: fileName [

	self ffiCall: #(int ExportWaveAsCode(Wave wave, const char* fileName))
]

{ #category : 'public' }
LibRaylib >> fadeColor: color alpha: alpha [

	self ffiCall: #(Color Fade(Color color, float alpha))
]

{ #category : 'public' }
LibRaylib >> fileExists: fileName [

	self ffiCall: #(int FileExists(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> genImageCellularWidth: width height: height tileSize: tileSize [

	self ffiCall: #(Image GenImageCellular(int width, int height, int tileSize))
]

{ #category : 'public' }
LibRaylib >> genImageCheckedWidth: width height: height checksX: checksX checksY: checksY col1: col1 col2: col2 [

	self ffiCall: #(Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2))
]

{ #category : 'public' }
LibRaylib >> genImageColorWidth: width height: height color: color [

	self ffiCall: #(Image GenImageColor(int width, int height, Color color))
]

{ #category : 'public' }
LibRaylib >> genImageFontAtlasGlyphs: glyphs glyphRecs: glyphRecs glyphCount: glyphCount fontSize: fontSize padding: padding packMethod: packMethod [

	self ffiCall: #(Image GenImageFontAtlas(GlyphInfo* glyphs, Rectangle** glyphRecs, int glyphCount, int fontSize, int padding, int packMethod))
]

{ #category : 'public' }
LibRaylib >> genImageGradientLinearWidth: width height: height direction: direction start: start end: end [

	self ffiCall: #(Image GenImageGradientLinear(int width, int height, int direction, Color start, Color end))
]

{ #category : 'public' }
LibRaylib >> genImageGradientRadialWidth: width height: height density: density inner: inner outer: outer [

	self ffiCall: #(Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer))
]

{ #category : 'public' }
LibRaylib >> genImageGradientSquareWidth: width height: height density: density inner: inner outer: outer [

	self ffiCall: #(Image GenImageGradientSquare(int width, int height, float density, Color inner, Color outer))
]

{ #category : 'public' }
LibRaylib >> genImagePerlinNoiseWidth: width height: height offsetX: offsetX offsetY: offsetY scale: scale [

	self ffiCall: #(Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale))
]

{ #category : 'public' }
LibRaylib >> genImageTextWidth: width height: height text: text [

	self ffiCall: #(Image GenImageText(int width, int height, const char* text))
]

{ #category : 'public' }
LibRaylib >> genImageWhiteNoiseWidth: width height: height factor: factor [

	self ffiCall: #(Image GenImageWhiteNoise(int width, int height, float factor))
]

{ #category : 'public' }
LibRaylib >> genMeshConeRadius: radius height: height slices: slices [

	self ffiCall: #(Mesh GenMeshCone(float radius, float height, int slices))
]

{ #category : 'public' }
LibRaylib >> genMeshCubeWidth: width height: height length: length [

	self ffiCall: #(Mesh GenMeshCube(float width, float height, float length))
]

{ #category : 'public' }
LibRaylib >> genMeshCubicmap: cubicmap cubeSize: cubeSize [

	self ffiCall: #(Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize))
]

{ #category : 'public' }
LibRaylib >> genMeshCylinderRadius: radius height: height slices: slices [

	self ffiCall: #(Mesh GenMeshCylinder(float radius, float height, int slices))
]

{ #category : 'public' }
LibRaylib >> genMeshHeightmap: heightmap size: size [

	self ffiCall: #(Mesh GenMeshHeightmap(Image heightmap, Vector3 size))
]

{ #category : 'public' }
LibRaylib >> genMeshHemiSphereRadius: radius rings: rings slices: slices [

	self ffiCall: #(Mesh GenMeshHemiSphere(float radius, int rings, int slices))
]

{ #category : 'public' }
LibRaylib >> genMeshKnotRadius: radius size: size radSeg: radSeg sides: sides [

	self ffiCall: #(Mesh GenMeshKnot(float radius, float size, int radSeg, int sides))
]

{ #category : 'public' }
LibRaylib >> genMeshPlaneWidth: width length: length resX: resX resZ: resZ [

	self ffiCall: #(Mesh GenMeshPlane(float width, float length, int resX, int resZ))
]

{ #category : 'public' }
LibRaylib >> genMeshPolySides: sides radius: radius [

	self ffiCall: #(Mesh GenMeshPoly(int sides, float radius))
]

{ #category : 'public' }
LibRaylib >> genMeshSphereRadius: radius rings: rings slices: slices [

	self ffiCall: #(Mesh GenMeshSphere(float radius, int rings, int slices))
]

{ #category : 'public' }
LibRaylib >> genMeshTangents: mesh [

	self ffiCall: #(void GenMeshTangents(Mesh* mesh))
]

{ #category : 'public' }
LibRaylib >> genMeshTorusRadius: radius size: size radSeg: radSeg sides: sides [

	self ffiCall: #(Mesh GenMeshTorus(float radius, float size, int radSeg, int sides))
]

{ #category : 'public' }
LibRaylib >> genTextureMipmaps: texture [

	self ffiCall: #(void GenTextureMipmaps(Texture2D* texture))
]

{ #category : 'public' }
LibRaylib >> getApplicationDirectory [

	self ffiCall: #(const char* GetApplicationDirectory())
]

{ #category : 'public' }
LibRaylib >> getCameraForward: camera [

	self ffiCall: #(int GetCameraForward(int* camera))
]

{ #category : 'public' }
LibRaylib >> getCameraMatrix2D: camera [

	self ffiCall: #(Matrix GetCameraMatrix2D(Camera2D camera))
]

{ #category : 'public' }
LibRaylib >> getCameraMatrix: camera [

	self ffiCall: #(Matrix GetCameraMatrix(Camera camera))
]

{ #category : 'public' }
LibRaylib >> getCameraProjectionMatrixCamera: camera aspect: aspect [

	self ffiCall: #(int GetCameraProjectionMatrix(int* camera, float aspect))
]

{ #category : 'public' }
LibRaylib >> getCameraRight: camera [

	self ffiCall: #(int GetCameraRight(int* camera))
]

{ #category : 'public' }
LibRaylib >> getCameraUp: camera [

	self ffiCall: #(int GetCameraUp(int* camera))
]

{ #category : 'public' }
LibRaylib >> getCameraViewMatrix: camera [

	self ffiCall: #(int GetCameraViewMatrix(int* camera))
]

{ #category : 'public' }
LibRaylib >> getCharPressed [

	self ffiCall: #(int GetCharPressed())
]

{ #category : 'public' }
LibRaylib >> getClipboardText [

	self ffiCall: #(const char* GetClipboardText())
]

{ #category : 'public' }
LibRaylib >> getCodepointCount: text [

	self ffiCall: #(int GetCodepointCount(const char* text))
]

{ #category : 'public' }
LibRaylib >> getCodepointNextText: text codepointSize: codepointSize [

	self ffiCall: #(int GetCodepointNext(const char* text, int* codepointSize))
]

{ #category : 'public' }
LibRaylib >> getCodepointPreviousText: text codepointSize: codepointSize [

	self ffiCall: #(int GetCodepointPrevious(const char* text, int* codepointSize))
]

{ #category : 'public' }
LibRaylib >> getCodepointText: text codepointSize: codepointSize [

	self ffiCall: #(int GetCodepoint(const char* text, int* codepointSize))
]

{ #category : 'public' }
LibRaylib >> getCollisionRecRec1: rec1 rec2: rec2 [

	self ffiCall: #(Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2))
]

{ #category : 'public' }
LibRaylib >> getColor: hexValue [

	self ffiCall: #(Color GetColor(uint hexValue))
]

{ #category : 'public' }
LibRaylib >> getCurrentMonitor [

	self ffiCall: #(int GetCurrentMonitor())
]

{ #category : 'public' }
LibRaylib >> getDirectoryPath: filePath [

	self ffiCall: #(const char* GetDirectoryPath(const char* filePath))
]

{ #category : 'public' }
LibRaylib >> getFPS [

	self ffiCall: #(int GetFPS())
]

{ #category : 'public' }
LibRaylib >> getFileExtension: fileName [

	self ffiCall: #(const char* GetFileExtension(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> getFileLength: fileName [

	self ffiCall: #(int GetFileLength(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> getFileModTime: fileName [

	self ffiCall: #(long GetFileModTime(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> getFileName: filePath [

	self ffiCall: #(const char* GetFileName(const char* filePath))
]

{ #category : 'public' }
LibRaylib >> getFileNameWithoutExt: filePath [

	self ffiCall: #(const char* GetFileNameWithoutExt(const char* filePath))
]

{ #category : 'public' }
LibRaylib >> getFontDefault [

	self ffiCall: #(Font GetFontDefault())
]

{ #category : 'public' }
LibRaylib >> getFrameTime [

	self ffiCall: #(float GetFrameTime())
]

{ #category : 'public' }
LibRaylib >> getGamepadAxisCount: gamepad [

	self ffiCall: #(int GetGamepadAxisCount(int gamepad))
]

{ #category : 'public' }
LibRaylib >> getGamepadAxisMovementGamepad: gamepad axis: axis [

	self ffiCall: #(float GetGamepadAxisMovement(int gamepad, int axis))
]

{ #category : 'public' }
LibRaylib >> getGamepadButtonPressed [

	self ffiCall: #(int GetGamepadButtonPressed())
]

{ #category : 'public' }
LibRaylib >> getGamepadName: gamepad [

	self ffiCall: #(const char* GetGamepadName(int gamepad))
]

{ #category : 'public' }
LibRaylib >> getGestureDetected [

	self ffiCall: #(int GetGestureDetected())
]

{ #category : 'public' }
LibRaylib >> getGestureDragAngle [

	self ffiCall: #(float GetGestureDragAngle())
]

{ #category : 'public' }
LibRaylib >> getGestureDragVector [

	self ffiCall: #(Vector2 GetGestureDragVector())
]

{ #category : 'public' }
LibRaylib >> getGestureHoldDuration [

	self ffiCall: #(float GetGestureHoldDuration())
]

{ #category : 'public' }
LibRaylib >> getGesturePinchAngle [

	self ffiCall: #(float GetGesturePinchAngle())
]

{ #category : 'public' }
LibRaylib >> getGesturePinchVector [

	self ffiCall: #(Vector2 GetGesturePinchVector())
]

{ #category : 'public' }
LibRaylib >> getGlyphAtlasRecFont: font codepoint: codepoint [

	self ffiCall: #(Rectangle GetGlyphAtlasRec(Font font, int codepoint))
]

{ #category : 'public' }
LibRaylib >> getGlyphIndexFont: font codepoint: codepoint [

	self ffiCall: #(int GetGlyphIndex(Font font, int codepoint))
]

{ #category : 'public' }
LibRaylib >> getGlyphInfoFont: font codepoint: codepoint [

	self ffiCall: #(GlyphInfo GetGlyphInfo(Font font, int codepoint))
]

{ #category : 'public' }
LibRaylib >> getImageAlphaBorderImage: image threshold: threshold [

	self ffiCall: #(Rectangle GetImageAlphaBorder(Image image, float threshold))
]

{ #category : 'public' }
LibRaylib >> getImageColorImage: image x: x y: y [

	self ffiCall: #(Color GetImageColor(Image image, int x, int y))
]

{ #category : 'public' }
LibRaylib >> getKeyPressed [

	self ffiCall: #(int GetKeyPressed())
]

{ #category : 'public' }
LibRaylib >> getMasterVolume [

	self ffiCall: #(float GetMasterVolume())
]

{ #category : 'public' }
LibRaylib >> getMeshBoundingBox: mesh [

	self ffiCall: #(BoundingBox GetMeshBoundingBox(Mesh mesh))
]

{ #category : 'public' }
LibRaylib >> getModelBoundingBox: model [

	self ffiCall: #(BoundingBox GetModelBoundingBox(Model model))
]

{ #category : 'public' }
LibRaylib >> getMonitorCount [

	self ffiCall: #(int GetMonitorCount())
]

{ #category : 'public' }
LibRaylib >> getMonitorHeight: monitor [

	self ffiCall: #(int GetMonitorHeight(int monitor))
]

{ #category : 'public' }
LibRaylib >> getMonitorName: monitor [

	self ffiCall: #(const char* GetMonitorName(int monitor))
]

{ #category : 'public' }
LibRaylib >> getMonitorPhysicalHeight: monitor [

	self ffiCall: #(int GetMonitorPhysicalHeight(int monitor))
]

{ #category : 'public' }
LibRaylib >> getMonitorPhysicalWidth: monitor [

	self ffiCall: #(int GetMonitorPhysicalWidth(int monitor))
]

{ #category : 'public' }
LibRaylib >> getMonitorPosition: monitor [

	self ffiCall: #(Vector2 GetMonitorPosition(int monitor))
]

{ #category : 'public' }
LibRaylib >> getMonitorRefreshRate: monitor [

	self ffiCall: #(int GetMonitorRefreshRate(int monitor))
]

{ #category : 'public' }
LibRaylib >> getMonitorWidth: monitor [

	self ffiCall: #(int GetMonitorWidth(int monitor))
]

{ #category : 'public' }
LibRaylib >> getMouseDelta [

	self ffiCall: #(Vector2 GetMouseDelta())
]

{ #category : 'public' }
LibRaylib >> getMousePosition [

	self ffiCall: #(Vector2 GetMousePosition())
]

{ #category : 'public' }
LibRaylib >> getMouseRayMousePosition: mousePosition camera: camera [

	self ffiCall: #(Ray GetMouseRay(Vector2 mousePosition, Camera camera))
]

{ #category : 'public' }
LibRaylib >> getMouseWheelMove [

	self ffiCall: #(float GetMouseWheelMove())
]

{ #category : 'public' }
LibRaylib >> getMouseWheelMoveV [

	self ffiCall: #(Vector2 GetMouseWheelMoveV())
]

{ #category : 'public' }
LibRaylib >> getMouseX [

	self ffiCall: #(int GetMouseX())
]

{ #category : 'public' }
LibRaylib >> getMouseY [

	self ffiCall: #(int GetMouseY())
]

{ #category : 'public' }
LibRaylib >> getMusicTimeLength: music [

	self ffiCall: #(float GetMusicTimeLength(Music music))
]

{ #category : 'public' }
LibRaylib >> getMusicTimePlayed: music [

	self ffiCall: #(float GetMusicTimePlayed(Music music))
]

{ #category : 'public' }
LibRaylib >> getPixelColorSrcPtr: srcPtr format: format [

	self ffiCall: #(Color GetPixelColor(void* srcPtr, int format))
]

{ #category : 'public' }
LibRaylib >> getPixelDataSizeWidth: width height: height format: format [

	self ffiCall: #(int GetPixelDataSize(int width, int height, int format))
]

{ #category : 'public' }
LibRaylib >> getPrevDirectoryPath: dirPath [

	self ffiCall: #(const char* GetPrevDirectoryPath(const char* dirPath))
]

{ #category : 'public' }
LibRaylib >> getRandomValueMin: min max: max [

	self ffiCall: #(int GetRandomValue(int min, int max))
]

{ #category : 'public' }
LibRaylib >> getRayCollisionBoxRay: ray box: box [

	self ffiCall: #(RayCollision GetRayCollisionBox(Ray ray, BoundingBox box))
]

{ #category : 'public' }
LibRaylib >> getRayCollisionMeshRay: ray mesh: mesh transform: transform [

	self ffiCall: #(RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform))
]

{ #category : 'public' }
LibRaylib >> getRayCollisionQuadRay: ray p1: p1 p2: p2 p3: p3 p4: p4 [

	self ffiCall: #(RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4))
]

{ #category : 'public' }
LibRaylib >> getRayCollisionSphereRay: ray center: center radius: radius [

	self ffiCall: #(RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius))
]

{ #category : 'public' }
LibRaylib >> getRayCollisionTriangleRay: ray p1: p1 p2: p2 p3: p3 [

	self ffiCall: #(RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3))
]

{ #category : 'public' }
LibRaylib >> getRenderHeight [

	self ffiCall: #(int GetRenderHeight())
]

{ #category : 'public' }
LibRaylib >> getRenderWidth [

	self ffiCall: #(int GetRenderWidth())
]

{ #category : 'public' }
LibRaylib >> getScreenHeight [

	self ffiCall: #(int GetScreenHeight())
]

{ #category : 'public' }
LibRaylib >> getScreenToWorld2DPosition: position camera: camera [

	self ffiCall: #(Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera))
]

{ #category : 'public' }
LibRaylib >> getScreenToWorldRayExPosition: position camera: camera width: width height: height [

	self ffiCall: #(Ray GetScreenToWorldRayEx(Vector2 position, Camera camera, int width, int height))
]

{ #category : 'public' }
LibRaylib >> getScreenToWorldRayPosition: position camera: camera [

	self ffiCall: #(Ray GetScreenToWorldRay(Vector2 position, Camera camera))
]

{ #category : 'public' }
LibRaylib >> getScreenWidth [

	self ffiCall: #(int GetScreenWidth())
]

{ #category : 'public' }
LibRaylib >> getShaderLocationAttribShader: shader attribName: attribName [

	self ffiCall: #(int GetShaderLocationAttrib(Shader shader, const char* attribName))
]

{ #category : 'public' }
LibRaylib >> getShaderLocationShader: shader uniformName: uniformName [

	self ffiCall: #(int GetShaderLocation(Shader shader, const char* uniformName))
]

{ #category : 'public' }
LibRaylib >> getShapesTexture [

	self ffiCall: #(Texture2D GetShapesTexture())
]

{ #category : 'public' }
LibRaylib >> getShapesTextureRectangle [

	self ffiCall: #(Rectangle GetShapesTextureRectangle())
]

{ #category : 'public' }
LibRaylib >> getSplinePointBasisP1: p1 p2: p2 p3: p3 p4: p4 t: t [

	self ffiCall: #(Vector2 GetSplinePointBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t))
]

{ #category : 'public' }
LibRaylib >> getSplinePointBezierCubicP1: p1 c2: c2 c3: c3 p4: p4 t: t [

	self ffiCall: #(Vector2 GetSplinePointBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float t))
]

{ #category : 'public' }
LibRaylib >> getSplinePointBezierQuadP1: p1 c2: c2 p3: p3 t: t [

	self ffiCall: #(Vector2 GetSplinePointBezierQuad(Vector2 p1, Vector2 c2, Vector2 p3, float t))
]

{ #category : 'public' }
LibRaylib >> getSplinePointCatmullRomP1: p1 p2: p2 p3: p3 p4: p4 t: t [

	self ffiCall: #(Vector2 GetSplinePointCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t))
]

{ #category : 'public' }
LibRaylib >> getSplinePointLinearStartPos: startPos endPos: endPos t: t [

	self ffiCall: #(Vector2 GetSplinePointLinear(Vector2 startPos, Vector2 endPos, float t))
]

{ #category : 'public' }
LibRaylib >> getTime [

	self ffiCall: #(double GetTime())
]

{ #category : 'public' }
LibRaylib >> getTouchPointCount [

	self ffiCall: #(int GetTouchPointCount())
]

{ #category : 'public' }
LibRaylib >> getTouchPointId: index [

	self ffiCall: #(int GetTouchPointId(int index))
]

{ #category : 'public' }
LibRaylib >> getTouchPosition: index [

	self ffiCall: #(Vector2 GetTouchPosition(int index))
]

{ #category : 'public' }
LibRaylib >> getTouchX [

	self ffiCall: #(int GetTouchX())
]

{ #category : 'public' }
LibRaylib >> getTouchY [

	self ffiCall: #(int GetTouchY())
]

{ #category : 'public' }
LibRaylib >> getViewRayMousePosition: mousePosition camera: camera width: width height: height [

	self ffiCall: #(Ray GetViewRay(Vector2 mousePosition, Camera camera, float width, float height))
]

{ #category : 'public' }
LibRaylib >> getWindowHandle [

	self ffiCall: #(void* GetWindowHandle())
]

{ #category : 'public' }
LibRaylib >> getWindowPosition [

	self ffiCall: #(Vector2 GetWindowPosition())
]

{ #category : 'public' }
LibRaylib >> getWindowScaleDPI [

	self ffiCall: #(Vector2 GetWindowScaleDPI())
]

{ #category : 'public' }
LibRaylib >> getWorkingDirectory [

	self ffiCall: #(const char* GetWorkingDirectory())
]

{ #category : 'public' }
LibRaylib >> getWorldToScreen2DPosition: position camera: camera [

	self ffiCall: #(Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera))
]

{ #category : 'public' }
LibRaylib >> getWorldToScreenExPosition: position camera: camera width: width height: height [

	self ffiCall: #(Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height))
]

{ #category : 'public' }
LibRaylib >> getWorldToScreenPosition: position camera: camera [

	self ffiCall: #(Vector2 GetWorldToScreen(Vector3 position, Camera camera))
]

{ #category : 'public' }
LibRaylib >> hideCursor [

	self ffiCall: #(void HideCursor())
]

{ #category : 'public' }
LibRaylib >> imageAlphaClearImage: image color: color threshold: threshold [

	self ffiCall: #(void ImageAlphaClear(Image* image, Color color, float threshold))
]

{ #category : 'public' }
LibRaylib >> imageAlphaCropImage: image threshold: threshold [

	self ffiCall: #(void ImageAlphaCrop(Image* image, float threshold))
]

{ #category : 'public' }
LibRaylib >> imageAlphaMaskImage: image alphaMask: alphaMask [

	self ffiCall: #(void ImageAlphaMask(Image* image, Image alphaMask))
]

{ #category : 'public' }
LibRaylib >> imageAlphaPremultiply: image [

	self ffiCall: #(void ImageAlphaPremultiply(Image* image))
]

{ #category : 'public' }
LibRaylib >> imageBlurGaussianImage: image blurSize: blurSize [

	self ffiCall: #(void ImageBlurGaussian(Image* image, int blurSize))
]

{ #category : 'public' }
LibRaylib >> imageClearBackgroundDst: dst color: color [

	self ffiCall: #(void ImageClearBackground(Image* dst, Color color))
]

{ #category : 'public' }
LibRaylib >> imageColorBrightnessImage: image brightness: brightness [

	self ffiCall: #(void ImageColorBrightness(Image* image, int brightness))
]

{ #category : 'public' }
LibRaylib >> imageColorContrastImage: image contrast: contrast [

	self ffiCall: #(void ImageColorContrast(Image* image, float contrast))
]

{ #category : 'public' }
LibRaylib >> imageColorGrayscale: image [

	self ffiCall: #(void ImageColorGrayscale(Image* image))
]

{ #category : 'public' }
LibRaylib >> imageColorInvert: image [

	self ffiCall: #(void ImageColorInvert(Image* image))
]

{ #category : 'public' }
LibRaylib >> imageColorReplaceImage: image color: color replace: replace [

	self ffiCall: #(void ImageColorReplace(Image* image, Color color, Color replace))
]

{ #category : 'public' }
LibRaylib >> imageColorTintImage: image color: color [

	self ffiCall: #(void ImageColorTint(Image* image, Color color))
]

{ #category : 'public' }
LibRaylib >> imageCopy: image [

	self ffiCall: #(Image ImageCopy(Image image))
]

{ #category : 'public' }
LibRaylib >> imageCropImage: image crop: crop [

	self ffiCall: #(void ImageCrop(Image* image, Rectangle crop))
]

{ #category : 'public' }
LibRaylib >> imageDitherImage: image rBpp: rBpp gBpp: gBpp bBpp: bBpp aBpp: aBpp [

	self ffiCall: #(void ImageDither(Image* image, int rBpp, int gBpp, int bBpp, int aBpp))
]

{ #category : 'public' }
LibRaylib >> imageDrawCircleDst: dst centerX: centerX centerY: centerY radius: radius color: color [

	self ffiCall: #(void ImageDrawCircle(Image* dst, int centerX, int centerY, int radius, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawCircleLinesDst: dst centerX: centerX centerY: centerY radius: radius color: color [

	self ffiCall: #(void ImageDrawCircleLines(Image* dst, int centerX, int centerY, int radius, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawCircleLinesVDst: dst center: center radius: radius color: color [

	self ffiCall: #(void ImageDrawCircleLinesV(Image* dst, Vector2 center, int radius, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawCircleVDst: dst center: center radius: radius color: color [

	self ffiCall: #(void ImageDrawCircleV(Image* dst, Vector2 center, int radius, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawDst: dst src: src srcRec: srcRec dstRec: dstRec tint: tint [

	self ffiCall: #(void ImageDraw(Image* dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint))
]

{ #category : 'public' }
LibRaylib >> imageDrawLineDst: dst startPosX: startPosX startPosY: startPosY endPosX: endPosX endPosY: endPosY color: color [

	self ffiCall: #(void ImageDrawLine(Image* dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawLineExDst: dst start: start end: end thick: thick color: color [

	self ffiCall: #(void ImageDrawLineEx(Image* dst, Vector2 start, Vector2 end, int thick, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawLineVDst: dst start: start end: end color: color [

	self ffiCall: #(void ImageDrawLineV(Image* dst, Vector2 start, Vector2 end, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawPixelDst: dst posX: posX posY: posY color: color [

	self ffiCall: #(void ImageDrawPixel(Image* dst, int posX, int posY, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawPixelVDst: dst position: position color: color [

	self ffiCall: #(void ImageDrawPixelV(Image* dst, Vector2 position, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawRectangleDst: dst posX: posX posY: posY width: width height: height color: color [

	self ffiCall: #(void ImageDrawRectangle(Image* dst, int posX, int posY, int width, int height, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawRectangleLinesDst: dst rec: rec thick: thick color: color [

	self ffiCall: #(void ImageDrawRectangleLines(Image* dst, Rectangle rec, int thick, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawRectangleRecDst: dst rec: rec color: color [

	self ffiCall: #(void ImageDrawRectangleRec(Image* dst, Rectangle rec, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawRectangleVDst: dst position: position size: size color: color [

	self ffiCall: #(void ImageDrawRectangleV(Image* dst, Vector2 position, Vector2 size, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawTextDst: dst text: text posX: posX posY: posY fontSize: fontSize color: color [

	self ffiCall: #(void ImageDrawText(Image* dst, const char* text, int posX, int posY, int fontSize, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawTextExDst: dst font: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [

	self ffiCall: #(void ImageDrawTextEx(Image* dst, Font font, const char* text, Vector2 position, float fontSize, float spacing, Color tint))
]

{ #category : 'public' }
LibRaylib >> imageDrawTriangleDst: dst v1: v1 v2: v2 v3: v3 color: color [

	self ffiCall: #(void ImageDrawTriangle(Image* dst, Vector2 v1, Vector2 v2, Vector2 v3, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawTriangleExDst: dst v1: v1 v2: v2 v3: v3 c1: c1 c2: c2 c3: c3 [

	self ffiCall: #(void ImageDrawTriangleEx(Image* dst, Vector2 v1, Vector2 v2, Vector2 v3, Color c1, Color c2, Color c3))
]

{ #category : 'public' }
LibRaylib >> imageDrawTriangleFanDst: dst points: points pointCount: pointCount color: color [

	self ffiCall: #(void ImageDrawTriangleFan(Image* dst, Vector2* points, int pointCount, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawTriangleLinesDst: dst v1: v1 v2: v2 v3: v3 color: color [

	self ffiCall: #(void ImageDrawTriangleLines(Image* dst, Vector2 v1, Vector2 v2, Vector2 v3, Color color))
]

{ #category : 'public' }
LibRaylib >> imageDrawTriangleStripDst: dst points: points pointCount: pointCount color: color [

	self ffiCall: #(void ImageDrawTriangleStrip(Image* dst, Vector2* points, int pointCount, Color color))
]

{ #category : 'public' }
LibRaylib >> imageFlipHorizontal: image [

	self ffiCall: #(void ImageFlipHorizontal(Image* image))
]

{ #category : 'public' }
LibRaylib >> imageFlipVertical: image [

	self ffiCall: #(void ImageFlipVertical(Image* image))
]

{ #category : 'public' }
LibRaylib >> imageFormatImage: image newFormat: newFormat [

	self ffiCall: #(void ImageFormat(Image* image, int newFormat))
]

{ #category : 'public' }
LibRaylib >> imageFromChannelImage: image selectedChannel: selectedChannel [

	self ffiCall: #(Image ImageFromChannel(Image image, int selectedChannel))
]

{ #category : 'public' }
LibRaylib >> imageFromImage: image rec: rec [

	self ffiCall: #(Image ImageFromImage(Image image, Rectangle rec))
]

{ #category : 'public' }
LibRaylib >> imageKernelConvolutionImage: image kernel: kernel kernelSize: kernelSize [

	self ffiCall: #(void ImageKernelConvolution(Image* image, const float* kernel, int kernelSize))
]

{ #category : 'public' }
LibRaylib >> imageMipmaps: image [

	self ffiCall: #(void ImageMipmaps(Image* image))
]

{ #category : 'public' }
LibRaylib >> imageResizeCanvasImage: image newWidth: newWidth newHeight: newHeight offsetX: offsetX offsetY: offsetY fill: fill [

	self ffiCall: #(void ImageResizeCanvas(Image* image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill))
]

{ #category : 'public' }
LibRaylib >> imageResizeImage: image newWidth: newWidth newHeight: newHeight [

	self ffiCall: #(void ImageResize(Image* image, int newWidth, int newHeight))
]

{ #category : 'public' }
LibRaylib >> imageResizeNNImage: image newWidth: newWidth newHeight: newHeight [

	self ffiCall: #(void ImageResizeNN(Image* image, int newWidth, int newHeight))
]

{ #category : 'public' }
LibRaylib >> imageRotateCCW: image [

	self ffiCall: #(void ImageRotateCCW(Image* image))
]

{ #category : 'public' }
LibRaylib >> imageRotateCW: image [

	self ffiCall: #(void ImageRotateCW(Image* image))
]

{ #category : 'public' }
LibRaylib >> imageRotateImage: image degrees: degrees [

	self ffiCall: #(void ImageRotate(Image* image, int degrees))
]

{ #category : 'public' }
LibRaylib >> imageText: text fontSize: fontSize color: color [

	self ffiCall: #(Image ImageText(const char* text, int fontSize, Color color))
]

{ #category : 'public' }
LibRaylib >> imageTextExFont: font text: text fontSize: fontSize spacing: spacing tint: tint [

	self ffiCall: #(Image ImageTextEx(Font font, const char* text, float fontSize, float spacing, Color tint))
]

{ #category : 'public' }
LibRaylib >> imageToPOTImage: image fill: fill [

	self ffiCall: #(void ImageToPOT(Image* image, Color fill))
]

{ #category : 'public' }
LibRaylib >> initAudioDevice [

	self ffiCall: #(void InitAudioDevice())
]

{ #category : 'public' }
LibRaylib >> initWindowWidth: width height: height title: title [

	self ffiCall: #(void InitWindow(int width, int height, const char* title))
]

{ #category : 'public' }
LibRaylib >> isAudioDeviceReady [

	self ffiCall: #(int IsAudioDeviceReady())
]

{ #category : 'public' }
LibRaylib >> isAudioStreamPlaying: stream [

	self ffiCall: #(int IsAudioStreamPlaying(AudioStream stream))
]

{ #category : 'public' }
LibRaylib >> isAudioStreamProcessed: stream [

	self ffiCall: #(int IsAudioStreamProcessed(AudioStream stream))
]

{ #category : 'public' }
LibRaylib >> isAudioStreamReady: stream [

	self ffiCall: #(int IsAudioStreamReady(AudioStream stream))
]

{ #category : 'public' }
LibRaylib >> isCursorHidden [

	self ffiCall: #(int IsCursorHidden())
]

{ #category : 'public' }
LibRaylib >> isCursorOnScreen [

	self ffiCall: #(int IsCursorOnScreen())
]

{ #category : 'public' }
LibRaylib >> isFileDropped [

	self ffiCall: #(int IsFileDropped())
]

{ #category : 'public' }
LibRaylib >> isFileExtensionFileName: fileName ext: ext [

	self ffiCall: #(int IsFileExtension(const char* fileName, const char* ext))
]

{ #category : 'public' }
LibRaylib >> isFileNameValid: fileName [

	self ffiCall: #(int IsFileNameValid(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> isFontReady: font [

	self ffiCall: #(int IsFontReady(Font font))
]

{ #category : 'public' }
LibRaylib >> isGamepadAvailable: gamepad [

	self ffiCall: #(int IsGamepadAvailable(int gamepad))
]

{ #category : 'public' }
LibRaylib >> isGamepadButtonDownGamepad: gamepad button: button [

	self ffiCall: #(int IsGamepadButtonDown(int gamepad, int button))
]

{ #category : 'public' }
LibRaylib >> isGamepadButtonPressedGamepad: gamepad button: button [

	self ffiCall: #(int IsGamepadButtonPressed(int gamepad, int button))
]

{ #category : 'public' }
LibRaylib >> isGamepadButtonReleasedGamepad: gamepad button: button [

	self ffiCall: #(int IsGamepadButtonReleased(int gamepad, int button))
]

{ #category : 'public' }
LibRaylib >> isGamepadButtonUpGamepad: gamepad button: button [

	self ffiCall: #(int IsGamepadButtonUp(int gamepad, int button))
]

{ #category : 'public' }
LibRaylib >> isGestureDetected: gesture [

	self ffiCall: #(int IsGestureDetected(uint gesture))
]

{ #category : 'public' }
LibRaylib >> isImageReady: image [

	self ffiCall: #(int IsImageReady(Image image))
]

{ #category : 'public' }
LibRaylib >> isKeyDown: key [

	self ffiCall: #(int IsKeyDown(int key))
]

{ #category : 'public' }
LibRaylib >> isKeyPressed: key [

	self ffiCall: #(int IsKeyPressed(int key))
]

{ #category : 'public' }
LibRaylib >> isKeyPressedRepeat: key [

	self ffiCall: #(int IsKeyPressedRepeat(int key))
]

{ #category : 'public' }
LibRaylib >> isKeyReleased: key [

	self ffiCall: #(int IsKeyReleased(int key))
]

{ #category : 'public' }
LibRaylib >> isKeyUp: key [

	self ffiCall: #(int IsKeyUp(int key))
]

{ #category : 'public' }
LibRaylib >> isMaterialReady: material [

	self ffiCall: #(int IsMaterialReady(Material material))
]

{ #category : 'public' }
LibRaylib >> isModelAnimationValidModel: model anim: anim [

	self ffiCall: #(int IsModelAnimationValid(Model model, ModelAnimation anim))
]

{ #category : 'public' }
LibRaylib >> isModelReady: model [

	self ffiCall: #(int IsModelReady(Model model))
]

{ #category : 'public' }
LibRaylib >> isMouseButtonDown: button [

	self ffiCall: #(int IsMouseButtonDown(int button))
]

{ #category : 'public' }
LibRaylib >> isMouseButtonPressed: button [

	self ffiCall: #(int IsMouseButtonPressed(int button))
]

{ #category : 'public' }
LibRaylib >> isMouseButtonReleased: button [

	self ffiCall: #(int IsMouseButtonReleased(int button))
]

{ #category : 'public' }
LibRaylib >> isMouseButtonUp: button [

	self ffiCall: #(int IsMouseButtonUp(int button))
]

{ #category : 'public' }
LibRaylib >> isMusicReady: music [

	self ffiCall: #(int IsMusicReady(Music music))
]

{ #category : 'public' }
LibRaylib >> isMusicStreamPlaying: music [

	self ffiCall: #(int IsMusicStreamPlaying(Music music))
]

{ #category : 'public' }
LibRaylib >> isPathFile: path [

	self ffiCall: #(int IsPathFile(const char* path))
]

{ #category : 'public' }
LibRaylib >> isRenderTextureReady: target [

	self ffiCall: #(int IsRenderTextureReady(RenderTexture2D target))
]

{ #category : 'public' }
LibRaylib >> isShaderReady: shader [

	self ffiCall: #(int IsShaderReady(Shader shader))
]

{ #category : 'public' }
LibRaylib >> isSoundPlaying: sound [

	self ffiCall: #(int IsSoundPlaying(Sound sound))
]

{ #category : 'public' }
LibRaylib >> isSoundReady: sound [

	self ffiCall: #(int IsSoundReady(Sound sound))
]

{ #category : 'public' }
LibRaylib >> isTextureReady: texture [

	self ffiCall: #(int IsTextureReady(Texture2D texture))
]

{ #category : 'public' }
LibRaylib >> isWaveReady: wave [

	self ffiCall: #(int IsWaveReady(Wave wave))
]

{ #category : 'public' }
LibRaylib >> isWindowFocused [

	self ffiCall: #(int IsWindowFocused())
]

{ #category : 'public' }
LibRaylib >> isWindowFullscreen [

	self ffiCall: #(int IsWindowFullscreen())
]

{ #category : 'public' }
LibRaylib >> isWindowHidden [

	self ffiCall: #(int IsWindowHidden())
]

{ #category : 'public' }
LibRaylib >> isWindowMaximized [

	self ffiCall: #(int IsWindowMaximized())
]

{ #category : 'public' }
LibRaylib >> isWindowMinimized [

	self ffiCall: #(int IsWindowMinimized())
]

{ #category : 'public' }
LibRaylib >> isWindowReady [

	self ffiCall: #(int IsWindowReady())
]

{ #category : 'public' }
LibRaylib >> isWindowResized [

	self ffiCall: #(int IsWindowResized())
]

{ #category : 'public' }
LibRaylib >> isWindowState: flag [

	self ffiCall: #(int IsWindowState(uint flag))
]

{ #category : 'public' }
LibRaylib >> loadAudioStreamSampleRate: sampleRate sampleSize: sampleSize channels: channels [

	self ffiCall: #(AudioStream LoadAudioStream(uint sampleRate, uint sampleSize, uint channels))
]

{ #category : 'public' }
LibRaylib >> loadAutomationEventList: fileName [

	self ffiCall: #(AutomationEventList LoadAutomationEventList(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadCodepointsText: text count: count [

	self ffiCall: #(int* LoadCodepoints(const char* text, int* count))
]

{ #category : 'public' }
LibRaylib >> loadDirectoryFiles: dirPath [

	self ffiCall: #(FilePathList LoadDirectoryFiles(const char* dirPath))
]

{ #category : 'public' }
LibRaylib >> loadDirectoryFilesExBasePath: basePath filter: filter scanSubdirs: scanSubdirs [

	self ffiCall: #(FilePathList LoadDirectoryFilesEx(const char* basePath, const char* filter, bool scanSubdirs))
]

{ #category : 'public' }
LibRaylib >> loadDroppedFiles [

	self ffiCall: #(FilePathList LoadDroppedFiles())
]

{ #category : 'public' }
LibRaylib >> loadFileDataFileName: fileName dataSize: dataSize [

	self ffiCall: #(uchar* LoadFileData(const char* fileName, int* dataSize))
]

{ #category : 'public' }
LibRaylib >> loadFileText: fileName [

	self ffiCall: #(char* LoadFileText(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadFont: fileName [

	self ffiCall: #(Font LoadFont(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadFontDataFileData: fileData dataSize: dataSize fontSize: fontSize codepoints: codepoints codepointCount: codepointCount type: type [

	self ffiCall: #(GlyphInfo* LoadFontData(const uchar* fileData, int dataSize, int fontSize, int* codepoints, int codepointCount, int type))
]

{ #category : 'public' }
LibRaylib >> loadFontExFileName: fileName fontSize: fontSize codepoints: codepoints codepointCount: codepointCount [

	self ffiCall: #(Font LoadFontEx(const char* fileName, int fontSize, int* codepoints, int codepointCount))
]

{ #category : 'public' }
LibRaylib >> loadFontFromImage: image key: key firstChar: firstChar [

	self ffiCall: #(Font LoadFontFromImage(Image image, Color key, int firstChar))
]

{ #category : 'public' }
LibRaylib >> loadFontFromMemoryFileType: fileType fileData: fileData dataSize: dataSize fontSize: fontSize codepoints: codepoints codepointCount: codepointCount [

	self ffiCall: #(Font LoadFontFromMemory(const char* fileType, const uchar* fileData, int dataSize, int fontSize, int* codepoints, int codepointCount))
]

{ #category : 'public' }
LibRaylib >> loadImage: fileName [

	self ffiCall: #(Image LoadImage(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadImageAnimFileName: fileName frames: frames [

	self ffiCall: #(Image LoadImageAnim(const char* fileName, int* frames))
]

{ #category : 'public' }
LibRaylib >> loadImageAnimFromMemoryFileType: fileType fileData: fileData dataSize: dataSize frames: frames [

	self ffiCall: #(Image LoadImageAnimFromMemory(const char* fileType, const uchar* fileData, int dataSize, int* frames))
]

{ #category : 'public' }
LibRaylib >> loadImageColors: image [

	self ffiCall: #(Color* LoadImageColors(Image image))
]

{ #category : 'public' }
LibRaylib >> loadImageFromMemoryFileType: fileType fileData: fileData dataSize: dataSize [

	self ffiCall: #(Image LoadImageFromMemory(const char* fileType, const uchar* fileData, int dataSize))
]

{ #category : 'public' }
LibRaylib >> loadImageFromScreen [

	self ffiCall: #(Image LoadImageFromScreen())
]

{ #category : 'public' }
LibRaylib >> loadImageFromTexture: texture [

	self ffiCall: #(Image LoadImageFromTexture(Texture2D texture))
]

{ #category : 'public' }
LibRaylib >> loadImagePaletteImage: image maxPaletteSize: maxPaletteSize colorCount: colorCount [

	self ffiCall: #(Color* LoadImagePalette(Image image, int maxPaletteSize, int* colorCount))
]

{ #category : 'public' }
LibRaylib >> loadImageRawFileName: fileName width: width height: height format: format headerSize: headerSize [

	self ffiCall: #(Image LoadImageRaw(const char* fileName, int width, int height, int format, int headerSize))
]

{ #category : 'public' }
LibRaylib >> loadImageSvgFileNameOrString: fileNameOrString width: width height: height [

	self ffiCall: #(Image LoadImageSvg(const char* fileNameOrString, int width, int height))
]

{ #category : 'public' }
LibRaylib >> loadMaterialDefault [

	self ffiCall: #(Material LoadMaterialDefault())
]

{ #category : 'public' }
LibRaylib >> loadMaterialsFileName: fileName materialCount: materialCount [

	self ffiCall: #(Material* LoadMaterials(const char* fileName, int* materialCount))
]

{ #category : 'public' }
LibRaylib >> loadModel: fileName [

	self ffiCall: #(Model LoadModel(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadModelAnimationsFileName: fileName animCount: animCount [

	self ffiCall: #(ModelAnimation* LoadModelAnimations(const char* fileName, int* animCount))
]

{ #category : 'public' }
LibRaylib >> loadModelFromMesh: mesh [

	self ffiCall: #(Model LoadModelFromMesh(Mesh mesh))
]

{ #category : 'public' }
LibRaylib >> loadMusicStream: fileName [

	self ffiCall: #(Music LoadMusicStream(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadMusicStreamFromMemoryFileType: fileType data: data dataSize: dataSize [

	self ffiCall: #(Music LoadMusicStreamFromMemory(const char* fileType, const uchar* data, int dataSize))
]

{ #category : 'public' }
LibRaylib >> loadRandomSequenceCount: count min: min max: max [

	self ffiCall: #(int* LoadRandomSequence(uint count, int min, int max))
]

{ #category : 'public' }
LibRaylib >> loadRenderTextureWidth: width height: height [

	self ffiCall: #(RenderTexture2D LoadRenderTexture(int width, int height))
]

{ #category : 'public' }
LibRaylib >> loadShaderFromMemoryVsCode: vsCode fsCode: fsCode [

	self ffiCall: #(Shader LoadShaderFromMemory(const char* vsCode, const char* fsCode))
]

{ #category : 'public' }
LibRaylib >> loadShaderVsFileName: vsFileName fsFileName: fsFileName [

	self ffiCall: #(Shader LoadShader(const char* vsFileName, const char* fsFileName))
]

{ #category : 'public' }
LibRaylib >> loadSound: fileName [

	self ffiCall: #(Sound LoadSound(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadSoundAlias: source [

	self ffiCall: #(Sound LoadSoundAlias(Sound source))
]

{ #category : 'public' }
LibRaylib >> loadSoundFromWave: wave [

	self ffiCall: #(Sound LoadSoundFromWave(Wave wave))
]

{ #category : 'public' }
LibRaylib >> loadTexture: fileName [

	self ffiCall: #(Texture2D LoadTexture(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadTextureCubemapImage: image layout: layout [

	self ffiCall: #(TextureCubemap LoadTextureCubemap(Image image, int layout))
]

{ #category : 'public' }
LibRaylib >> loadTextureFromImage: image [

	self ffiCall: #(Texture2D LoadTextureFromImage(Image image))
]

{ #category : 'public' }
LibRaylib >> loadUTF8Codepoints: codepoints length: length [

	self ffiCall: #(char* LoadUTF8(const int* codepoints, int length))
]

{ #category : 'public' }
LibRaylib >> loadVrStereoConfig: device [

	self ffiCall: #(VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device))
]

{ #category : 'public' }
LibRaylib >> loadWave: fileName [

	self ffiCall: #(Wave LoadWave(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> loadWaveFromMemoryFileType: fileType fileData: fileData dataSize: dataSize [

	self ffiCall: #(Wave LoadWaveFromMemory(const char* fileType, const uchar* fileData, int dataSize))
]

{ #category : 'public' }
LibRaylib >> loadWaveSamples: wave [

	self ffiCall: #(float* LoadWaveSamples(Wave wave))
]

{ #category : 'accessing - platform' }
LibRaylib >> macLibraryName [

	^ FFIMacLibraryFinder new
		userPaths: #('./CIG/lib');
		findLibrary: 'libraylib.dylib'
]

{ #category : 'public' }
LibRaylib >> maximizeWindow [

	self ffiCall: #(void MaximizeWindow())
]

{ #category : 'public' }
LibRaylib >> measureText: text fontSize: fontSize [

	self ffiCall: #(int MeasureText(const char* text, int fontSize))
]

{ #category : 'public' }
LibRaylib >> measureTextExFont: font text: text fontSize: fontSize spacing: spacing [

	self ffiCall: #(Vector2 MeasureTextEx(Font font, const char* text, float fontSize, float spacing))
]

{ #category : 'public' }
LibRaylib >> memAlloc: size [

	self ffiCall: #(void* MemAlloc(uint size))
]

{ #category : 'public' }
LibRaylib >> memFree: ptr [

	self ffiCall: #(void MemFree(void* ptr))
]

{ #category : 'public' }
LibRaylib >> memReallocPtr: ptr size: size [

	self ffiCall: #(void* MemRealloc(void* ptr, uint size))
]

{ #category : 'public' }
LibRaylib >> minimizeWindow [

	self ffiCall: #(void MinimizeWindow())
]

{ #category : 'drawing' }
LibRaylib >> mode3D: aCamera do: aBlock [

	self beginMode3D: aCamera.
	aBlock ensure: [ 
		self endMode3D ]
]

{ #category : 'public' }
LibRaylib >> openURL: url [

	self ffiCall: #(void OpenURL(const char* url))
]

{ #category : 'public' }
LibRaylib >> pauseAudioStream: stream [

	self ffiCall: #(void PauseAudioStream(AudioStream stream))
]

{ #category : 'public' }
LibRaylib >> pauseMusicStream: music [

	self ffiCall: #(void PauseMusicStream(Music music))
]

{ #category : 'public' }
LibRaylib >> pauseSound: sound [

	self ffiCall: #(void PauseSound(Sound sound))
]

{ #category : 'public' }
LibRaylib >> playAudioStream: stream [

	self ffiCall: #(void PlayAudioStream(AudioStream stream))
]

{ #category : 'public' }
LibRaylib >> playAutomationEvent: event [

	self ffiCall: #(void PlayAutomationEvent(AutomationEvent event))
]

{ #category : 'public' }
LibRaylib >> playMusicStream: music [

	self ffiCall: #(void PlayMusicStream(Music music))
]

{ #category : 'public' }
LibRaylib >> playSound: sound [

	self ffiCall: #(void PlaySound(Sound sound))
]

{ #category : 'public' }
LibRaylib >> pollInputEvents [

	self ffiCall: #(void PollInputEvents())
]

{ #category : 'public' }
LibRaylib >> restoreWindow [

	self ffiCall: #(void RestoreWindow())
]

{ #category : 'public' }
LibRaylib >> resumeAudioStream: stream [

	self ffiCall: #(void ResumeAudioStream(AudioStream stream))
]

{ #category : 'public' }
LibRaylib >> resumeMusicStream: music [

	self ffiCall: #(void ResumeMusicStream(Music music))
]

{ #category : 'public' }
LibRaylib >> resumeSound: sound [

	self ffiCall: #(void ResumeSound(Sound sound))
]

{ #category : 'accessing' }
LibRaylib >> runner [
	
	^ TFProcessLocalWorker new 
		defaultWorker: TFMainThreadRunner uniqueInstance;
		yourself
]

{ #category : 'public' }
LibRaylib >> saveFileDataFileName: fileName data: data dataSize: dataSize [

	self ffiCall: #(int SaveFileData(const char* fileName, void* data, int dataSize))
]

{ #category : 'public' }
LibRaylib >> saveFileTextFileName: fileName text: text [

	self ffiCall: #(int SaveFileText(const char* fileName, char* text))
]

{ #category : 'public' }
LibRaylib >> seekMusicStreamMusic: music position: position [

	self ffiCall: #(void SeekMusicStream(Music music, float position))
]

{ #category : 'public' }
LibRaylib >> setAudioStreamBufferSizeDefault: size [

	self ffiCall: #(void SetAudioStreamBufferSizeDefault(int size))
]

{ #category : 'public' }
LibRaylib >> setAudioStreamCallbackStream: stream callback: callback [

	self ffiCall: #(void SetAudioStreamCallback(AudioStream stream, AudioCallback callback))
]

{ #category : 'public' }
LibRaylib >> setAudioStreamPanStream: stream pan: pan [

	self ffiCall: #(void SetAudioStreamPan(AudioStream stream, float pan))
]

{ #category : 'public' }
LibRaylib >> setAudioStreamPitchStream: stream pitch: pitch [

	self ffiCall: #(void SetAudioStreamPitch(AudioStream stream, float pitch))
]

{ #category : 'public' }
LibRaylib >> setAudioStreamVolumeStream: stream volume: volume [

	self ffiCall: #(void SetAudioStreamVolume(AudioStream stream, float volume))
]

{ #category : 'public' }
LibRaylib >> setAutomationEventBaseFrame: frame [

	self ffiCall: #(void SetAutomationEventBaseFrame(int frame))
]

{ #category : 'public' }
LibRaylib >> setAutomationEventList: list [

	self ffiCall: #(void SetAutomationEventList(AutomationEventList* list))
]

{ #category : 'public' }
LibRaylib >> setClipboardText: text [

	self ffiCall: #(void SetClipboardText(const char* text))
]

{ #category : 'public' }
LibRaylib >> setConfigFlags: flags [

	self ffiCall: #(void SetConfigFlags(uint flags))
]

{ #category : 'public' }
LibRaylib >> setExitKey: key [

	self ffiCall: #(void SetExitKey(int key))
]

{ #category : 'public' }
LibRaylib >> setGamepadMappings: mappings [

	self ffiCall: #(int SetGamepadMappings(const char* mappings))
]

{ #category : 'public' }
LibRaylib >> setGamepadVibrationGamepad: gamepad leftMotor: leftMotor rightMotor: rightMotor [

	self ffiCall: #(void SetGamepadVibration(int gamepad, float leftMotor, float rightMotor))
]

{ #category : 'public' }
LibRaylib >> setGesturesEnabled: flags [

	self ffiCall: #(void SetGesturesEnabled(uint flags))
]

{ #category : 'public' }
LibRaylib >> setLoadFileDataCallback: callback [

	self ffiCall: #(void SetLoadFileDataCallback(LoadFileDataCallback callback))
]

{ #category : 'public' }
LibRaylib >> setLoadFileTextCallback: callback [

	self ffiCall: #(void SetLoadFileTextCallback(LoadFileTextCallback callback))
]

{ #category : 'public' }
LibRaylib >> setMasterVolume: volume [

	self ffiCall: #(void SetMasterVolume(float volume))
]

{ #category : 'public' }
LibRaylib >> setMaterialTextureMaterial: material mapType: mapType texture: texture [

	self ffiCall: #(void SetMaterialTexture(Material* material, int mapType, Texture2D texture))
]

{ #category : 'public' }
LibRaylib >> setModelMeshMaterialModel: model meshId: meshId materialId: materialId [

	self ffiCall: #(void SetModelMeshMaterial(Model* model, int meshId, int materialId))
]

{ #category : 'public' }
LibRaylib >> setMouseCursor: cursor [

	self ffiCall: #(void SetMouseCursor(int cursor))
]

{ #category : 'public' }
LibRaylib >> setMouseOffsetOffsetX: offsetX offsetY: offsetY [

	self ffiCall: #(void SetMouseOffset(int offsetX, int offsetY))
]

{ #category : 'public' }
LibRaylib >> setMousePositionX: x y: y [

	self ffiCall: #(void SetMousePosition(int x, int y))
]

{ #category : 'public' }
LibRaylib >> setMouseScaleScaleX: scaleX scaleY: scaleY [

	self ffiCall: #(void SetMouseScale(float scaleX, float scaleY))
]

{ #category : 'public' }
LibRaylib >> setMusicPanMusic: music pan: pan [

	self ffiCall: #(void SetMusicPan(Music music, float pan))
]

{ #category : 'public' }
LibRaylib >> setMusicPitchMusic: music pitch: pitch [

	self ffiCall: #(void SetMusicPitch(Music music, float pitch))
]

{ #category : 'public' }
LibRaylib >> setMusicVolumeMusic: music volume: volume [

	self ffiCall: #(void SetMusicVolume(Music music, float volume))
]

{ #category : 'public' }
LibRaylib >> setPixelColorDstPtr: dstPtr color: color format: format [

	self ffiCall: #(void SetPixelColor(void* dstPtr, Color color, int format))
]

{ #category : 'public' }
LibRaylib >> setRandomSeed: seed [

	self ffiCall: #(void SetRandomSeed(uint seed))
]

{ #category : 'public' }
LibRaylib >> setSaveFileDataCallback: callback [

	self ffiCall: #(void SetSaveFileDataCallback(int callback))
]

{ #category : 'public' }
LibRaylib >> setSaveFileTextCallback: callback [

	self ffiCall: #(void SetSaveFileTextCallback(SaveFileTextCallback callback))
]

{ #category : 'public' }
LibRaylib >> setShaderValueMatrixShader: shader locIndex: locIndex mat: mat [

	self ffiCall: #(void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat))
]

{ #category : 'public' }
LibRaylib >> setShaderValueShader: shader locIndex: locIndex value: value uniformType: uniformType [

	self ffiCall: #(void SetShaderValue(Shader shader, int locIndex, const void* value, int uniformType))
]

{ #category : 'public' }
LibRaylib >> setShaderValueTextureShader: shader locIndex: locIndex texture: texture [

	self ffiCall: #(void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture))
]

{ #category : 'public' }
LibRaylib >> setShaderValueVShader: shader locIndex: locIndex value: value uniformType: uniformType count: count [

	self ffiCall: #(void SetShaderValueV(Shader shader, int locIndex, const void* value, int uniformType, int count))
]

{ #category : 'public' }
LibRaylib >> setShapesTexture: texture source: source [

	self ffiCall: #(void SetShapesTexture(Texture2D texture, Rectangle source))
]

{ #category : 'public' }
LibRaylib >> setSoundPanSound: sound pan: pan [

	self ffiCall: #(void SetSoundPan(Sound sound, float pan))
]

{ #category : 'public' }
LibRaylib >> setSoundPitchSound: sound pitch: pitch [

	self ffiCall: #(void SetSoundPitch(Sound sound, float pitch))
]

{ #category : 'public' }
LibRaylib >> setSoundVolumeSound: sound volume: volume [

	self ffiCall: #(void SetSoundVolume(Sound sound, float volume))
]

{ #category : 'public' }
LibRaylib >> setTargetFPS: fps [

	self ffiCall: #(void SetTargetFPS(int fps))
]

{ #category : 'public' }
LibRaylib >> setTextLineSpacing: spacing [

	self ffiCall: #(void SetTextLineSpacing(int spacing))
]

{ #category : 'public' }
LibRaylib >> setTextureFilterTexture: texture filter: filter [

	self ffiCall: #(void SetTextureFilter(Texture2D texture, int filter))
]

{ #category : 'public' }
LibRaylib >> setTextureWrapTexture: texture wrap: wrap [

	self ffiCall: #(void SetTextureWrap(Texture2D texture, int wrap))
]

{ #category : 'public' }
LibRaylib >> setTraceLogCallback: callback [

	self ffiCall: #(void SetTraceLogCallback(TraceLogCallback callback))
]

{ #category : 'public' }
LibRaylib >> setTraceLogLevel: logLevel [

	self ffiCall: #(void SetTraceLogLevel(int logLevel))
]

{ #category : 'public' }
LibRaylib >> setWindowFocused [

	self ffiCall: #(void SetWindowFocused())
]

{ #category : 'public' }
LibRaylib >> setWindowIcon: image [

	self ffiCall: #(void SetWindowIcon(Image image))
]

{ #category : 'public' }
LibRaylib >> setWindowIconsImages: images count: count [

	self ffiCall: #(void SetWindowIcons(Image* images, int count))
]

{ #category : 'public' }
LibRaylib >> setWindowMaxSizeWidth: width height: height [

	self ffiCall: #(void SetWindowMaxSize(int width, int height))
]

{ #category : 'public' }
LibRaylib >> setWindowMinSizeWidth: width height: height [

	self ffiCall: #(void SetWindowMinSize(int width, int height))
]

{ #category : 'public' }
LibRaylib >> setWindowMonitor: monitor [

	self ffiCall: #(void SetWindowMonitor(int monitor))
]

{ #category : 'public' }
LibRaylib >> setWindowOpacity: opacity [

	self ffiCall: #(void SetWindowOpacity(float opacity))
]

{ #category : 'public' }
LibRaylib >> setWindowPositionX: x y: y [

	self ffiCall: #(void SetWindowPosition(int x, int y))
]

{ #category : 'public' }
LibRaylib >> setWindowSizeWidth: width height: height [

	self ffiCall: #(void SetWindowSize(int width, int height))
]

{ #category : 'public' }
LibRaylib >> setWindowState: flags [

	self ffiCall: #(void SetWindowState(uint flags))
]

{ #category : 'public' }
LibRaylib >> setWindowTitle: title [

	self ffiCall: #(void SetWindowTitle(const char* title))
]

{ #category : 'public' }
LibRaylib >> showCursor [

	self ffiCall: #(void ShowCursor())
]

{ #category : 'public' }
LibRaylib >> startAutomationEventRecording [

	self ffiCall: #(void StartAutomationEventRecording())
]

{ #category : 'public' }
LibRaylib >> stopAudioStream: stream [

	self ffiCall: #(void StopAudioStream(AudioStream stream))
]

{ #category : 'public' }
LibRaylib >> stopAutomationEventRecording [

	self ffiCall: #(void StopAutomationEventRecording())
]

{ #category : 'public' }
LibRaylib >> stopMusicStream: music [

	self ffiCall: #(void StopMusicStream(Music music))
]

{ #category : 'public' }
LibRaylib >> stopSound: sound [

	self ffiCall: #(void StopSound(Sound sound))
]

{ #category : 'public' }
LibRaylib >> swapScreenBuffer [

	self ffiCall: #(void SwapScreenBuffer())
]

{ #category : 'public' }
LibRaylib >> takeScreenshot: fileName [

	self ffiCall: #(void TakeScreenshot(const char* fileName))
]

{ #category : 'public' }
LibRaylib >> textAppendText: text append: append position: position [

	self ffiCall: #(void TextAppend(char* text, const char* append, int* position))
]

{ #category : 'public' }
LibRaylib >> textCopyDst: dst src: src [

	self ffiCall: #(int TextCopy(char* dst, const char* src))
]

{ #category : 'public' }
LibRaylib >> textFindIndexText: text find: find [

	self ffiCall: #(int TextFindIndex(const char* text, const char* find))
]

{ #category : 'public' }
LibRaylib >> textInsertText: text insert: insert position: position [

	self ffiCall: #(char* TextInsert(const char* text, const char* insert, int position))
]

{ #category : 'public' }
LibRaylib >> textIsEqualText1: text1 text2: text2 [

	self ffiCall: #(int TextIsEqual(const char* text1, const char* text2))
]

{ #category : 'public' }
LibRaylib >> textJoinTextList: textList count: count delimiter: delimiter [

	self ffiCall: #(const char* TextJoin(const char** textList, int count, const char* delimiter))
]

{ #category : 'public' }
LibRaylib >> textLength: text [

	self ffiCall: #(uint TextLength(const char* text))
]

{ #category : 'public' }
LibRaylib >> textReplaceText: text replace: replace by: by [

	self ffiCall: #(char* TextReplace(const char* text, const char* replace, const char* by))
]

{ #category : 'public' }
LibRaylib >> textSplitText: text delimiter: delimiter count: count [

	self ffiCall: #(const char** TextSplit(const char* text, char delimiter, int* count))
]

{ #category : 'public' }
LibRaylib >> textSubtext: text position: position length: length [

	self ffiCall: #(const char* TextSubtext(const char* text, int position, int length))
]

{ #category : 'public' }
LibRaylib >> textToCamel: text [

	self ffiCall: #(const char* TextToCamel(const char* text))
]

{ #category : 'public' }
LibRaylib >> textToFloat: text [

	self ffiCall: #(float TextToFloat(const char* text))
]

{ #category : 'public' }
LibRaylib >> textToInteger: text [

	self ffiCall: #(int TextToInteger(const char* text))
]

{ #category : 'public' }
LibRaylib >> textToLower: text [

	self ffiCall: #(const char* TextToLower(const char* text))
]

{ #category : 'public' }
LibRaylib >> textToPascal: text [

	self ffiCall: #(const char* TextToPascal(const char* text))
]

{ #category : 'public' }
LibRaylib >> textToSnake: text [

	self ffiCall: #(const char* TextToSnake(const char* text))
]

{ #category : 'public' }
LibRaylib >> textToUpper: text [

	self ffiCall: #(const char* TextToUpper(const char* text))
]

{ #category : 'public' }
LibRaylib >> toggleBorderlessWindowed [

	self ffiCall: #(void ToggleBorderlessWindowed())
]

{ #category : 'public' }
LibRaylib >> toggleFullscreen [

	self ffiCall: #(void ToggleFullscreen())
]

{ #category : 'accessing - platform' }
LibRaylib >> unix64LibraryName [

	^ FFIUnix64LibraryFinder new
		userPaths: #('./CIG/lib');
		findLibrary: 'libraylib.so'
]

{ #category : 'public' }
LibRaylib >> unloadAudioStream: stream [

	self ffiCall: #(void UnloadAudioStream(AudioStream stream))
]

{ #category : 'public' }
LibRaylib >> unloadAutomationEventList: list [

	self ffiCall: #(void UnloadAutomationEventList(AutomationEventList list))
]

{ #category : 'public' }
LibRaylib >> unloadCodepoints: codepoints [

	self ffiCall: #(void UnloadCodepoints(int* codepoints))
]

{ #category : 'public' }
LibRaylib >> unloadDirectoryFiles: files [

	self ffiCall: #(void UnloadDirectoryFiles(FilePathList files))
]

{ #category : 'public' }
LibRaylib >> unloadDroppedFiles: files [

	self ffiCall: #(void UnloadDroppedFiles(FilePathList files))
]

{ #category : 'public' }
LibRaylib >> unloadFileData: data [

	self ffiCall: #(void UnloadFileData(uchar* data))
]

{ #category : 'public' }
LibRaylib >> unloadFileText: text [

	self ffiCall: #(void UnloadFileText(char* text))
]

{ #category : 'public' }
LibRaylib >> unloadFont: font [

	self ffiCall: #(void UnloadFont(Font font))
]

{ #category : 'public' }
LibRaylib >> unloadFontDataGlyphs: glyphs glyphCount: glyphCount [

	self ffiCall: #(void UnloadFontData(GlyphInfo* glyphs, int glyphCount))
]

{ #category : 'public' }
LibRaylib >> unloadImage: image [

	self ffiCall: #(void UnloadImage(Image image))
]

{ #category : 'public' }
LibRaylib >> unloadImageColors: colors [

	self ffiCall: #(void UnloadImageColors(Color* colors))
]

{ #category : 'public' }
LibRaylib >> unloadImagePalette: colors [

	self ffiCall: #(void UnloadImagePalette(Color* colors))
]

{ #category : 'public' }
LibRaylib >> unloadMaterial: material [

	self ffiCall: #(void UnloadMaterial(Material material))
]

{ #category : 'public' }
LibRaylib >> unloadMesh: mesh [

	self ffiCall: #(void UnloadMesh(Mesh mesh))
]

{ #category : 'public' }
LibRaylib >> unloadModel: model [

	self ffiCall: #(void UnloadModel(Model model))
]

{ #category : 'public' }
LibRaylib >> unloadModelAnimation: anim [

	self ffiCall: #(void UnloadModelAnimation(ModelAnimation anim))
]

{ #category : 'public' }
LibRaylib >> unloadModelAnimations: animations animCount: animCount [

	self ffiCall: #(void UnloadModelAnimations(ModelAnimation* animations, int animCount))
]

{ #category : 'public' }
LibRaylib >> unloadMusicStream: music [

	self ffiCall: #(void UnloadMusicStream(Music music))
]

{ #category : 'public' }
LibRaylib >> unloadRandomSequence: sequence [

	self ffiCall: #(void UnloadRandomSequence(int* sequence))
]

{ #category : 'public' }
LibRaylib >> unloadRenderTexture: target [

	self ffiCall: #(void UnloadRenderTexture(RenderTexture2D target))
]

{ #category : 'public' }
LibRaylib >> unloadShader: shader [

	self ffiCall: #(void UnloadShader(Shader shader))
]

{ #category : 'public' }
LibRaylib >> unloadSound: sound [

	self ffiCall: #(void UnloadSound(Sound sound))
]

{ #category : 'public' }
LibRaylib >> unloadSoundAlias: alias [

	self ffiCall: #(void UnloadSoundAlias(Sound alias))
]

{ #category : 'public' }
LibRaylib >> unloadTexture: texture [

	self ffiCall: #(void UnloadTexture(Texture2D texture))
]

{ #category : 'public' }
LibRaylib >> unloadUTF8: text [

	self ffiCall: #(void UnloadUTF8(char* text))
]

{ #category : 'public' }
LibRaylib >> unloadVrStereoConfig: config [

	self ffiCall: #(void UnloadVrStereoConfig(VrStereoConfig config))
]

{ #category : 'public' }
LibRaylib >> unloadWave: wave [

	self ffiCall: #(void UnloadWave(Wave wave))
]

{ #category : 'public' }
LibRaylib >> unloadWaveSamples: samples [

	self ffiCall: #(void UnloadWaveSamples(float* samples))
]

{ #category : 'public' }
LibRaylib >> updateAudioStream: stream data: data frameCount: frameCount [

	self ffiCall: #(void UpdateAudioStream(AudioStream stream, const void* data, int frameCount))
]

{ #category : 'public' }
LibRaylib >> updateCamera: camera mode: mode [

	self ffiCall: #(void UpdateCamera(Camera* camera, int mode))
]

{ #category : 'public' }
LibRaylib >> updateCameraProCamera: camera movement: movement rotation: rotation zoom: zoom [

	self ffiCall: #(void UpdateCameraPro(Camera* camera, Vector3 movement, Vector3 rotation, float zoom))
]

{ #category : 'public' }
LibRaylib >> updateMeshBufferMesh: mesh index: index data: data dataSize: dataSize offset: offset [

	self ffiCall: #(void UpdateMeshBuffer(Mesh mesh, int index, const void* data, int dataSize, int offset))
]

{ #category : 'public' }
LibRaylib >> updateModelAnimationModel: model anim: anim frame: frame [

	self ffiCall: #(void UpdateModelAnimation(Model model, ModelAnimation anim, int frame))
]

{ #category : 'public' }
LibRaylib >> updateMusicStream: music [

	self ffiCall: #(void UpdateMusicStream(Music music))
]

{ #category : 'public' }
LibRaylib >> updateSound: sound data: data sampleCount: sampleCount [

	self ffiCall: #(void UpdateSound(Sound sound, const void* data, int sampleCount))
]

{ #category : 'public' }
LibRaylib >> updateTexture: texture pixels: pixels [

	self ffiCall: #(void UpdateTexture(Texture2D texture, const void* pixels))
]

{ #category : 'public' }
LibRaylib >> updateTextureRecTexture: texture rec: rec pixels: pixels [

	self ffiCall: #(void UpdateTextureRec(Texture2D texture, Rectangle rec, const void* pixels))
]

{ #category : 'public' }
LibRaylib >> uploadMesh: mesh dynamic: dynamic [

	self ffiCall: #(void UploadMesh(Mesh* mesh, bool dynamic))
]

{ #category : 'public' }
LibRaylib >> waitTime: seconds [

	self ffiCall: #(void WaitTime(double seconds))
]

{ #category : 'public' }
LibRaylib >> waveCopy: wave [

	self ffiCall: #(Wave WaveCopy(Wave wave))
]

{ #category : 'public' }
LibRaylib >> waveCropWave: wave initFrame: initFrame finalFrame: finalFrame [

	self ffiCall: #(void WaveCrop(Wave* wave, int initFrame, int finalFrame))
]

{ #category : 'public' }
LibRaylib >> waveCropWave: wave initSample: initSample finalSample: finalSample [

	self ffiCall: #(void WaveCrop(Wave* wave, int initSample, int finalSample))
]

{ #category : 'public' }
LibRaylib >> waveFormatWave: wave sampleRate: sampleRate sampleSize: sampleSize channels: channels [

	self ffiCall: #(void WaveFormat(Wave* wave, int sampleRate, int sampleSize, int channels))
]

{ #category : 'accessing - platform' }
LibRaylib >> win32LibraryName [

	^ FFIWindowsLibraryFinder new
		userPaths: #('./CIG/lib');
		findLibrary: 'raylib.dll'
]

{ #category : 'public' }
LibRaylib >> windowShouldClose [

	self ffiCall: #(int WindowShouldClose())
]
