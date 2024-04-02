/**
 * This class represents a LifecycleEventObserver for ComponentActivity.
 */
public class ComponentActivity$4 implements LifecycleEventObserver {
    // Instance field representing the associated ComponentActivity
    private final ComponentActivity this$0;

    /**
     * Constructor for ComponentActivity$4.
     * @param activity The associated ComponentActivity instance.
     */
    public ComponentActivity$4(ComponentActivity activity) {
        this.this$0 = activity;
    }

    /**
     * Method called when the state of the Lifecycle changes.
     * @param owner The LifecycleOwner whose state is changing.
     * @param event The Lifecycle.Event that occurred.
     */
    @Override
    public void onStateChanged(LifecycleOwner owner, Lifecycle.Event event) {
        // Check if the event is ON_DESTROY
        if (event == Lifecycle.Event.ON_DESTROY) {
            // Clear available context from the mContextAwareHelper
            ContextAwareHelper helper = this.this$0.mContextAwareHelper;
            if (helper != null) {
                helper.clearAvailableContext();
            }

            // Check if activity is not changing configurations
            if (!this.this$0.isChangingConfigurations()) {
                // Clear ViewModelStore if activity is not changing configurations
                ViewModelStore viewModelStore = this.this$0.getViewModelStore();
                if (viewModelStore != null) {
                    viewModelStore.clear();
                }
            }
        }
    }
}
