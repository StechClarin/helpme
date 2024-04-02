.class public Lcom/google/android/gms/flags/FlagRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zzg:Ljava/util/Collection;

.field private final zzh:Ljava/util/Collection;

.field private final zzi:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzg:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzh:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzi:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/flags/Flag;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzg:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
