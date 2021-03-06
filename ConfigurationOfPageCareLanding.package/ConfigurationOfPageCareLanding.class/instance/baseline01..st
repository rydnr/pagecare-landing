baselines
baseline01: spec
        <version: '0.1-baseline'>
        spec for: #'common' do: [
                spec blessing: #'baseline'.
                spec repository: 'gitfiletree://' , FileSystem workingDirectory fullName.
                spec
                        project: 'Teapot' with: [
                                spec
                                        className: #ConfigurationOfTeapot;
                                        repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main/';
													loads: #('default') ]; "Core"
                        project: 'Zinc' with: [
                                spec
                                        className: #ConfigurationOfZincHTTPComponents;
                                        repository: 'http://smalltalkhub.com/mc/Pharo/Pharo40/main';
													loads: #('REST' 'Tests') ];
                        project: 'NeoJSON' with: [
                                spec
                                        className: #ConfigurationOfNeoJSON;
                                        repository: 'http://mc.stfx.eu/Neo' ];
                        project: 'BabyMock2' with: [
                                spec
                                        className: #ConfigurationOfBabyMock2;
                                        repository: 'http://smalltalkhub.com/mc/zeroflag/BabyMock2/main/' ];
                        project: 'VoyageMongo' with: [
                                spec
                                        className: #ConfigurationOfVoyageMongo;
                                        repository: 'http://smalltalkhub.com/mc/estebanlm/Voyage/main/' ].
                spec baseline: 'DeployUtils' with: [ spec repository: 'github://fstephany/DeployUtils/repository' ].
                spec
                        package: #'PageCare-Landing' with: [ spec requires: #('Teapot') ].
                spec
                        group: 'core' with: #(#'PageCare-Landing');
                        group: 'default' with: #('core'). ].
