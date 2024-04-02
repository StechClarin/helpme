import androidx.core.app.ComponentActivity;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.HasDefaultViewModelProvide rFactory;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.view.MenuHostHelper;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.contextaware.ContextAwareHelper;
import androidx.activity.contextaware.OnContextAvailableListener;

import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public class ComponentActivity extends ComponentActivity
        implements ViewModelStoreOwner, HasDefaultViewModelProviderFactory,
        SavedStateRegistryOwner, OnBackPressedDispatcherOwner,
        ActivityResultRegistryOwner {

    private final ActivityResultRegistry mActivityResultRegistry;
    private final int mContentLayoutId;
    private final ContextAwareHelper mContextAwareHelper = new ContextAwareHelper();
    private boolean mDispatchingOnMultiWindowModeChanged;
    private boolean mDispatchingOnPictureInPictureModeChanged;
    private final LifecycleRegistry mLifecycleRegistry = new LifecycleRegistry(this);
    private final MenuHostHelper mMenuHostHelper = new MenuHostHelper(() -> {});
    private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
    private final OnBackPressedDispatcher mOnBackPressedDispatcher = new OnBackPressedDispatcher(() -> {});
    private final CopyOnWriteArrayList<Runnable> mOnConfigurationChangedListeners = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<Runnable> mOnTrimMemoryListeners = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<Runnable> mOnNewIntentListeners = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<Runnable> mOnMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<Runnable> mOnPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
    private final SavedStateRegistryController mSavedStateRegistryController =
            SavedStateRegistryController.create(this);
    private ViewModelStore mViewModelStore;

    public static void $r8$lambda$Mg7_hF6_XzI8jXHyb9wZTvbC5nA(ComponentActivity componentActivity, Context context) {
        componentActivity.lambda$new$1(context);
    }

    public static Bundle $r8$lambda$uMG6y9sMaPUFZmnRrSgWpORKiAI(ComponentActivity componentActivity) {
        return componentActivity.lambda$new$0();
    }

    public ComponentActivity() {
        super();
        mContextAwareHelper.clearAvailableContext();
        mMenuHostHelper.performAttach();
        SavedStateHandleSupport.enableSavedStateHandles(this);
        SavedStateRegistry registry = getSavedStateRegistry();
        registry.registerSavedStateProvider("android:support:activity-result", this::getActivityResultSavedState);
        addOnContextAvailableListener(context -> {});
        if (getLifecycle() != null) {
            getLifecycle().addObserver(new ComponentActivity$3(this));
            getLifecycle().addObserver(new ComponentActivity$4(this));
            getLifecycle().addObserver(new ComponentActivity$5(this));
        } else {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
    }

}
