.class public final synthetic Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

.field public final synthetic f$1:Lcom/odoo/mobile/core/utils/UserSession;

.field public final synthetic f$2:Lcom/odoo/mobile/core/widgets/OdooWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/utils/AttachmentManager;Lcom/odoo/mobile/core/utils/UserSession;Lcom/odoo/mobile/core/widgets/OdooWebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda8;->f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda8;->f$1:Lcom/odoo/mobile/core/utils/UserSession;

    iput-object p3, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda8;->f$2:Lcom/odoo/mobile/core/widgets/OdooWebView;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda8;->f$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda8;->f$1:Lcom/odoo/mobile/core/utils/UserSession;

    iget-object v2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda8;->f$2:Lcom/odoo/mobile/core/widgets/OdooWebView;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->$r8$lambda$6z2HiIqSxUgk0zWrkvIa0j8QT9s(Lcom/odoo/mobile/core/utils/AttachmentManager;Lcom/odoo/mobile/core/utils/UserSession;Lcom/odoo/mobile/core/widgets/OdooWebView;Ljava/lang/String;)V

    return-void
.end method
