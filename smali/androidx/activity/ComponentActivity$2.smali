package androidx.activity;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.Handler;
import androidx.core.app.ActivityCompat;
import androidx.core.app.ActivityOptionsCompat;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContract.SynchronousResult;

// Classe pour gérer les résultats d'activité dans ComponentActivity
public class ComponentActivity$2 extends ActivityResultRegistry {

    // Référence à ComponentActivity
    final ComponentActivity this$0;

    // Constructeur de ComponentActivity$2
    public ComponentActivity$2(ComponentActivity componentActivity) {
        this.this$0 = componentActivity;
        super();
    }

    // Méthode pour gérer le lancement d'une activité ou l'envoi d'une intention
    public void onLaunch(int requestCode, ActivityResultContract contract, Object input, ActivityOptionsCompat options) {
        Context context = this.this$0;

        // Récupération du résultat synchrone s'il existe
        SynchronousResult synchronousResult = contract.getSynchronousResult(context, input);

        // Si le résultat synchrone est disponible
        if (synchronousResult != null) {
            // Exécuter le traitement de manière asynchrone sur le thread principal
            new Handler(context.getMainLooper()).post(new Runnable() {
                public void run() {
                    ComponentActivity$2.this.this$0.onActivityResultRegistry.dispatchResult(requestCode, 0, synchronousResult.getValue());
                }
            });
            return;
        }

        // Sinon, créer une intention en fonction du contrat d'activité
        Intent intent = contract.createIntent(context, input);

        // Mettre à jour le class loader de l'intention si nécessaire
        Bundle extras = intent.getExtras();
        if (extras != null && extras.getClassLoader() == null) {
            intent.setExtrasClassLoader(context.getClassLoader());
        }

        // Vérifier si des options d'activité sont incluses dans l'intention
        Bundle activityOptionsBundle = intent.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE") ?
                intent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE") :
                null;

        // Gérer le lancement d'une activité ou l'envoi d'une intention en fonction de l'action de l'intention
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intent.getAction())) {
            String[] permissions = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (permissions == null) permissions = new String[0];
            ActivityCompat.requestPermissions(context, permissions, requestCode);
        } else if ("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intent.getAction())) {
            IntentSenderRequest senderRequest = intent.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                IntentSender intentSender = senderRequest.getIntentSender();
                Intent fillInIntent = senderRequest.getFillInIntent();
                int flagsMask = senderRequest.getFlagsMask();
                int flagsValues = senderRequest.getFlagsValues();
                ActivityCompat.startIntentSenderForResult(context, intentSender, requestCode, fillInIntent, flagsMask, flagsValues, activityOptionsBundle);
            } catch (SendIntentException e) {
                // En cas d'erreur lors de l'envoi de l'intention, le traitement est effectué de manière asynchrone sur le thread principal
                new Handler(context.getMainLooper()).post(new Runnable() {
                    public void run() {
                        ComponentActivity$2.this.this$0.onActivityResultRegistry.dispatchResult(requestCode, 0, e);
                    }
                });
            }
        } else {
            // Lancer une activité avec startActivityForResult()
            ActivityCompat.startActivityForResult(context, intent, requestCode, activityOptionsBundle);
        }
    }
}
