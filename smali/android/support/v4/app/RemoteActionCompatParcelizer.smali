package android.support.v4.app;

import androidx.core.app.RemoteActionCompat;
import androidx.versionedparcelable.VersionedParcel;

public final class RemoteActionCompatParcelizer extends androidx.core.app.RemoteActionCompatParcelizer {

    // Constructeur
    public RemoteActionCompatParcelizer() {
        super();
    }

    // Méthode pour lire une RemoteActionCompat à partir d'un VersionedParcel
    public static RemoteActionCompat read(VersionedParcel parcel) {
        RemoteActionCompat remoteActionCompat = androidx.core.app.RemoteActionCompatParcelizer.read(parcel);
        return remoteActionCompat;
    }

    // Méthode pour écrire une RemoteActionCompat dans un VersionedParcel
    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel parcel) {
        androidx.core.app.RemoteActionCompatParcelizer.write(remoteActionCompat, parcel);
    }
}
