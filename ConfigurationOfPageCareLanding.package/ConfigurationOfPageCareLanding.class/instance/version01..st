versions
version01: spec
        <version: '0.1' imports: #('0.1-baseline')>
        spec for: #'common' do: [
                spec repository: 'gitfiletree://' , FileSystem workingDirectory fullName.
                spec
							project: 'TMM' with: [ 
									spec
											className: #ConfigurationOfTMM;
											versionString: #'stable';
											repository: 'github://yannij/TMM:master/repository';
											loads: #('stable')
									 ];
							project: 'Teapot' with: [
                                spec
                                        className: #ConfigurationOfTeapot;
                                        versionString: #'stable';
                                        repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main/';
													loads: #('default') ]; "Core"
                        project: 'Zinc' with: [
                                spec
                                        className: #ConfigurationOfZincHTTPComponents;
                                        versionString: #'stable';
                                        repository: 'http://smalltalkhub.com/mc/Pharo/Pharo40/main';
													loads: #('REST' 'Tests') ];
                        project: 'NeoJSON' with: [
                                spec
                                        className: #ConfigurationOfNeoJSON;
                                        versionString: #'stable';
                                        repository: 'http://mc.stfx.eu/Neo' ];
                        project: 'BabyMock2' with: [
                                spec
                                        className: #ConfigurationOfBabyMock2;
                                        versionString: #'stable';
                                        repository: 'http://smalltalkhub.com/mc/zeroflag/BabyMock2/main/' ];
                        project: 'VoyageMongo' with: [
                                spec
                                        className: #ConfigurationOfVoyageMongo;
                                        versionString: #'stable';
                                        repository: 'http://smalltalkhub.com/mc/estebanlm/Voyage/main/' ].
                spec baseline: 'DeployUtils' with: [ spec repository: 'github://fstephany/DeployUtils/repository' ].
                spec
                        package: #'PageCare-Landing' with: [ spec requires: #('Teapot' 'Zinc' 'VoyageMongo') ].
                spec
                        group: 'core' with: #(#'PageCare-Landing' );
                        group: 'default' with: #('core' ). ].
