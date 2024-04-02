package androidx.activity;

import android.os.Bundle;

// Classe représentant une lambda synthétique pour fournir un état sauvegardé à ComponentActivity
public final class ComponentActivity$$ExternalSyntheticLambda1 implements androidx.savedstate.SavedStateRegistry.SavedStateProvider {

    // Champ pour stocker l'instance de ComponentActivity
    public final ComponentActivity f$0;

    // Constructeur de la lambda
    public ComponentActivity$$ExternalSyntheticLambda1(ComponentActivity componentActivity) {
        this.f$0 = componentActivity;
    }

    // Méthode pour fournir l'état sauvegardé
    public final Bundle saveState() {
        // Appel d'une méthode statique interne de ComponentActivity pour récupérer l'état sauvegardé
        return ComponentActivity.$r8$lambda$uMG6y9sMaPUFZmnRrSgWpORKiAI(this.f$0);
    }
}
