.class public final synthetic Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

.field public final synthetic f$1:Lcom/odoo/mobile/core/widgets/OdooWebView;

.field public final synthetic f$2:Lcom/odoo/mobile/core/utils/UserSession;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/utils/AttachmentManager;Lcom/odoo/mobile/core/widgets/OdooWebView;Lcom/odoo/mobile/core/utils/UserSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda3;->f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda3;->f$1:Lcom/odoo/mobile/core/widgets/OdooWebView;

    iput-object p3, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda3;->f$2:Lcom/odoo/mobile/core/utils/UserSession;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda3;->f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda3;->f$1:Lcom/odoo/mobile/core/widgets/OdooWebView;

    iget-object v2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda3;->f$2:Lcom/odoo/mobile/core/utils/UserSession;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->$r8$lambda$2INLPnUHx0Wqf6UbXrDQQCKaQQc(Lcom/odoo/mobile/core/utils/AttachmentManager;Lcom/odoo/mobile/core/widgets/OdooWebView;Lcom/odoo/mobile/core/utils/UserSession;Ljava/lang/String;)V

    return-void
.end method
