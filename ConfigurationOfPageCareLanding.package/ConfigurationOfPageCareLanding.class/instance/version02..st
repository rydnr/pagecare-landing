versions
version02: spec
        <version: '0.2' imports: #('0.2-baseline')>
        spec for: #'common' do: [
                spec
							project: 'TMM' with: [ 
									spec
											className: #ConfigurationOfTMM;
											versionString: #'stable';
											loads: #('stable')
									 ]
								].