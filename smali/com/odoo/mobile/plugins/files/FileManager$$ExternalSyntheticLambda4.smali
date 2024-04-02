.class public final synthetic Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/plugins/files/FileManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda4;->f$0:Lcom/odoo/mobile/plugins/files/FileManager;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda4;->f$0:Lcom/odoo/mobile/plugins/files/FileManager;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/plugins/files/FileManager;->$r8$lambda$yYLL7QDFM94BC_V7IWXn04PU3bk(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
