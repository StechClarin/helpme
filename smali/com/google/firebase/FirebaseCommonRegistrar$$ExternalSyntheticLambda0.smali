.class public final synthetic Lcom/google/firebase/FirebaseCommonRegistrar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 0
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->$r8$lambda$5K-XEd3fUx19CnAZSAZ0M1s9qGg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method