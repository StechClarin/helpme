.class final Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->callAsync([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    invoke-direct {p1, v0, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;-><init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$3;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->onPostExecute(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
