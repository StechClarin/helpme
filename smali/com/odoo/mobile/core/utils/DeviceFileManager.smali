.class public Lcom/odoo/mobile/core/utils/DeviceFileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;
    }
.end annotation


# instance fields
.field private bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

.field private final mContext:Landroid/content/Context;

.field private newImageUri:Landroid/net/Uri;

.field private valueCallbacks:Landroid/webkit/ValueCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->newImageUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/odoo/mobile/core/utils/DeviceFileManager;Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->requestFile(Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/odoo/mobile/core/utils/DeviceFileManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private getImageFileName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddhhmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUris(IILandroid/content/Intent;)Ljava/util/List;
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->newImageUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p2, 0x70

    if-eq p1, p2, :cond_1

    const/16 p2, 0x71

    if-ne p1, p2, :cond_2

    :cond_1
    invoke-direct {p0, p3}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->handleResultFiles(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private handleResultFiles(Landroid/content/Intent;)Ljava/util/List;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private permissionAndRequestFile(Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-direct {v0, v1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    new-instance v1, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/odoo/mobile/core/utils/DeviceFileManager$1;-><init>(Lcom/odoo/mobile/core/utils/DeviceFileManager;Lcom/odoo/mobile/core/permissions/OPermissionManager;[Ljava/lang/String;Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;)V

    invoke-virtual {v0, v1, p2}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->getPermissions(Lcom/odoo/mobile/core/permissions/PermissionStatusListener;[Ljava/lang/String;)V

    return-void
.end method

.method private requestFile(Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/odoo/mobile/core/utils/DeviceFileManager$2;->$SwitchMap$com$odoo$mobile$core$utils$DeviceFileManager$RequestType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "*/*"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x71

    invoke-direct {p0, v0, p1}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->requestIntent(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x70

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->requestIntent(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "odoo_mobile/docs"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->deleteRecursive(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->getImageFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    const v1, 0x7f110062

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->newImageUri:Landroid/net/Uri;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "output"

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->newImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x6f

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    const v0, 0x7f11012b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private requestIntent(Landroid/content/Intent;I)V
    .locals 2

    :try_start_0
    const-string v0, "DeviceFileManager"

    const-string v1, "Requesting intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    const-string p2, "No Activity Found to handle request"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private resetValueCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->valueCallbacks:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->valueCallbacks:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public handleResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->getUris(IILandroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object p3, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->valueCallbacks:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    invoke-interface {p3, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->valueCallbacks:Landroid/webkit/ValueCallback;

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->resetValueCallbacks()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090077

    const/16 v1, 0x1d

    if-eq p1, v0, :cond_4

    const v0, 0x7f090083

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-eq p1, v0, :cond_2

    const v0, 0x7f09017b

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v1, :cond_1

    sget-object p1, Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;->ALL_FILE_TYPE:Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->permissionAndRequestFile(Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;[Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;->ALL_FILE_TYPE:Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;

    goto :goto_0

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v1, :cond_3

    sget-object p1, Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;->IMAGE:Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->permissionAndRequestFile(Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;->IMAGE:Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;

    :goto_0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->requestFile(Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;)V

    goto :goto_2

    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "android.permission.CAMERA"

    if-ge p1, v1, :cond_5

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    :goto_1
    sget-object v0, Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;->CAPTURE_IMAGE:Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;

    invoke-direct {p0, v0, p1}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->permissionAndRequestFile(Lcom/odoo/mobile/core/utils/DeviceFileManager$RequestType;[Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public openFileTypeChooser(Lcom/odoo/mobile/core/OdooAppCompatActivity;Landroid/webkit/ValueCallback;)V
    .locals 3

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-direct {p0}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->resetValueCallbacks()V

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->valueCallbacks:Landroid/webkit/ValueCallback;

    new-instance p2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0c0038

    invoke-virtual {p2, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    iget-object p2, p0, Lcom/odoo/mobile/core/utils/DeviceFileManager;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->addDialog(Landroid/content/DialogInterface;)V

    return-void
.end method
