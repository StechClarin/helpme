package android.support.v4.app;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public class INotificationSideChannel$Stub$Proxy implements INotificationSideChannel {
    private final IBinder mRemote;

    public INotificationSideChannel$Stub$Proxy(IBinder remote) {
        mRemote = remote;
    }

    @Override
    public IBinder asBinder() {
        return mRemote;
    }

    @Override
    public void notify(String packageName, int id, String tag, android.app.Notification notification) throws RemoteException {
        Parcel data = Parcel.obtain();
        try {
            data.writeInterfaceToken(INotificationSideChannel.DESCRIPTOR);
            data.writeString(packageName);
            data.writeInt(id);
            data.writeString(tag);
            INotificationSideChannel._Parcel.access$100(data, notification, 0);
            mRemote.transact(1, data, null, 1);
        } finally {
            data.recycle();
        }
    }
}
