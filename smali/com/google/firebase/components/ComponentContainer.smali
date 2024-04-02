.class public interface abstract Lcom/google/firebase/components/ComponentContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method public setOf(Lcom/google/firebase/components/Qualified;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public setOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->setOf(Lcom/google/firebase/components/Qualified;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public abstract setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;
.end method
