.class public final synthetic Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroid/webkit/WebView;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda7;->f$0:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda7;->f$2:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda7;->f$0:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$$ExternalSyntheticLambda7;->f$2:Landroid/webkit/ValueCallback;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->$r8$lambda$cJH95YJfj1IHvGhWURdx_x2iG1U(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;Landroid/view/View;)V

    return-void
.end method
