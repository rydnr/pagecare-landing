public
start
	"Starts the application"
	znServer := ZnServer startOn: self port.
	znServer delegate: self delegate.
	znServer logToTranscript