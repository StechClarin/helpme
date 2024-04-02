.class public final Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;
.super Lcom/odoo/mobile/plugins/files/StorageManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final collection:Landroid/net/Uri;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->Companion:Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore$Companion;

    const-class v0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->TAG:Ljava/lang/String;

    const-string v0, "external_primary"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getContentUri(MediaStore.VOLUME_EXTERNAL_PRIMARY)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->collection:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/files/StorageManager;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public fileExist(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    iget-object v1, p0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->collection:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    return v7
.end method

.method public saveToFile(Ljava/lang/String;[B)Landroid/net/Uri;
    .locals 3

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/plugins/files/StorageManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/FileUtils;->getMimeTypeFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "relative_path"

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "is_pending"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->collection:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
