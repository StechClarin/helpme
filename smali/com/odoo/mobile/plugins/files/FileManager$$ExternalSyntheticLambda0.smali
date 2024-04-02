.class public final synthetic Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/ValueCallback;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/plugins/files/FileManager;->$r8$lambda$MgAYfx1jeBk1jOj31_5PUuu2-00(Ljava/util/Map;Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
