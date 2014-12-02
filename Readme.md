# Issue

TestController has overriden init with its' own implementation that accepts
an argument.

It then calls super specifying no arguments.

However, the controller never gets deallocated.

To see this in action press the button 'Push new controller' multiple times.

Then press the back button to pop the view controllers off.

Now trigger a memory warning via the simulator and you will see the
NSLog output from the controllers that are still alive.

I've also added NSLog statement to dealloc which is never called.