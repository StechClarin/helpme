.class Lcom/google/android/gms/internal/vision/zzid;
.super Lcom/google/android/gms/internal/vision/zzia;
.source "SourceFile"


# instance fields
.field protected final zzb:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzia;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/vision/zzht;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/vision/zzht;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzid;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/vision/zzid;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zzd()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzht;->zzd()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/vision/zzia;->zza(Lcom/google/android/gms/internal/vision/zzht;II)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public zza()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    array-length v0, v0

    return v0
.end method

.method protected final zza(III)I
    .locals 1

    .line 0
    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzid;->zze()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/vision/zzjf;->zza(I[BII)I

    move-result p1

    return p1
.end method

.method public final zza(II)Lcom/google/android/gms/internal/vision/zzht;
    .locals 2

    .line 0
    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzht;->zzb(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/vision/zzht;->zza:Lcom/google/android/gms/internal/vision/zzht;

    return-object p1

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/vision/zzhw;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzid;->zze()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzhw;-><init>([BII)V

    return-object p2
.end method

.method protected final zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzid;->zze()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzhq;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzid;->zze()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zza([BII)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzht;II)Z
    .locals 5

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result p2

    if-gt p3, p2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result p2

    if-gt p3, p2, :cond_3

    instance-of p2, p1, Lcom/google/android/gms/internal/vision/zzid;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/vision/zzid;

    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzid;->zze()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzid;->zze()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzid;->zze()I

    move-result p1

    :goto_0
    if-ge p3, v2, :cond_1

    aget-byte v3, p2, p3

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/vision/zzht;->zza(II)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/vision/zzht;->zza(II)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzht;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ran off end of other: 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method zzb(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zzc()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzid;->zze()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzid;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/vision/zzmd;->zza([BII)Z

    move-result v0

    return v0
.end method

.method protected zze()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
