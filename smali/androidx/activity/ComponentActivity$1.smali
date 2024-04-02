package androidx.activity;

// Classe représentant une classe anonyme pour exécuter des actions dans ComponentActivity
public class ComponentActivity$1 implements Runnable {

    // Champ pour stocker l'instance de ComponentActivity
    final ComponentActivity this$0;

    // Constructeur de la classe anonyme
    public ComponentActivity$1(ComponentActivity componentActivity) {
        this.this$0 = componentActivity;
    }

    // Méthode run qui exécute une action dans ComponentActivity
    public void run() {
        try {
            // Appel d'une méthode statique interne de ComponentActivity pour exécuter une action
            ComponentActivity.access$001(this.this$0);
        } catch (IllegalStateException e) {
            // Gestion des exceptions
            String message = e.getMessage();
            String errorMessage = "Can not perform this action after onSaveInstanceState";
            if (message != null && message.equals(errorMessage)) {
                // Si l'exception est de type IllegalStateException avec le message spécifié,
                // alors ignorer et quitter la méthode
                return;
            }
            // Sinon, relancer l'exception
            throw e;
        }
    }
}
