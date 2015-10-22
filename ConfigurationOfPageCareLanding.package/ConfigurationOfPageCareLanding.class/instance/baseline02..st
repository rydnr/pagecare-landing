baselines
baseline02: spec
        <version: '0.2-baseline'>
        spec for: #'common' do: [
                spec blessing: #'baseline'.
                spec repository: 'gitfiletree://' , FileSystem workingDirectory fullName.
                spec
							project: 'TMM' with: [ 
									spec
											className: #ConfigurationOfTMM;
											repository: 'github://yannij/TMM:master/repository'
									 ].
                spec baseline: 'DeployUtils' with: [ spec repository: 'github://fstephany/DeployUtils/repository' ].
                spec
                        package: #'PageCare-Landing' with: [ spec requires: #('TMM') ].
                spec
                        group: 'core' with: #(#'PageCare-Landing');
                        group: 'default' with: #('core'). ].
