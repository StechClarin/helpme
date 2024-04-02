.class public final Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/permissions/PermissionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

.field final synthetic this$0:Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/permissions/OPermissionManager;Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;->$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;->this$0:Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public denied([Ljava/lang/String;)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;->this$0:Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;

    const v0, 0x7f110120

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;->this$0:Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public granted([Ljava/lang/String;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;->this$0:Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;

    invoke-static {p1}, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;->access$initDetector(Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;)V

    :cond_1
    return-void
.end method

.method public requestRationale(Ljava/lang/String;)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity$onCreate$2;->$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->showRequestRationale(Ljava/lang/String;)V

    return-void
.end method
