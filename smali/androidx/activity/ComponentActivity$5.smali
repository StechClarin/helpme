/**
 * This class represents a LifecycleEventObserver for ComponentActivity.
 */
public class ComponentActivity$5 implements LifecycleEventObserver {
    // Instance field representing the associated ComponentActivity
    private final ComponentActivity this$0;

    /**
     * Constructor for ComponentActivity$5.
     * @param activity The associated ComponentActivity instance.
     */
    public ComponentActivity$5(ComponentActivity activity) {
        this.this$0 = activity;
    }

    /**
     * Method called when the state of the Lifecycle changes.
     * @param owner The LifecycleOwner whose state is changing.
     * @param event The Lifecycle.Event that occurred.
     */
    @Override
    public void onStateChanged(LifecycleOwner owner, Lifecycle.Event event) {
        // Ensure ViewModelStore is initialized
        this.this$0.ensureViewModelStore();

        // Remove this observer from the Lifecycle
        Lifecycle lifecycle = this.this$0.getLifecycle();
        if (lifecycle != null) {
            lifecycle.removeObserver(this);
        }
    }
}
