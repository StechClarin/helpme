.class Lcom/odoo/mobile/accounts/OdooUser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/accounts/OdooUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/odoo/mobile/accounts/OdooUser;
    .locals 2

    .line 0
    new-instance v0, Lcom/odoo/mobile/accounts/OdooUser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/odoo/mobile/accounts/OdooUser;-><init>(Landroid/os/Parcel;Lcom/odoo/mobile/accounts/OdooUser$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/odoo/mobile/accounts/OdooUser$1;->createFromParcel(Landroid/os/Parcel;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/odoo/mobile/accounts/OdooUser;
    .locals 0

    .line 0
    new-array p1, p1, [Lcom/odoo/mobile/accounts/OdooUser;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/odoo/mobile/accounts/OdooUser$1;->newArray(I)[Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    return-object p1
.end method
