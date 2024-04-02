.class public final Lcom/google/firebase/components/Component;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/Component$Builder;
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Set;

.field private final factory:Lcom/google/firebase/components/ComponentFactory;

.field private final instantiation:I

.field private final name:Ljava/lang/String;

.field private final providedInterfaces:Ljava/util/Set;

.field private final publishedEvents:Ljava/util/Set;

.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$Ffrth-d9Peo_i_HGmbM5iJb0gQQ(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/firebase/components/Component;->lambda$intoSet$3(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KryL7UebsJ6sFV-CDK2Yw3_BWQc(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/firebase/components/Component;->lambda$of$1(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/Component;->name:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/Component;->providedInterfaces:Ljava/util/Set;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    iput p4, p0, Lcom/google/firebase/components/Component;->instantiation:I

    iput p5, p0, Lcom/google/firebase/components/Component;->type:I

    iput-object p6, p0, Lcom/google/firebase/components/Component;->factory:Lcom/google/firebase/components/ComponentFactory;

    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;Lcom/google/firebase/components/Component$1;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/components/Component;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;)V

    return-void
.end method

.method public static builder(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;
    .locals 3

    .line 0
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/firebase/components/Qualified;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Component$Builder;-><init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public static varargs builder(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Component$Builder;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/components/Component$Builder;-><init>(Lcom/google/firebase/components/Qualified;[Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public static builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .locals 3

    .line 0
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public static varargs builder(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/firebase/components/Component$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/Component$1;)V

    return-object v0
.end method

.method public static intoSet(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/Component;
    .locals 1

    invoke-static {p1}, Lcom/google/firebase/components/Component;->intoSetBuilder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    return-object p0
.end method

.method public static intoSetBuilder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/components/Component$Builder;->access$200(Lcom/google/firebase/components/Component$Builder;)Lcom/google/firebase/components/Component$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$intoSet$3(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$of$1(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;
    .locals 0

    invoke-static {p1, p2}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/google/firebase/components/Component$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDependencies()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    return-object v0
.end method

.method public getFactory()Lcom/google/firebase/components/ComponentFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/Component;->factory:Lcom/google/firebase/components/ComponentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/Component;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvidedInterfaces()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/Component;->providedInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getPublishedEvents()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    return-object v0
.end method

.method public isAlwaysEager()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/components/Component;->instantiation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEagerInDefaultApp()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/components/Component;->instantiation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValue()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/components/Component;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/components/Component;->providedInterfaces:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/Component;->instantiation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/Component;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withFactory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component;
    .locals 9

    new-instance v8, Lcom/google/firebase/components/Component;

    iget-object v1, p0, Lcom/google/firebase/components/Component;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/components/Component;->providedInterfaces:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    iget v4, p0, Lcom/google/firebase/components/Component;->instantiation:I

    iget v5, p0, Lcom/google/firebase/components/Component;->type:I

    iget-object v7, p0, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/components/Component;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;)V

    return-object v8
.end method
