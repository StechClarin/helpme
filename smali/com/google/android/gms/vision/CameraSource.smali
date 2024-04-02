.class public Lcom/google/android/gms/vision/CameraSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/CameraSource$zza;,
        Lcom/google/android/gms/vision/CameraSource$zzb;,
        Lcom/google/android/gms/vision/CameraSource$zze;,
        Lcom/google/android/gms/vision/CameraSource$Builder;
    }
.end annotation


# instance fields
.field private zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Landroid/hardware/Camera;

.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/common/images/Size;

.field private zzg:F

.field private zzh:I

.field private zzi:I

.field private zzj:Z

.field private zzk:Ljava/lang/String;

.field private zzl:Landroid/graphics/SurfaceTexture;

.field private zzm:Ljava/lang/Thread;

.field private zzn:Lcom/google/android/gms/vision/CameraSource$zza;

.field private final zzo:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzb:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzd:I

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:F

    const/16 v1, 0x400

    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzh:I

    const/16 v1, 0x300

    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzi:I

    iput-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzj:Z

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/util/IdentityHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/zza;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zza:Landroid/content/Context;

    return-object p1
.end method

.method private final zza()Landroid/hardware/Camera;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/vision/CameraSource;->zzd:I

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_1

    invoke-static {v4, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_1
    if-eq v4, v6, :cond_16

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzh:I

    iget v5, v0, Lcom/google/android/gms/vision/CameraSource;->zzi:I

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-float v11, v11

    iget v12, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    iget v14, v13, Landroid/hardware/Camera$Size;->width:I

    int-to-float v14, v14

    iget v15, v13, Landroid/hardware/Camera$Size;->height:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    sub-float v14, v11, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3c23d70a    # 0.01f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    new-instance v11, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-direct {v11, v10, v13}, Lcom/google/android/gms/vision/CameraSource$zze;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const-string v9, "CameraSource"

    const/4 v10, 0x0

    if-nez v6, :cond_5

    const-string v6, "No preview sizes have a corresponding same-aspect-ratio picture size"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    new-instance v11, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-direct {v11, v7, v10}, Lcom/google/android/gms/vision/CameraSource$zze;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const v7, 0x7fffffff

    move v11, v3

    move v13, v7

    move-object v12, v10

    :cond_6
    :goto_4
    if-ge v11, v6, :cond_7

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v11, v11, 0x1

    check-cast v14, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-virtual {v14}, Lcom/google/android/gms/vision/CameraSource$zze;->zza()Lcom/google/android/gms/common/images/Size;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v16

    sub-int v16, v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    invoke-virtual {v15}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int v15, v16, v15

    if-ge v15, v13, :cond_6

    move-object v12, v14

    move v13, v15

    goto :goto_4

    :cond_7
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/CameraSource$zze;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/google/android/gms/vision/CameraSource$zze;->zzb()Lcom/google/android/gms/common/images/Size;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/vision/CameraSource$zze;->zza()Lcom/google/android/gms/common/images/Size;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzf:Lcom/google/android/gms/common/images/Size;

    iget v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzg:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, v10

    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aget v13, v11, v3

    sub-int v13, v2, v13

    aget v12, v11, v12

    sub-int v12, v2, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v13, v12

    if-ge v13, v7, :cond_8

    move-object v8, v11

    move v7, v13

    goto :goto_5

    :cond_9
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v5

    invoke-virtual {v6, v7, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_a
    iget-object v5, v0, Lcom/google/android/gms/vision/CameraSource;->zzf:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v5

    iget-object v7, v0, Lcom/google/android/gms/vision/CameraSource;->zzf:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v7}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    aget v5, v2, v3

    aget v2, v2, v12

    invoke-virtual {v6, v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zza:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eqz v2, :cond_e

    if-eq v2, v12, :cond_d

    const/4 v5, 0x2

    if-eq v2, v5, :cond_c

    const/4 v5, 0x3

    if-eq v2, v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x1f

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Bad rotation value: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const/16 v2, 0x10e

    goto :goto_7

    :cond_c
    const/16 v2, 0xb4

    goto :goto_7

    :cond_d
    const/16 v2, 0x5a

    goto :goto_7

    :cond_e
    :goto_6
    move v2, v3

    :goto_7
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v12, :cond_f

    iget v4, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v2

    rem-int/lit16 v4, v4, 0x168

    rsub-int v2, v4, 0x168

    rem-int/lit16 v2, v2, 0x168

    goto :goto_8

    :cond_f
    iget v4, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v2

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    move v2, v4

    :goto_8
    div-int/lit8 v5, v4, 0x5a

    iput v5, v0, Lcom/google/android/gms/vision/CameraSource;->zze:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {v6, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzk:Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/vision/CameraSource;->zzk:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzk:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    new-array v2, v12, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/vision/CameraSource;->zzk:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "FocusMode %s is not supported on this device."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v0, Lcom/google/android/gms/vision/CameraSource;->zzk:Ljava/lang/String;

    :cond_11
    :goto_9
    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzk:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzj:Z

    if-eqz v2, :cond_13

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "continuous-video"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v6, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/google/android/gms/vision/CameraSource;->zzk:Ljava/lang/String;

    goto :goto_a

    :cond_12
    const-string v2, "Camera auto focus is not supported on this device."

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_a
    invoke-virtual {v1, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v2, Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-direct {v2, v0, v10}, Lcom/google/android/gms/vision/CameraSource$zzb;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/zza;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzf:Lcom/google/android/gms/common/images/Size;

    invoke-direct {v0, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzf:Lcom/google/android/gms/common/images/Size;

    invoke-direct {v0, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzf:Lcom/google/android/gms/common/images/Size;

    invoke-direct {v0, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzf:Lcom/google/android/gms/common/images/Size;

    invoke-direct {v0, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-object v1

    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not find suitable preview frames per second range."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not find suitable preview size."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not find requested camera."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$zza;)Lcom/google/android/gms/vision/CameraSource$zza;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzn:Lcom/google/android/gms/vision/CameraSource$zza;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Z)Z
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzj:Z

    return p1
.end method

.method private final zza(Lcom/google/android/gms/common/images/Size;)[B
    .locals 5

    .line 0
    const/16 v0, 0x11

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result p1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    int-to-long v3, v0

    mul-long/2addr v1, v3

    long-to-double v0, v1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/CameraSource;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/vision/CameraSource$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzn:Lcom/google/android/gms/vision/CameraSource$zza;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/vision/CameraSource;)Ljava/util/IdentityHashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/util/IdentityHashMap;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/vision/CameraSource;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/vision/CameraSource;->zze:I

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/common/images/Size;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzf:Lcom/google/android/gms/common/images/Size;

    return-object p0
.end method


# virtual methods
.method public start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;->zza()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    new-instance p1, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzn:Lcom/google/android/gms/vision/CameraSource$zza;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzm:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzn:Lcom/google/android/gms/vision/CameraSource$zza;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/vision/CameraSource$zza;->zza(Z)V

    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzm:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzn:Lcom/google/android/gms/vision/CameraSource$zza;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/CameraSource$zza;->zza(Z)V

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzm:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "CameraSource"

    const-string v3, "Frame processing thread interrupted on release."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzm:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzl:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "CameraSource"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to clear camera preview: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzc:Landroid/hardware/Camera;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
