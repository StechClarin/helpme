.class public final Lcom/android/volley/toolbox/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContent:Ljava/io/InputStream;

.field private final mContentBytes:[B

.field private final mContentLength:I

.field private final mHeaders:Ljava/util/List;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2

    .line 0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/volley/toolbox/HttpResponse;->mStatusCode:I

    iput-object p2, p0, Lcom/android/volley/toolbox/HttpResponse;->mHeaders:Ljava/util/List;

    iput p3, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentLength:I

    iput-object p4, p0, Lcom/android/volley/toolbox/HttpResponse;->mContent:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentBytes:[B

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mContent:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentBytes:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentBytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentLength:I

    return v0
.end method

.method public final getHeaders()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/HttpResponse;->mStatusCode:I

    return v0
.end method