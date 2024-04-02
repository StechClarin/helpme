.class public final synthetic Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/plugins/files/FileManager;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda3;->f$0:Lcom/odoo/mobile/plugins/files/FileManager;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda3;->f$0:Lcom/odoo/mobile/plugins/files/FileManager;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/plugins/files/FileManager;->$r8$lambda$kqxzJtoxa6Goe2ZUwg-diKzbexc(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
