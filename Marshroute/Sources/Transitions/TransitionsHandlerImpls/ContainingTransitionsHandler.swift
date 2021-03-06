/// Базовый класс для содержащих обработчиков переходов
open class ContainingTransitionsHandler: TransitionsHandlerContainer, TransitionsCoordinatorHolder, TransitionsHandler {
    // MARK: - TransitionsCoordinatorHolder    
    public let transitionsCoordinator: TransitionsCoordinator
    
    public init(transitionsCoordinator: TransitionsCoordinator)
    {
        self.transitionsCoordinator = transitionsCoordinator
    }

    // MARK: - TransitionsHandlerContainer
    open var allTransitionsHandlers: [AnimatingTransitionsHandler]? {
        return nil
    }
    
    open var visibleTransitionsHandlers: [AnimatingTransitionsHandler]? {
        return nil
    }

    // MARK: - TransitionsHandler
    open func performTransition(context: PresentationTransitionContext)
    {
        transitionsCoordinator.coordinatePerformingTransition(context: context, forContainingTransitionsHandler: self)
    }
    
    open func undoTransitionsAfter(transitionId: TransitionId)
    {
        transitionsCoordinator.coordinateUndoingTransitionsAfter(transitionId: transitionId, forContainingTransitionsHandler: self)
    }
    
    open func undoTransitionWith(transitionId: TransitionId)
    {
        transitionsCoordinator.coordinateUndoingTransitionWith(transitionId: transitionId, forContainingTransitionsHandler: self)
    }
    
    open func undoAllChainedTransitions()
    {
        marshroutePrint("такой метод нельзя посылать контейнеру обработчиков переходов. только анимирующему обработчику")
    }
    
    open func undoAllTransitions()
    {
        marshroutePrint("такой метод нельзя посылать контейнеру обработчиков переходов. только анимирующему обработчику")
    }
    
    open func resetWithTransition(context: ResettingTransitionContext)
    {
        marshroutePrint("такой метод нельзя посылать контейнеру обработчиков переходов. только анимирующему обработчику")
    }
}
