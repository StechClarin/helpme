.class Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimePicker"
.end annotation


# instance fields
.field private mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

.field private final mDialog:Landroid/app/TimePickerDialog;

.field final synthetic this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 7

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    :goto_0
    const/16 p1, 0xb

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 p1, 0xc

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance p1, Landroid/app/TimePickerDialog;

    const v2, 0x7f12011e

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->mDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->mDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xe

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "HH:mm:ss"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    invoke-interface {p2, p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;->onTimePick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setPickerCallback(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    return-void
.end method

.method show()V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->mDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
