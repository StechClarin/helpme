.class public final synthetic Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Landroid/webkit/WebView;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/utils/AttachmentManager;Ljava/util/Map;Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;->f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;->f$2:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;->f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;->f$2:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda2;->f$3:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->$r8$lambda$6odIdcXzuGCrkROzGac77PNds3M(Lcom/odoo/mobile/core/utils/AttachmentManager;Ljava/util/Map;Landroid/webkit/WebView;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
