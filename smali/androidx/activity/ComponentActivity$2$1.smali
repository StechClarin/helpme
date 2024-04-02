package androidx.activity;

import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContract.SynchronousResult;

// Classe représentant une classe anonyme pour gérer le lancement synchrone d'une activité dans ComponentActivity
public class ComponentActivity$2$1 implements Runnable {

    // Champ pour stocker l'instance de ComponentActivity$2
    final ComponentActivity$2 this$1;

    // Code de demande de lancement de l'activité
    final int val$requestCode;

    // Résultat synchrone de l'activité
    final SynchronousResult val$synchronousResult;

    // Constructeur de la classe anonyme
    public ComponentActivity$2$1(ComponentActivity$2 componentActivity$2, int requestCode, SynchronousResult synchronousResult) {
        this.this$1 = componentActivity$2;
        this.val$requestCode = requestCode;
        this.val$synchronousResult = synchronousResult;
    }

    // Méthode run pour exécuter le traitement de résultat de l'activité lancée
    public void run() {
        // Récupérer l'instance de ActivityResultRegistry à partir de ComponentActivity$2
        ComponentActivity$2 activityResultRegistry = this.this$1;

        // Obtenir le résultat de manière synchrone
        Object result = this.val$synchronousResult.getValue();

        // Dispatch le résultat au registre des résultats d'activité
        activityResultRegistry.dispatchResult(this.val$requestCode, result);
    }
}
