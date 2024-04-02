package android.support.v4.graphics.drawable;

import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;

public final class IconCompatParcelizer extends androidx.core.graphics.drawable.IconCompatParcelizer {

    // Constructeur
    public IconCompatParcelizer() {
        super();
    }

    // Méthode pour lire un IconCompat à partir d'un VersionedParcel
    public static IconCompat read(VersionedParcel parcel) {
        IconCompat iconCompat = androidx.core.graphics.drawable.IconCompatParcelizer.read(parcel);
        return iconCompat;
    }

    // Méthode pour écrire un IconCompat dans un VersionedParcel
    public static void write(IconCompat iconCompat, VersionedParcel parcel) {
        androidx.core.graphics.drawable.IconCompatParcelizer.write(iconCompat, parcel);
    }
}
