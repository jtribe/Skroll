# A story about using storyboard

## Task: Create a scroll view with a content view

- scroll view is the main view (not sure if that's the best idea)
- add view to scroll view (the content view)
- make sure it has leading,trailing, top, bottom, x and y-align relative to scrollview
- make sure there are no margins
- make each view vertically spaced to view above 

### IMPORTANT
- the bottom constaint from the content view to the scrollview must be marked as remove at build time
- Make the last view constraint to the bottom of the content view. This way the content view will resize itself and make things scrollable

http://spin.atomicobject.com/2014/03/05/uiscrollview-autolayout-ios/

## Task: Hide a view and make content view adjust

- Make height constaint for the view you want to hide an outlet
- in viewWillAppear set constraint constant to 0
- This will resize everything :-)


