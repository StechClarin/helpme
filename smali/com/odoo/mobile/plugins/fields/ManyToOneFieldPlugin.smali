.class public Lcom/odoo/mobile/plugins/fields/ManyToOneFieldPlugin;
.super Lcom/odoo/mobile/core/coupler/WebPlugin;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "many2one"

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private setClearButtonVisibility(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;)V
    .locals 1

    const-string v0, "hideClearButton"

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->setClearButtonVisiblity(Z)V

    return-void
.end method


# virtual methods
.method public many2oneDialog(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->getSingleton(Landroid/content/Context;Ljava/lang/String;)Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->setCallback(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/plugins/fields/ManyToOneFieldPlugin;->setClearButtonVisibility(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;)V

    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->show()V

    const-string p2, "records"

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->bindRecords(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->addDialog(Landroid/content/DialogInterface;)V

    return-void
.end method
