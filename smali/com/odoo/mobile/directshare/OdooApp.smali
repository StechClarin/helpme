.class public Lcom/odoo/mobile/directshare/OdooApp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final icon:Ljava/lang/String;

.field private final lastUpdate:J

.field private final link:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final user:Lcom/odoo/mobile/accounts/OdooUser;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->icon:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->name:Ljava/lang/String;

    const-string v0, "link"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->link:Ljava/lang/String;

    const-string v0, "lastUpdate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->lastUpdate:J

    iput-object p2, p0, Lcom/odoo/mobile/directshare/OdooApp;->user:Lcom/odoo/mobile/accounts/OdooUser;

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconCompat()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/BitmapUtils;->getBitmapImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdate()J
    .locals 2

    iget-wide v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->lastUpdate:J

    return-wide v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/odoo/mobile/directshare/OdooApp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/odoo/mobile/directshare/OdooApp;->user:Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortLabel()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/odoo/mobile/directshare/OdooApp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/odoo/mobile/directshare/OdooApp;->user:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v1, v1, Lcom/odoo/mobile/accounts/OdooUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/odoo/mobile/accounts/OdooUser;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/directshare/OdooApp;->user:Lcom/odoo/mobile/accounts/OdooUser;

    return-object v0
.end method
