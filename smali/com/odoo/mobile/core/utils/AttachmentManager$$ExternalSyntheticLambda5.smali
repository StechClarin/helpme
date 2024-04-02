.class public final synthetic Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

.field public final synthetic f$1:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/utils/AttachmentManager;Landroid/webkit/WebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda5;->f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda5;->f$1:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda5;->f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda5;->f$1:Landroid/webkit/WebView;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->$r8$lambda$ugLSWgUX4zdOXqlIvoo2J5A-NiQ(Lcom/odoo/mobile/core/utils/AttachmentManager;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
