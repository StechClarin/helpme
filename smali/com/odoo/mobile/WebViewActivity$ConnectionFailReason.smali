.class final enum Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionFailReason"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

.field public static final enum DATABASE_EXPIRED:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

.field public static final enum NONE:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

.field public static final enum SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

.field public static final enum TIME_OUT:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;


# direct methods
.method private static synthetic $values()[Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    const/4 v1, 0x0

    sget-object v2, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->DATABASE_EXPIRED:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->INTERNAL_SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->TIME_OUT:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->NONE:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    const-string v1, "DATABASE_EXPIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->DATABASE_EXPIRED:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    new-instance v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->INTERNAL_SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    new-instance v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    new-instance v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    const-string v1, "TIME_OUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->TIME_OUT:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    new-instance v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    const-string v1, "NONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->NONE:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    invoke-static {}, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->$values()[Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->$VALUES:[Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;
    .locals 1

    const-class v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    return-object p0
.end method

.method public static values()[Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;
    .locals 1

    sget-object v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->$VALUES:[Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    invoke-virtual {v0}, [Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    return-object v0
.end method
