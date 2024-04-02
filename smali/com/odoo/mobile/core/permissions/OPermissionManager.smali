.class public Lcom/odoo/mobile/core/permissions/OPermissionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/OdooAppCompatActivity$PermissionResultListener;


# instance fields
.field private final mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

.field private recentPermissionRequest:Lcom/odoo/mobile/core/permissions/PermissionStatusListener;


# direct methods
.method public static synthetic $r8$lambda$J67MKyXvizWT8SsfwvKvU4wMoAc(Lcom/odoo/mobile/core/permissions/OPermissionManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->lambda$showRequestRationale$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yOxPooK4fNtRdJBvk2dcaLOqdiM(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->lambda$showRequestRationale$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ynioZeqxiCb2FqAe-WefhlqJrsE(Lcom/odoo/mobile/core/permissions/OPermissionManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->lambda$showRequestRationale$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-virtual {p1, p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->setPermissionResultListener(Lcom/odoo/mobile/core/OdooAppCompatActivity$PermissionResultListener;)V

    return-void
.end method

.method private synthetic lambda$showRequestRationale$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->showAppSettingInfo()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showRequestRationale$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showRequestRationale$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f110109

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/odoo/mobile/core/permissions/OPermissionManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/core/permissions/OPermissionManager$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/core/permissions/OPermissionManager;)V

    const p2, 0x7f110108

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/odoo/mobile/core/permissions/OPermissionManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager$$ExternalSyntheticLambda2;-><init>()V

    const/high16 p2, 0x1040000

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private permissionReadable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    const-string v0, "_"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showAppSettingInfo()V
    .locals 4

    iget-object v0, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public varargs getPermissions(Lcom/odoo/mobile/core/permissions/PermissionStatusListener;[Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->recentPermissionRequest:Lcom/odoo/mobile/core/permissions/PermissionStatusListener;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    iget-object v3, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-static {v3, v2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Lcom/odoo/mobile/core/permissions/PermissionStatusListener;->requestRationale(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    const/16 v0, 0x7b

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public varargs hasPermissions([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->recentPermissionRequest:Lcom/odoo/mobile/core/permissions/PermissionStatusListener;

    if-eqz p1, :cond_2

    array-length p1, p3

    if-lez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    aget v3, p3, v2

    if-nez v3, :cond_0

    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    aget-object v3, p2, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->recentPermissionRequest:Lcom/odoo/mobile/core/permissions/PermissionStatusListener;

    new-array p3, v1, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/odoo/mobile/core/permissions/PermissionStatusListener;->granted([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->recentPermissionRequest:Lcom/odoo/mobile/core/permissions/PermissionStatusListener;

    new-array p2, v1, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/odoo/mobile/core/permissions/PermissionStatusListener;->denied([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public showRequestRationale(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    const v1, 0x7f110104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->permissionReadable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/odoo/mobile/core/permissions/OPermissionManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    new-instance v2, Lcom/odoo/mobile/core/permissions/OPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/core/permissions/OPermissionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
