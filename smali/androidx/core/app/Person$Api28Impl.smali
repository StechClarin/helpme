.class abstract Landroidx/core/app/Person$Api28Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method static fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;
    .locals 2

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/app/Person;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/app/Person;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline11;->m(Landroid/app/Person;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline12;->m(Landroid/app/Person;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline13;->m(Landroid/app/Person;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline14;->m(Landroid/app/Person;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object p0

    return-object p0
.end method

.method static toAndroidPerson(Landroidx/core/app/Person;)Landroid/app/Person;
    .locals 2

    invoke-static {}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline1;->m()V

    invoke-static {}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline0;->m()Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/Person$Builder;Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/Person$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/Person$Builder;Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/Person$Builder;Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->isBot()Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline6;->m(Landroid/app/Person$Builder;Z)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/app/Person;->isImportant()Z

    move-result p0

    invoke-static {v0, p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/app/Person$Builder;Z)Landroid/app/Person$Builder;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/app/Person$Builder;)Landroid/app/Person;

    move-result-object p0

    return-object p0
.end method
