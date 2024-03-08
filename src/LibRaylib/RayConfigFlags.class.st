Class {
	#name : 'RayConfigFlags',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'FLAG_BORDERLESS_WINDOWED_MODE',
		'FLAG_FULLSCREEN_MODE',
		'FLAG_INTERLACED_HINT',
		'FLAG_MSAA_4X_HINT',
		'FLAG_VSYNC_HINT',
		'FLAG_WINDOW_ALWAYS_RUN',
		'FLAG_WINDOW_HIDDEN',
		'FLAG_WINDOW_HIGHDPI',
		'FLAG_WINDOW_MAXIMIZED',
		'FLAG_WINDOW_MINIMIZED',
		'FLAG_WINDOW_MOUSE_PASSTHROUGH',
		'FLAG_WINDOW_RESIZABLE',
		'FLAG_WINDOW_TOPMOST',
		'FLAG_WINDOW_TRANSPARENT',
		'FLAG_WINDOW_UNDECORATED',
		'FLAG_WINDOW_UNFOCUSED'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_BORDERLESS_WINDOWED_MODE [
	"This method was automatically generated"
	^ FLAG_BORDERLESS_WINDOWED_MODE
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_FULLSCREEN_MODE [
	"This method was automatically generated"
	^ FLAG_FULLSCREEN_MODE
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_INTERLACED_HINT [
	"This method was automatically generated"
	^ FLAG_INTERLACED_HINT
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_MSAA_4X_HINT [
	"This method was automatically generated"
	^ FLAG_MSAA_4X_HINT
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_VSYNC_HINT [
	"This method was automatically generated"
	^ FLAG_VSYNC_HINT
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_ALWAYS_RUN [
	"This method was automatically generated"
	^ FLAG_WINDOW_ALWAYS_RUN
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_HIDDEN [
	"This method was automatically generated"
	^ FLAG_WINDOW_HIDDEN
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_HIGHDPI [
	"This method was automatically generated"
	^ FLAG_WINDOW_HIGHDPI
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_MAXIMIZED [
	"This method was automatically generated"
	^ FLAG_WINDOW_MAXIMIZED
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_MINIMIZED [
	"This method was automatically generated"
	^ FLAG_WINDOW_MINIMIZED
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_MOUSE_PASSTHROUGH [
	"This method was automatically generated"
	^ FLAG_WINDOW_MOUSE_PASSTHROUGH
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_RESIZABLE [
	"This method was automatically generated"
	^ FLAG_WINDOW_RESIZABLE
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_TOPMOST [
	"This method was automatically generated"
	^ FLAG_WINDOW_TOPMOST
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_TRANSPARENT [
	"This method was automatically generated"
	^ FLAG_WINDOW_TRANSPARENT
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_UNDECORATED [
	"This method was automatically generated"
	^ FLAG_WINDOW_UNDECORATED
]

{ #category : 'accessing enum' }
RayConfigFlags class >> FLAG_WINDOW_UNFOCUSED [
	"This method was automatically generated"
	^ FLAG_WINDOW_UNFOCUSED
]

{ #category : 'enum declaration' }
RayConfigFlags class >> enumDecl [

	^ #(
	FLAG_VSYNC_HINT 64
	FLAG_FULLSCREEN_MODE 2
	FLAG_WINDOW_RESIZABLE 4
	FLAG_WINDOW_UNDECORATED 8
	FLAG_WINDOW_HIDDEN 128
	FLAG_WINDOW_MINIMIZED 512
	FLAG_WINDOW_MAXIMIZED 1024
	FLAG_WINDOW_UNFOCUSED 2048
	FLAG_WINDOW_TOPMOST 4096
	FLAG_WINDOW_ALWAYS_RUN 256
	FLAG_WINDOW_TRANSPARENT 16
	FLAG_WINDOW_HIGHDPI 8192
	FLAG_WINDOW_MOUSE_PASSTHROUGH 16384
	FLAG_BORDERLESS_WINDOWED_MODE 32768
	FLAG_MSAA_4X_HINT 32
	FLAG_INTERLACED_HINT 65536 )
]
