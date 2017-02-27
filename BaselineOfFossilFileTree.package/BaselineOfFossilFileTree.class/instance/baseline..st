baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [ 
		
		spec configuration: 'OSSubprocess' with: [ 
			spec versionString: #stable;
				repository: 'github://marianopeck/OSSubprocess/repository' ];
			yourself.
		
		spec package: 'MonticelloFileTree-Fossil' with: [ 
			spec requires: #('MonticelloFileTree-Core' 'OSSubprocess') ];
			yourself ]