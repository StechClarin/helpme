.class public abstract Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$callAsync(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->callAsync([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final callAsync([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;

    iget v1, v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;

    invoke-direct {v0, p0, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;-><init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance v2, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;-><init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    sget-object v4, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;

    invoke-direct {v7, p1, v3}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;-><init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final varargs execute([Ljava/lang/Object;)V
    .locals 7

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;-><init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->result:Ljava/lang/Object;

    return-void
.end method
