.class public Lcom/odoo/mobile/plugins/notify/NotifyPlugin;
.super Lcom/odoo/mobile/core/coupler/WebPlugin;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$CiJDcsy6lZv-glSvFGFuOgoL0vU(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/odoo/mobile/plugins/notify/NotifyPlugin;->lambda$showSnackBar$0(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notify"

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showSnackBar$0(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Landroid/view/View;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public showNotification(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 3

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100fe

    invoke-virtual {p0, v2}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "message"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const p1, 0x7f0800ca

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v1, 0x7b

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showSnackBar(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 3

    const-string v0, "btn_text"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/odoo/mobile/core/utils/SnackbarManager;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    new-instance v1, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    new-instance v0, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$1;

    invoke-direct {v0, p0, p2}, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$1;-><init>(Lcom/odoo/mobile/plugins/notify/NotifyPlugin;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public showToast(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public vibrate(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 3

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    int-to-long v1, p1

    const/4 p1, -0x1

    invoke-static {v1, v2, p1}, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$$ExternalSyntheticApiModelOutline0;->m(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$$ExternalSyntheticApiModelOutline1;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_0
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    return-void
.end method
