.class final Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->execute([Ljava/lang/Object;)V
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

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->$input:[Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->$input:[Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;-><init>(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->onPreExecute()V

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->this$0:Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->$input:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput v2, p0, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine$execute$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->access$callAsync(Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
