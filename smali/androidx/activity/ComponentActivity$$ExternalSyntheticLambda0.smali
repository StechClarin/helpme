package androidx.activity;

// Import nécessaire pour la classe ComponentActivity
import androidx.activity.ComponentActivity;

// Classe représentant une lambda synthétique pour invalider le menu dans ComponentActivity
public final class ComponentActivity$$ExternalSyntheticLambda0 implements Runnable {

    // Champ pour stocker l'instance de ComponentActivity
    public final ComponentActivity f$0;

    // Constructeur de la lambda
    public ComponentActivity$$ExternalSyntheticLambda0(ComponentActivity componentActivity) {
        this.f$0 = componentActivity;
    }

    // Méthode run qui invalide le menu de ComponentActivity
    public final void run() {
        // Appel de la méthode invalidateMenu() sur l'instance de ComponentActivity
        this.f$0.invalidateMenu();
    }
}
