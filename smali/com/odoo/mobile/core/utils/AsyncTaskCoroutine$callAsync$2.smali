.class final Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;
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
.field final synthetic $input:[Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->$input:[Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->$input:[Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;-><init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$callAsync$2;->$input:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->setResult(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
