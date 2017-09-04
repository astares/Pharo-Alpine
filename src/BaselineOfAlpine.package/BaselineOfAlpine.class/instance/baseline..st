baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.	
		spec package: #'Alpine-Core-Web'.	 
		spec package: #'Alpine-Pharo-Tools' with: [
				spec requires: #('Alpine-Core-Web' ). ].
		spec package: #'Alpine-Tests-Core-Web' with: [
				spec requires: #('Alpine-Core-Web' ). ].
		spec 
			group: 'Core' with: #(#'Alpine-Core-Web' );
			group: 'Tools' with: #(#'Alpine-Pharo-Tools' );
			group: 'Tests' with: #(#'Alpine-Tests-Core-Web' );
			group: 'all' with: #(#'Tools' );
			group: 'default' with: #('all' ). ].