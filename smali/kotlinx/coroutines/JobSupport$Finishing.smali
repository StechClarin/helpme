.class final Lkotlinx/coroutines/JobSupport$Finishing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Finishing"
.end annotation


# instance fields
.field private volatile synthetic _exceptionsHolder:Ljava/lang/Object;

.field private volatile synthetic _isCompleting:I

.field private volatile synthetic _rootCause:Ljava/lang/Object;

.field private final list:Lkotlinx/coroutines/NodeList;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    iput p2, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting:I

    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method

.method private final allocateList()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private final getExceptionsHolder()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Ljava/lang/Object;

    return-object v0
.end method

.method private final setExceptionsHolder(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addExceptionLocked(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport$Finishing;->setRootCause(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getList()Lkotlinx/coroutines/NodeList;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    return-object v0
.end method

.method public final getRootCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCancelling()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCompleting()Z
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting:I

    return v0
.end method

.method public final isSealed()Z
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getSEALED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final sealLocked(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getSEALED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompleting(Z)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting:I

    return-void
.end method

.method public final setRootCause(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing[cancelling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
