.class Lcom/odoo/mobile/core/utils/DeviceFileManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/permissions/PermissionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/utils/DeviceFileManager;->permissionAndRequestFile(Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/core/utils/DeviceFileManager;

.field final synthetic val$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

.field final synthetic val$requestType:Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;

.field final synthetic val$requiredPermissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/utils/DeviceFileManager;Lcom/odoo/mobile/core/permissions/OPermissionManager;[Ljava/lang/String;Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->this$0:Lcom/odoo/mobile/core/utils/DeviceFileManager;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->val$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iput-object p3, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->val$requiredPermissions:[Ljava/lang/String;

    iput-object p4, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->val$requestType:Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public denied([Ljava/lang/String;)V
    .locals 2

    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->this$0:Lcom/odoo/mobile/core/utils/DeviceFileManager;

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->access$100(Lcom/odoo/mobile/core/utils/DeviceFileManager;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110125

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public granted([Ljava/lang/String;)V
    .locals 1

    array-length p1, p1

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->val$requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->this$0:Lcom/odoo/mobile/core/utils/DeviceFileManager;

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->val$requestType:Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->access$000(Lcom/odoo/mobile/core/utils/DeviceFileManager;Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;)V

    :cond_0
    return-void
.end method

.method public requestRationale(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;->val$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->showRequestRationale(Ljava/lang/String;)V

    return-void
.end method
