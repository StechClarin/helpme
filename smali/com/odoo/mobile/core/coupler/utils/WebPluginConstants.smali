.class public abstract Lcom/odoo/mobile/core/coupler/utils/WebPluginConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final PLUGIN_CLASSES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/odoo/mobile/plugins/base/BasePlugins;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/odoo/mobile/plugins/barcode/BarcodeScanPlugin;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/odoo/mobile/plugins/fields/ManyToOneFieldPlugin;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/odoo/mobile/plugins/files/FileManager;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/odoo/mobile/plugins/notify/NotifyPlugin;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/odoo/mobile/plugins/contacts/ContactSyncPlugin;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/odoo/mobile/plugins/voip/VoIPPlugins;

    aput-object v2, v0, v1

    sput-object v0, Lcom/odoo/mobile/core/coupler/utils/WebPluginConstants;->PLUGIN_CLASSES:[Ljava/lang/Class;

    return-void
.end method
