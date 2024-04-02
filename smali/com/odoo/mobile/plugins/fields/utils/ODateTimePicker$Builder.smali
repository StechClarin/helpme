.class public Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private ignoreTimezone:Ljava/lang/Boolean;

.field private mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

.field private final mContext:Landroid/content/Context;

.field private mType:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->DateTime:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->mType:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->date:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->ignoreTimezone:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;)Ljava/util/Calendar;
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->getDate()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method private getDate()Ljava/util/Calendar;
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->date:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->ignoreTimezone:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v0, v2, v1}, Lcom/odoo/mobile/plugins/fields/utils/DateTimeUtils;->createDateObject(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;
    .locals 3

    new-instance v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;-><init>(Landroid/content/Context;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$1;)V

    return-object v0
.end method

.method getCallBack()Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    return-object v0
.end method

.method public getIgnoreTimezone()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->ignoreTimezone:Ljava/lang/Boolean;

    return-object v0
.end method

.method getTime()Ljava/util/Calendar;
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->time:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->ignoreTimezone:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "HH:mm:ss"

    invoke-static {v0, v2, v1}, Lcom/odoo/mobile/plugins/fields/utils/DateTimeUtils;->createDateObject(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getType()Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->mType:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    return-object v0
.end method

.method public setCallBack(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->mCallback:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$PickerCallBack;

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->date:Ljava/lang/String;

    return-object p0
.end method

.method public setDateTime(Ljava/lang/String;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "yyyy-MM-dd"

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, v1, v0}, Lcom/odoo/mobile/plugins/fields/utils/DateTimeUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->date:Ljava/lang/String;

    const-string v0, "HH:mm:ss"

    invoke-static {p1, v1, v0}, Lcom/odoo/mobile/plugins/fields/utils/DateTimeUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->time:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setIgnoreTimezone(Ljava/lang/Boolean;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->ignoreTimezone:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setType(Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Builder;->mType:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    return-object p0
.end method
