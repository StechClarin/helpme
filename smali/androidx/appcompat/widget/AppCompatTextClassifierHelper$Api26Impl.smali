.class abstract Landroidx/appcompat/widget/AppCompatTextClassifierHelper$Api26Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextClassifierHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26Impl"
.end annotation


# direct methods
.method static getTextClassifier(Landroid/widget/TextView;)Landroid/view/textclassifier/TextClassifier;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatTextClassifierHelper$Api26Impl$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/view/textclassifier/TextClassificationManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatTextClassifierHelper$Api26Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/textclassifier/TextClassificationManager;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/AppCompatTextClassifierHelper$Api26Impl$$ExternalSyntheticApiModelOutline2;->m()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method
