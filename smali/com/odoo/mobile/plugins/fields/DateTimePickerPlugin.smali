.class public Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;
.super Lcom/odoo/mobile/core/coupler/WebPlugin;
.source "SourceFile"


# instance fields
.field private builder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

.field private selectedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "datetime"

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->selectedDate:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->selectedDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->selectedDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$084(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->selectedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->selectedDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->builder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    return-object p0
.end method


# virtual methods
.method public requestDateTimePicker(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 5

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->Date:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->DateTime:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    :goto_0
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->builder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-virtual {v3, v1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->setType(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    const-string v3, "ignore_timezone"

    invoke-virtual {p1, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->builder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-virtual {p1, v3}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->setIgnoreTimezone(Ljava/lang/Boolean;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    :cond_1
    const-string p1, "false"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->Date:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->builder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->setDate(Ljava/lang/String;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->builder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->setDateTime(Ljava/lang/String;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->builder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    new-instance v2, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;-><init>(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;Ljava/lang/String;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;)V

    invoke-virtual {p1, v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->setCallBack(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->builder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-virtual {p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->build()Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->show()V

    return-void
.end method
