baselines
baseline: spec
	<baseline>

	spec
		baseline: 'Myg'
		with: [ spec repository: 'github://Ducasse/Myg:v1.0.1/src' ].

	spec
		package: '2048Game' 
		with: [ spec requires: #( 'Myg' ) ];
		package: '2048Game-Tests'
		with: [ spec requires: #( '2048Game' ) ]