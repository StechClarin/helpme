.class public final Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;

.field private final configProvider:Ljavax/inject/Provider;

.field private final contextProvider:Ljavax/inject/Provider;

.field private final eventStoreProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->eventStoreProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->configProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static workScheduler(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lcom/google/android/datatransport/runtime/time/Clock;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule;->workScheduler(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lcom/google/android/datatransport/runtime/time/Clock;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->eventStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->workScheduler(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lcom/google/android/datatransport/runtime/time/Clock;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;->get()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    move-result-object v0

    return-object v0
.end method