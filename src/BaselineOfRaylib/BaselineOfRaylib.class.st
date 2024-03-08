Class {
	#name : 'BaselineOfRaylib',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRaylib',
	#package : 'BaselineOfRaylib'
}

{ #category : 'baselines' }
BaselineOfRaylib >> baseline: spec [
	<baseline>
	
	spec for: #common do: [ 
		spec package: 'Raylib' ]
]
