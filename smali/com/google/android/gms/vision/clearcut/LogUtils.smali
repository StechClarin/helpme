.class public Lcom/google/android/gms/vision/clearcut/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/vision/zzfi$zza;
    .locals 2

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zza;->zza()Lcom/google/android/gms/internal/vision/zzfi$zza$zza;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzfi$zza$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/vision/zzfi$zza$zza;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/vision/clearcut/LogUtils;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzfi$zza$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/vision/zzfi$zza$zza;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->zzf()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzjb;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzfi$zza;

    return-object p0
.end method

.method public static zza(JILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/vision/zzs;)Lcom/google/android/gms/internal/vision/zzfi$zzo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vision/zzfi$zzn;",
            ">;",
            "Lcom/google/android/gms/internal/vision/zzs;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzfi$zzo;"
        }
    .end annotation

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zza()Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzf;->zza()Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;

    move-result-object p4

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;->zza(J)Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;

    move-result-object p0

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;->zzb(J)Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/vision/zzfi$zzf$zzb;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->zzf()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzjb;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzfi$zzf;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzj;->zza()Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;

    move-result-object p1

    iget p2, p6, Lcom/google/android/gms/internal/vision/zzs;->zzb:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;->zzb(J)Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;

    move-result-object p1

    iget p2, p6, Lcom/google/android/gms/internal/vision/zzs;->zza:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;->zza(J)Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;

    move-result-object p1

    iget p2, p6, Lcom/google/android/gms/internal/vision/zzs;->zzc:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;->zzc(J)Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;

    move-result-object p1

    iget-wide p2, p6, Lcom/google/android/gms/internal/vision/zzs;->zzd:J

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;->zzd(J)Lcom/google/android/gms/internal/vision/zzfi$zzj$zzb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->zzf()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzfi$zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;->zza(Lcom/google/android/gms/internal/vision/zzfi$zzj;)Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->zzf()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzjb;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zza()Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;->zza(Lcom/google/android/gms/internal/vision/zzfi$zzi;)Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->zzf()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzjb;

    check-cast p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object p0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "Unable to find calling package info for %s"

    invoke-static {v1, p0, v2}, Lcom/google/android/gms/vision/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method
