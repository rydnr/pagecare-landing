baselines
baseline01: spec 
        <version: '0.1-baseline'>
        
   spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.smalltalkhub.com/mc/JoseSanLeandro/PageCareLanding/main'. 

		spec package: 'PageCare-Landing'.
			
    	spec group: 'Core' with: #('PageCare-Landing')
	].