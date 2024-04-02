.class public final Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;
.super Lcom/odoo/mobile/plugins/files/StorageManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/plugins/files/StorageManagerLegacy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/plugins/files/StorageManagerLegacy$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final destinationPath:Ljava/io/File;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;->Companion:Lcom/odoo/mobile/plugins/files/StorageManagerLegacy$Companion;

    const-class v0, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "getExternalStoragePublic\u2026ment.DIRECTORY_DOWNLOADS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;->destinationPath:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/files/StorageManager;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public fileExist(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;->destinationPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public saveToFile(Ljava/lang/String;[B)Landroid/net/Uri;
    .locals 3

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;->destinationPath:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/plugins/files/StorageManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving file to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p2}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;->context:Landroid/content/Context;

    const p2, 0x7f110062

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "getUriForFile(context, c\u2026ing.file_provider), file)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
