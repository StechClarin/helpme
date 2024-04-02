.class Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatePick(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$600(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->dismiss()V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$400(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getType()Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    move-result-object v0

    sget-object v1, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->DateTime:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    new-instance v1, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$700(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {v3}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$400(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;-><init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Landroid/content/Context;Ljava/util/Calendar;)V

    invoke-static {v0, v1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$502(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$500(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {v1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$800(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->setPickerCallback(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$500(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->show()V

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$400(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getCallBack()Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;->onDatePick(Ljava/lang/String;)V

    return-void
.end method

.method public onTimePick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$400(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getCallBack()Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;->onTimePick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-static {p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$500(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->dismiss()V

    return-void
.end method
