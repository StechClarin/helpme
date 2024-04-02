.class Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatePicker"
.end annotation


# instance fields
.field private called:Z

.field private mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

.field private final mDialog:Landroid/app/DatePickerDialog;

.field final synthetic this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;


# direct methods
.method public static synthetic $r8$lambda$MVe8gE4cCO11bfN_AlebU3FQ0PE(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->lambda$new$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private constructor <init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 8

    .line 0
    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->this$0:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->called:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    new-instance p3, Landroid/app/DatePickerDialog;

    const v3, 0x7f12011e

    move-object v1, p3

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object p3, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->mDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {p3, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->access$700(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110039

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;)V

    const/4 v0, -0x3

    invoke-virtual {p3, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Landroid/content/Context;Ljava/util/Calendar;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;-><init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Landroid/content/Context;Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$200(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->setPickerCallback(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)V

    return-void
.end method

.method static synthetic access$300(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->show()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->mDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;->onDatePick(Ljava/lang/String;)V

    return-void
.end method

.method private setPickerCallback(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    return-void
.end method

.method private show()V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->mDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->mDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->called:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p4, "yyyy-MM-dd"

    invoke-direct {p2, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    invoke-interface {p2, p1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;->onDatePick(Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->called:Z

    :cond_0
    return-void
.end method
