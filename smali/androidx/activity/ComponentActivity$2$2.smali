package androidx.activity;

import android.content.Intent;
import android.content.IntentSender.SendIntentException;

// Classe représentant une classe anonyme pour gérer l'envoi d'une intention dans ComponentActivity
public class ComponentActivity$2$2 implements Runnable {

    // Champ pour stocker l'instance de ComponentActivity$2
    final ComponentActivity$2 this$1;

    // Code de demande de lancement de l'intention
    final int val$requestCode;

    // Exception levée lors de l'envoi de l'intention
    final SendIntentException val$e;

    // Constructeur de la classe anonyme
    public ComponentActivity$2$2(ComponentActivity$2 componentActivity$2, int requestCode, SendIntentException e) {
        this.this$1 = componentActivity$2;
        this.val$requestCode = requestCode;
        this.val$e = e;
    }

    // Méthode run pour exécuter le traitement de l'exception lors de l'envoi de l'intention
    public void run() {
        // Récupérer l'instance de ActivityResultRegistry à partir de ComponentActivity$2
        ComponentActivity$2 activityResultRegistry = this.this$1;

        // Créer une intention pour transmettre l'exception
        Intent intent = new Intent();
        intent.setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
        intent.putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.val$e);

        // Dispatch l'intention au registre des résultats d'activité
        activityResultRegistry.dispatchResult(this.val$requestCode, 0, intent);
    }
}
