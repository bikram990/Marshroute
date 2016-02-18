public protocol TransitionAnimationsLauncher: class {
    func launchAnimationOfPerformingTransition(
        launchingContext launchingContext: TransitionAnimationLaunchingContext)
 
    func launchAnimationOfUndoingTransition(
        launchingContext launchingContext: TransitionAnimationLaunchingContext)
    
    func launchAnimationOfResettingWithTransition(
        launchingContext launchingContext: TransitionAnimationLaunchingContext)
}