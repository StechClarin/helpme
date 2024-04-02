// Déclaration de la classe ComponentActivity$3, implémentant LifecycleEventObserver
public class ComponentActivity$3 implements LifecycleEventObserver {

    // Champ faisant référence à l'instance de ComponentActivity
    private final ComponentActivity this$0;

    // Constructeur prenant une instance de ComponentActivity en paramètre
    public ComponentActivity$3(ComponentActivity this$0) {
        this.this$0 = this$0;
    }

    // Méthode appelée lorsqu'un changement d'état du cycle de vie est observé
    @Override
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        // Vérifie si l'événement est ON_STOP
        if (event == Lifecycle.Event.ON_STOP) {
            // Obtient la fenêtre associée à l'activité
            Window window = this$0.getWindow();
            // Si la fenêtre est non nulle
            if (window != null) {
                // Récupère la vue décorative de la fenêtre
                View decorView = window.peekDecorView();
                // Si la vue décorative est non nulle
                if (decorView != null) {
                    // Annule les événements d'entrée en attente sur la vue décorative
                    ActivityCompat.cancelPendingInputEvents(decorView);
                }
            }
        }
    }
}
