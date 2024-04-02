.class public final enum Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

.field public static final enum Date:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

.field public static final enum DateTime:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

.field public static final enum Time:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;


# direct methods
.method private static synthetic $values()[Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->Date:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->DateTime:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->Time:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    const-string v1, "Date"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->Date:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    new-instance v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    const-string v1, "DateTime"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->DateTime:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    new-instance v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    const-string v1, "Time"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->Time:Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    invoke-static {}, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->$values()[Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->$VALUES:[Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;
    .locals 1

    const-class v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    return-object p0
.end method

.method public static values()[Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;
    .locals 1

    sget-object v0, Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->$VALUES:[Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    invoke-virtual {v0}, [Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/odoo/mobile/plugins/fields/utils/ODateTimePicker$Type;

    return-object v0
.end method
