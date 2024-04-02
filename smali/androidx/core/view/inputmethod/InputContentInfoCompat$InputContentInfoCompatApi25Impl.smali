.class final Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/inputmethod/InputContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputContentInfoCompatApi25Impl"
.end annotation


# instance fields
.field final mObject:Landroid/view/inputmethod/InputContentInfo;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl$$ExternalSyntheticApiModelOutline1;->m()V

    invoke-static {p1, p2, p3}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)Landroid/view/inputmethod/InputContentInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Landroid/view/inputmethod/InputContentInfo;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/view/inputmethod/InputContentInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Landroid/view/inputmethod/InputContentInfo;

    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Landroid/view/inputmethod/InputContentInfo;

    invoke-static {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/inputmethod/InputContentInfo;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Landroid/view/inputmethod/InputContentInfo;

    invoke-static {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/inputmethod/InputContentInfo;)Landroid/content/ClipDescription;

    move-result-object v0

    return-object v0
.end method

.method public getInputContentInfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Landroid/view/inputmethod/InputContentInfo;

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Landroid/view/inputmethod/InputContentInfo;

    invoke-static {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/inputmethod/InputContentInfo;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public requestPermission()V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;->mObject:Landroid/view/inputmethod/InputContentInfo;

    invoke-static {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/inputmethod/InputContentInfo;)V

    return-void
.end method
