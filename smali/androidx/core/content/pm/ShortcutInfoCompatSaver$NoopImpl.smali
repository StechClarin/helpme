.class public Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;
.super Landroidx/core/content/pm/ShortcutInfoCompatSaver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutInfoCompatSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoopImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addShortcuts(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;->addShortcuts(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public addShortcuts(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic removeAllShortcuts()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;->removeAllShortcuts()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public removeAllShortcuts()Ljava/lang/Void;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
