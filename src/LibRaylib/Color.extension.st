Extension { #name : 'Color' }

{ #category : '*LibRaylib' }
Color >> asRayColor [

	^ RayColor newR: self red g: self green b: self blue a: self alpha
]
