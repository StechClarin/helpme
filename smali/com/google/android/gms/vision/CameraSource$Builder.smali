.class public Lcom/google/android/gms/vision/CameraSource$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/vision/Detector;

.field private zzb:Lcom/google/android/gms/vision/CameraSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/vision/CameraSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/CameraSource;-><init>(Lcom/google/android/gms/vision/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->zzb:Lcom/google/android/gms/vision/CameraSource;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->zza:Lcom/google/android/gms/vision/Detector;

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/vision/CameraSource;Landroid/content/Context;)Landroid/content/Context;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No detector supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/CameraSource;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->zzb:Lcom/google/android/gms/vision/CameraSource;

    new-instance v1, Lcom/google/android/gms/vision/CameraSource$zza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->zza:Lcom/google/android/gms/vision/Detector;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/vision/CameraSource$zza;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/Detector;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$zza;)Lcom/google/android/gms/vision/CameraSource$zza;

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->zzb:Lcom/google/android/gms/vision/CameraSource;

    return-object v0
.end method

.method public setAutoFocusEnabled(Z)Lcom/google/android/gms/vision/CameraSource$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->zzb:Lcom/google/android/gms/vision/CameraSource;

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/vision/CameraSource;Z)Z

    return-object p0
.end method
