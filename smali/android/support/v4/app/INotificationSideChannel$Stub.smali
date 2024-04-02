package android.support.v4.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

// Déclaration de la classe Stub, qui étend la classe Binder et implémente INotificationSideChannel
public abstract class INotificationSideChannel$Stub extends Binder implements INotificationSideChannel {

    // Méthode statique pour obtenir une instance de l'interface à partir d'un IBinder
    public static INotificationSideChannel asInterface(IBinder binder) {
        // Si le IBinder est null, retourne null
        if (binder == null) {
            return null;
        }

        // Tente de récupérer une interface locale correspondante à l'interface INotificationSideChannel
        IInterface iInterface = binder.queryLocalInterface(INotificationSideChannel.DESCRIPTOR);

        // Si une interface locale correspondante est trouvée et qu'elle est une instance d'INotificationSideChannel, retourne l'instance existante
        if (iInterface != null && iInterface instanceof INotificationSideChannel) {
            return (INotificationSideChannel) iInterface;
        }

        // Si aucune interface locale correspondante n'est trouvée ou si elle n'est pas une instance d'INotificationSideChannel,
        // crée et retourne un nouveau proxy INotificationSideChannel$Stub$Proxy
        return new INotificationSideChannel$Stub$Proxy(binder);
    }
}
