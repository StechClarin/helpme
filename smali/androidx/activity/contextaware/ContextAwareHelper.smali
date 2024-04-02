package androidx.activity.contextaware;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.Iterator;

public final class ContextAwareHelper {

    // Champ pour stocker le contexte
    private volatile Context mContext;

    // Ensemble pour stocker les listeners
    private final Set<OnContextAvailableListener> mListeners;

    // Constructeur
    public ContextAwareHelper() {
        // Initialise l'ensemble des listeners avec un ensemble thread-safe
        mListeners = new CopyOnWriteArraySet<>();
    }

    // Méthode pour ajouter un listener
    public void addOnContextAvailableListener(OnContextAvailableListener listener) {
        // Vérifie si le contexte est disponible
        if (mContext != null) {
            // Si le contexte est disponible, notifie immédiatement le listener
            listener.onContextAvailable(mContext);
        }
        // Ajoute le listener à l'ensemble
        mListeners.add(listener);
    }

    // Méthode pour effacer le contexte disponible
    public void clearAvailableContext() {
        // Efface le contexte
        mContext = null;
    }

    // Méthode pour distribuer le contexte disponible à tous les listeners
    public void dispatchOnContextAvailable(Context context) {
        // Met à jour le contexte
        mContext = context;
        // Parcourt tous les listeners et notifie chacun d'eux
        for (OnContextAvailableListener listener : mListeners) {
            listener.onContextAvailable(context);
        }
    }
}
