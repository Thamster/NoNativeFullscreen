NoNativeFullscreen
==================

simbl plugin that replaces NSWindow toggleFullScreen with a no op.


hey hey!, ho ho!, apple native fullscreen has to go!

HowTo:
======
	clone this repo
	open NoFullScreen.xcodeproj 
	building in xcode will automatically install into your user's simbl dir. ie:
		/Users/your_name_here/Library/Application\ Support/SIMBL/Plugins/NoFullScreen.bundle 

enable the simbl plugin using EasySimbl or whatever you prefer.

logout / log back in. 

fullscreen will be disabled on all apps that aren't protected by sandboxd

I think Afloat found a workaround for this, I'll welcome any pull requests to add that feature.

