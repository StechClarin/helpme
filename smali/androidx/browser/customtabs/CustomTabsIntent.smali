.class public final Landroidx/browser/customtabs/CustomTabsIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsIntent$Api24Impl;,
        Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    }
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final startAnimationBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    invoke-static {p1, p2, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
