.class public final Lcom/odoo/mobile/core/utils/MatchQueue;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "SourceFile"


# instance fields
.field private final limit:I

.field private final matchInterface:Lcom/odoo/mobile/core/utils/MatchInterface;


# direct methods
.method public constructor <init>(ILcom/odoo/mobile/core/utils/MatchInterface;)V
    .locals 1

    const-string v0, "matchInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput p1, p0, Lcom/odoo/mobile/core/utils/MatchQueue;->limit:I

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/MatchQueue;->matchInterface:Lcom/odoo/mobile/core/utils/MatchInterface;

    return-void
.end method

.method private final checkMatchAndNormalizeSize()V
    .locals 7

    :goto_0
    invoke-virtual {p0}, Lcom/odoo/mobile/core/utils/MatchQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/odoo/mobile/core/utils/MatchQueue;->limit:I

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/odoo/mobile/core/utils/MatchQueue;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/odoo/mobile/core/utils/MatchQueue;->matchInterface:Lcom/odoo/mobile/core/utils/MatchInterface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/odoo/mobile/core/utils/MatchInterface;->onMatch(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0}, Lcom/odoo/mobile/core/utils/MatchQueue;->checkMatchAndNormalizeSize()V

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-direct {p0}, Lcom/odoo/mobile/core/utils/MatchQueue;->checkMatchAndNormalizeSize()V

    return p1
.end method

.method public bridge getSize()I
    .locals 1

    invoke-super {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/utils/MatchQueue;->getSize()I

    move-result v0

    return v0
.end method
