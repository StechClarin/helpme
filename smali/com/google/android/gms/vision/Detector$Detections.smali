.class public Lcom/google/android/gms/vision/Detector$Detections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detections"
.end annotation


# instance fields
.field private final zza:Landroid/util/SparseArray;

.field private final zzb:Lcom/google/android/gms/vision/Frame$Metadata;

.field private final zzc:Z


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Lcom/google/android/gms/vision/Frame$Metadata;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/Detector$Detections;->zza:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzb:Lcom/google/android/gms/vision/Frame$Metadata;

    iput-boolean p3, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzc:Z

    return-void
.end method


# virtual methods
.method public detectorIsOperational()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/vision/Detector$Detections;->zzc:Z

    return v0
.end method

.method public getDetectedItems()Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/Detector$Detections;->zza:Landroid/util/SparseArray;

    return-object v0
.end method
