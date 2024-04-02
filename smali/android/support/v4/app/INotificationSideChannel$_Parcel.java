package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class INotificationSideChannel$Parcel {

    static void access$100(Parcel parcel, Parcelable parcelable, int i) {
        writeTypedObject(parcel, parcelable, i);
    }

    private static void writeTypedObject(Parcel parcel, Parcelable parcelable, int i) {
        if (parcelable != null) {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, i);
        } else {
            parcel.writeInt(0);
        }
    }
}
