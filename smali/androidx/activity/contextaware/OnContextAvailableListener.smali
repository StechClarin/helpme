package androidx.activity.contextaware;

import android.content.Context;

// Interface pour écouter la disponibilité du contexte
public interface OnContextAvailableListener {

    // Méthode appelée lorsque le contexte est disponible
    public abstract void onContextAvailable(Context context);
}
