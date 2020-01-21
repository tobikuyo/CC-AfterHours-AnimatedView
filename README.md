# CC-AfterHours-AnimatedView
CC's After Hours project with more practice on view animations.

## Step 1: Setup
1. Create a new Xcode project.
2. Delete the `ViewController.swift` file. 
3. Drag in a square picture to the `Assets` folder. 
------
## Step 2: Storyboard
### Main View Controller:
1. Place a `label` and constrain it near the top/center of the view. Name it `Main VC`. 
2. Place a `table view`  beneath the `label` and add constraints. 
3. Change the background color of the view to default (for dark mode) or black. (You may have to change your label color.)
4. Embed this `view controller` in a `Navigation Controller`. 
### Animated View Controller:
1. Drag out a `view controller`. Place it in front of the `Navigation Controller` scene. 
2. Make its `view` default (for dark mode) or black. 
3. Place an `image view` and constrain it in the center horizontally and vertically. Give it a height and width of 300. 
4. Choose the photo for this `image view`. 
5. Make sure this `view controller` is the `initial view`. 
### Launchscreen:
1. Go to `Launchscreen.storyboard`. 
2. Make its `view` default (for dark mode) or black. 
3. Place an `image view` and constrain it in the center horizontally and vertically. Give it a height and width of 300. 
4. Choose the same photo as you did previously for this `image view`. 
------
## Step 3: The Magic
### Main View Controller:
1. Create a new `UIViewController` file. Name it `MainViewController`. 
### Animated View Controller:
1. Create a new `UIViewController` file. Name it `AnimatedViewController`. 
2. Create an outlet for your `imageView`. 
3. Create a function called `animateImage()`
4. Add two animations, one for `scaling` and one for `opacity`.
5. Create a `segue` programmatically, and give it a delay of 3 seconds on the `DispatchQueue.main.asyncAfter`
6. Call your function in `viewDidAppear`. 
