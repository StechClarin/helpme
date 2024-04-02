/**
 * This class represents the API 19 implementation for ComponentActivity.
 * It provides methods for handling pending input events.
 */
public abstract class ComponentActivity$Api19Impl {
    /**
     * Cancels pending input events for the specified view.
     * @param view The view for which pending input events should be cancelled.
     */
    public static void cancelPendingInputEvents(View view) {
        view.cancelPendingInputEvents();
    }
}
