package android.support.v4.app;

import android.os.IInterface;

// Déclaration de l'interface INotificationSideChannel
public interface INotificationSideChannel extends IInterface {

    // Constante de descripteur pour l'interface
    public static final String DESCRIPTOR;

    // Initialisation statique de la constante DESCRIPTOR
    static {
        // Remplace les caractères '$' et '.' par des '$24' et '$2e' respectivement dans la chaîne de classe
        String descriptor = "android$support$v4$app$INotificationSideChannel".replace('$', (char)0x24).replace('.', (char)0x2e);
        DESCRIPTOR = descriptor;
    }

    // Méthode abstraite pour notifier une notification
    public abstract void notify(String packageName, int id, String tag, android.app.Notification notification);
}
