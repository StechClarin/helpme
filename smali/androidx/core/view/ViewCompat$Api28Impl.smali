.class abstract Landroidx/core/view/ViewCompat$Api28Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method static addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 2

    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/SimpleArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticLambda10;-><init>(Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/View;Landroid/view/View$OnUnhandledKeyEventListener;)V

    return-void
.end method

.method static getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static isAccessibilityHeading(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static isScreenReaderFocusable(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 1

    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline6;->m(Ljava/lang/Object;)Landroid/view/View$OnUnhandledKeyEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/View;Landroid/view/View$OnUnhandledKeyEventListener;)V

    :cond_1
    return-void
.end method

.method static requireViewById(Landroid/view/View;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static setAccessibilityHeading(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/View;Z)V

    return-void
.end method

.method static setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static setScreenReaderFocusable(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Z)V

    return-void
.end method
