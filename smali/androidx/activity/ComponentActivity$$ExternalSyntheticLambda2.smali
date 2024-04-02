package androidx.activity;

import android.content.Context;

// Classe représentant une lambda synthétique pour écouter la disponibilité du contexte dans ComponentActivity
public final class ComponentActivity$$ExternalSyntheticLambda2 implements androidx.activity.contextaware.OnContextAvailableListener {

    // Champ pour stocker l'instance de ComponentActivity
    public final ComponentActivity f$0;

    // Constructeur de la lambda
    public ComponentActivity$$ExternalSyntheticLambda2(ComponentActivity componentActivity) {
        this.f$0 = componentActivity;
    }

    // Méthode appelée lorsque le contexte est disponible
    public final void onContextAvailable(Context context) {
        // Appel d'une méthode statique interne de ComponentActivity pour traiter la disponibilité du contexte
        ComponentActivity.$r8$lambda$Mg7-hF6_XzI8jXHyb9wZTvbC5nA(this.f$0, context);
    }
}
