.class Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->requestDateTimePicker(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

.field final synthetic val$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

.field final synthetic val$dateType:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;Ljava/lang/String;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->this$0:Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    iput-object p4, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$dateType:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatePick(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$type:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->this$0:Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

    invoke-static {v0, p1}, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->access$002(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onTimePick(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$dateType:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    sget-object v1, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->DateTime:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->this$0:Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->access$084(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->this$0:Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

    invoke-static {v1}, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->access$100(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getIgnoreTimezone()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->this$0:Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

    invoke-static {v1}, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->access$000(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->this$0:Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

    invoke-static {v1}, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->access$000(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/odoo/mobile/plugins/fields/utils/DateTimeUtils;->convertToUTC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$dateType:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    sget-object v1, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->Time:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->val$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin$1;->this$0:Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;

    invoke-static {v1}, Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;->access$100(Lcom/odoo/mobile/plugins/fields/DateTimePickerPlugin;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getIgnoreTimezone()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "HH:mm:ss"

    invoke-static {p1, v1}, Lcom/odoo/mobile/plugins/fields/utils/DateTimeUtils;->convertToUTC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
