.class public Landroidx/emoji2/text/EmojiCompatInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/startup/Initializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;,
        Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultConfig;,
        Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/startup/Initializer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .line 0
    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultConfig;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultConfig;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer;->delayUntilFirstResume(Landroid/content/Context;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer;->create(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method delayUntilFirstResume(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    move-result-object p1

    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-virtual {p1, v0}, Landroidx/startup/AppInitializer;->initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$1;

    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$1;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public dependencies()Ljava/util/List;
    .locals 1

    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method loadEmojiCompatAfterDelay()V
    .locals 4

    invoke-static {}, Landroidx/emoji2/text/ConcurrencyHelpers;->mainHandlerAsync()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;

    invoke-direct {v1}, Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method