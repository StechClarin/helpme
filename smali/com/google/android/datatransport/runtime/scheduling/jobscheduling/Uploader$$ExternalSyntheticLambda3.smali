.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final synthetic f$1:Lcom/google/android/datatransport/runtime/TransportContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/datatransport/runtime/TransportContext;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->$r8$lambda$H09k0NyVJ8nyzTbBch5HKLFo-RI(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
