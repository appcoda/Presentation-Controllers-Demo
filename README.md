# A simple demo for presentation controllers in iOS 8

Before the introduction of iOS 8 and specifically, Adaptive UI, whenever you wanted to display presentation sheets in a universal app, you had to make platform checks to verify whether the device the app was running on was an iPhone or an iPad to decide whether to present the sheet as a popover or to push a view onto the screen.

iOS 8 introduces presentation controllers which make the above unnecessary. Now you can write a single code path for your presentation, that works on all devices, adapting itself to the device size and orientation. You do this by specifying a preferred presentation style when presenting a view controller, for example a popover, and then according to the size class of your device, the OS will either present the view controller in that style or switch to an alternative style, for example a popover being presented as full screen on compact-width sizes.

To learn more about how to use presentation controllers, check out the full tutorial here:

http://www.appcoda.com/presentation-controllers-tutorial
