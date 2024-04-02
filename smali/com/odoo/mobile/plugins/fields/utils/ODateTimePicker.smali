.class public Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;,
        Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;,
        Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;,
        Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;,
        Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;
    }
.end annotation


# instance fields
.field private final callBack:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

.field private final mBuilder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

.field private final mContext:Landroid/content/Context;

.field private mDatePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;

.field private mTimePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;-><init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)V

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->callBack:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mBuilder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;-><init>(Landroid/content/Context;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mBuilder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mTimePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    return-object p0
.end method

.method static synthetic access$502(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mTimePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    return-object p1
.end method

.method static synthetic access$600(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mDatePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->callBack:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    return-object p0
.end method


# virtual methods
.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mBuilder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getType()Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    move-result-object v0

    sget-object v1, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->Time:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mBuilder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-virtual {v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;-><init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Landroid/content/Context;Ljava/util/Calendar;)V

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mTimePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->callBack:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->setPickerCallback(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mTimePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;

    invoke-virtual {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$TimePicker;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mBuilder:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;

    invoke-static {v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->access$000(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;-><init>(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;Landroid/content/Context;Ljava/util/Calendar;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;)V

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mDatePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->callBack:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    invoke-static {v0, v1}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->access$200(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;->mDatePicker:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;->access$300(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$DatePicker;)V

    :goto_0
    return-void
.end method
