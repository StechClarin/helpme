.class public Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final zza:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private zzb:Lcom/google/android/gms/vision/clearcut/zzb;

.field private zzc:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/vision/zze;->zza()Lcom/google/android/gms/internal/vision/zzf;

    move-result-object v0

    const/4 v1, 0x2

    sget v2, Lcom/google/android/gms/internal/vision/zzi;->zza:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzf;->zza(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zza:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/vision/clearcut/zzb;

    const-wide v1, 0x3fa1111111111111L    # 0.03333333333333333

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/clearcut/zzb;-><init>(D)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzb:Lcom/google/android/gms/vision/clearcut/zzb;

    new-instance v0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    invoke-direct {v0, p1}, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzc:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;)Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzc:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    return-object p0
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/vision/zzfi$zzo;)V
    .locals 2

    .line 0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzb:Lcom/google/android/gms/vision/clearcut/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/clearcut/zzb;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Skipping image analysis log due to rate limiting"

    invoke-static {p2, p1}, Lcom/google/android/gms/vision/L;->v(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zza:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/vision/clearcut/zza;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/vision/clearcut/zza;-><init>(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;ILcom/google/android/gms/internal/vision/zzfi$zzo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
