.class public Lcom/odoo/mobile/plugins/base/BasePlugins;
.super Lcom/odoo/mobile/core/coupler/WebPlugin;
.source "SourceFile"


# instance fields
.field private editShortcutTitle:Landroid/widget/EditText;

.field private final pref:Landroid/content/SharedPreferences;

.field private sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method public static synthetic $r8$lambda$T9mdSfijzmWjZ52d4rSSZE8Bz4A(Lcom/odoo/mobile/plugins/base/BasePlugins;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/plugins/base/BasePlugins;->lambda$addHomeShortcut$0(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method private createShortcut(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->editShortcutTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/odoo/mobile/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "shortcut_redirect_url"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    new-instance v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p2

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, p2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-static {v0, p1, p2}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110127

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$addHomeShortcut$0(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->editShortcutTitle:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "web_icon"

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/BitmapUtils;->hasBitmap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/odoo/mobile/core/utils/BitmapUtils;->getBitmapImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "shortcut_url"

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/odoo/mobile/plugins/base/BasePlugins;->createShortcut(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addHomeShortcut(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 4

    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c0022

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->sheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1, v2}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->addDialog(Landroid/content/DialogInterface;)V

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->editShortcutTitle:Landroid/widget/EditText;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/odoo/mobile/plugins/base/BasePlugins$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/odoo/mobile/plugins/base/BasePlugins$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/plugins/base/BasePlugins;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->editShortcutTitle:Landroid/widget/EditText;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public closeVirtualKeyboard(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public crashManager(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 3

    sget-object v0, Lcom/odoo/mobile/core/coupler/WebPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crashManager() ERROR CODE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "code"

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "data"

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getMap(Ljava/lang/String;)Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    move-result-object p1

    const-string v1, "name"

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":crashManager()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "odoo.http.SessionExpiredException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/accounts/OdooUser;->getSession(Landroid/content/Context;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/UserSession;->removeSession()V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/odoo/mobile/UserLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "session_exprire_redirect"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public hashChange(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 6

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_discuss_action_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/odoo/mobile/plugins/base/BasePlugins;->pref:Landroid/content/SharedPreferences;

    const/4 v4, -0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "action"

    invoke-virtual {p1, v3}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "model"

    invoke-virtual {p1, v4}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "active_id"

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "mail.channel"

    goto :goto_0

    :cond_0
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-static {v1, v4, p1}, Lcom/odoo/mobile/core/utils/NotificationUtils;->getNotificationId(Lcom/odoo/mobile/accounts/OdooUser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {v1}, Lcom/odoo/mobile/core/utils/NotificationUtils;->getUniqueIdentifierByUser(Lcom/odoo/mobile/accounts/OdooUser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, p1}, Lcom/odoo/mobile/core/utils/NotificationUtils;->getUniqueKeyForResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/odoo/mobile/plugins/fcm/utils/DeleteNotificationReceiver;->removeRecentMessages(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/odoo/mobile/core/coupler/WebPlugin;->TAG:Ljava/lang/String;

    const-string v1, "error in hashChange()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public overrideBackButton(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/odoo/mobile/WebViewActivity;

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Lcom/odoo/mobile/WebViewActivity;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/WebViewActivity;->setOverrideBackButton(Z)V

    :cond_0
    return-void
.end method

.method public switchAccount(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 3

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object p1

    check-cast p1, Lcom/odoo/mobile/core/utils/ActivityResultIntentListener;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e9

    invoke-interface {p1, v0, v1}, Lcom/odoo/mobile/core/utils/ActivityResultIntentListener;->openActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public updateAccount(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 3

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/odoo/mobile/accounts/OdooUser;->name:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/odoo/mobile/accounts/OdooUser;->username:Ljava/lang/String;

    const-string v2, "avatar"

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/odoo/mobile/accounts/OdooUser;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->updateDetails(Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method
