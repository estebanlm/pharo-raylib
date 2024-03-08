Class {
	#name : 'RayTraceLogLevel',
	#superclass : 'RayEnumeration',
	#classTraits : '{} + TraitedClass',
	#classVars : [
		'LOG_ALL',
		'LOG_DEBUG',
		'LOG_ERROR',
		'LOG_FATAL',
		'LOG_INFO',
		'LOG_NONE',
		'LOG_TRACE',
		'LOG_WARNING'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
RayTraceLogLevel class >> LOG_ALL [
	"This method was automatically generated"
	^ LOG_ALL
]

{ #category : 'accessing enum' }
RayTraceLogLevel class >> LOG_DEBUG [
	"This method was automatically generated"
	^ LOG_DEBUG
]

{ #category : 'accessing enum' }
RayTraceLogLevel class >> LOG_ERROR [
	"This method was automatically generated"
	^ LOG_ERROR
]

{ #category : 'accessing enum' }
RayTraceLogLevel class >> LOG_FATAL [
	"This method was automatically generated"
	^ LOG_FATAL
]

{ #category : 'accessing enum' }
RayTraceLogLevel class >> LOG_INFO [
	"This method was automatically generated"
	^ LOG_INFO
]

{ #category : 'accessing enum' }
RayTraceLogLevel class >> LOG_NONE [
	"This method was automatically generated"
	^ LOG_NONE
]

{ #category : 'accessing enum' }
RayTraceLogLevel class >> LOG_TRACE [
	"This method was automatically generated"
	^ LOG_TRACE
]

{ #category : 'accessing enum' }
RayTraceLogLevel class >> LOG_WARNING [
	"This method was automatically generated"
	^ LOG_WARNING
]

{ #category : 'enum declaration' }
RayTraceLogLevel class >> enumDecl [

	^ #(
	LOG_ALL 0
	LOG_TRACE 1
	LOG_DEBUG 2
	LOG_INFO 3
	LOG_WARNING 4
	LOG_ERROR 5
	LOG_FATAL 6
	LOG_NONE 7 )
]
