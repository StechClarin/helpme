.class public Lcom/google/android/gms/common/api/internal/LifecycleActivity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public final zzb()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    return v0
.end method
