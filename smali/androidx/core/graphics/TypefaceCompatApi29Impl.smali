.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;
    .locals 5

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline18;->m()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    and-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    invoke-static {v0, p2}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline17;->m(II)Landroid/graphics/fonts/FontStyle;

    move-result-object p2

    invoke-static {p1, v1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline19;->m(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    move-result v1

    :goto_2
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline20;->m(Landroid/graphics/fonts/FontFamily;)I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-static {p1, v2}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline19;->m(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontStyle;

    move-result-object v4

    invoke-static {p2, v4}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    move-result v4

    if-ge v4, v1, :cond_2

    move-object v0, v3

    move v1, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method private static getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I
    .locals 2

    invoke-static {p0}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline21;->m(Landroid/graphics/fonts/FontStyle;)I

    move-result v0

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline21;->m(Landroid/graphics/fonts/FontStyle;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-static {p0}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline22;->m(Landroid/graphics/fonts/FontStyle;)I

    move-result p0

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline22;->m(Landroid/graphics/fonts/FontStyle;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 7

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move-object v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline14;->m()V

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v5

    invoke-static {p3, v5}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline11;->m(Landroid/content/res/Resources;I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    invoke-static {v5, v6}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/fonts/Font$Builder;Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/fonts/Font$Builder;)Landroid/graphics/fonts/Font;

    move-result-object v4

    if-nez v3, :cond_1

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline15;->m()V

    invoke-static {v4}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline12;->m(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-static {v3, v4}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/fonts/FontFamily$Builder;Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-object p1

    :cond_3
    :try_start_2
    invoke-static {v3}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/fonts/FontFamily$Builder;)Landroid/graphics/fonts/FontFamily;

    move-result-object p2

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline13;->m()V

    invoke-static {p2}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p3

    invoke-direct {p0, p2, p4}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontStyle;

    move-result-object p2

    invoke-static {p3, p2}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/Typeface$CustomFallbackBuilder;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/graphics/Typeface$CustomFallbackBuilder;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object p1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p3

    const/4 v2, 0x0

    move-object v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v5, p3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {p1, v6, v7, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_0

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_0
    :try_start_2
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline14;->m()V

    invoke-static {v6}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline16;->m(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    invoke-static {v7, v8}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v5

    invoke-static {v7, v5}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/fonts/Font$Builder;)Landroid/graphics/fonts/Font;

    move-result-object v5

    if-nez v4, :cond_2

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline15;->m()V

    invoke-static {v5}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline12;->m(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-static {v4, v5}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/fonts/FontFamily$Builder;Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    invoke-static {v4}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/fonts/FontFamily$Builder;)Landroid/graphics/fonts/FontFamily;

    move-result-object p1

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline13;->m()V

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p2

    invoke-direct {p0, p1, p4}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontStyle;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/Typeface$CustomFallbackBuilder;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/graphics/Typeface$CustomFallbackBuilder;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-object p1

    :catch_1
    return-object v0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    :try_start_0
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline14;->m()V

    invoke-static {p2, p3}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline11;->m(Landroid/content/res/Resources;I)Landroid/graphics/fonts/Font$Builder;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/fonts/Font$Builder;)Landroid/graphics/fonts/Font;

    move-result-object p1

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline15;->m()V

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline12;->m(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/fonts/FontFamily$Builder;)Landroid/graphics/fonts/FontFamily;

    move-result-object p2

    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline13;->m()V

    invoke-static {p2}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p2

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontStyle;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/Typeface$CustomFallbackBuilder;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatApi29Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/graphics/Typeface$CustomFallbackBuilder;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Do not use this function in API 29 or later."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
