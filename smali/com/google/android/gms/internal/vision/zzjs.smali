.class public final Lcom/google/android/gms/internal/vision/zzjs;
.super Lcom/google/android/gms/internal/vision/zzhj;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzjv;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/vision/zzjs;

.field private static final zzb:Lcom/google/android/gms/internal/vision/zzjv;


# instance fields
.field private final zzc:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzjs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzjs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzjs;->zza:Lcom/google/android/gms/internal/vision/zzjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzhj;->zzb()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzjs;->zzb:Lcom/google/android/gms/internal/vision/zzjv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzjs;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzjs;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzhj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    return-void
.end method

.method private static zza(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/vision/zzht;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zzb()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzjf;->zzb([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    .line 0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhj;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhj;->zzc()V

    instance-of v0, p2, Lcom/google/android/gms/internal/vision/zzjv;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/vision/zzjv;

    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzjv;->zzd()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjs;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhj;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/vision/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzht;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzht;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzjf;->zzb([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzjf;->zza([B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzhj;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhj;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzjs;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhj;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzjs;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic zza(I)Lcom/google/android/gms/internal/vision/zzjl;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjs;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/google/android/gms/internal/vision/zzjs;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/vision/zzjs;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzht;)V
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhj;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic zza()Z
    .locals 1

    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzhj;->zza()Z

    move-result v0

    return v0
.end method

.method public final zzb(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjs;->zzc:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/vision/zzjv;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhj;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/vision/zzlz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzlz;-><init>(Lcom/google/android/gms/internal/vision/zzjv;)V

    return-object v0

    :cond_0
    return-object p0
.end method
