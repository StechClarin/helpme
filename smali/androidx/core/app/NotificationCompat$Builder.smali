.class public Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Builder$Api21Impl;
    }
.end annotation


# instance fields
.field public mActions:Ljava/util/ArrayList;

.field mAllowSystemGeneratedContextualActions:Z

.field mBadgeIcon:I

.field mBigContentView:Landroid/widget/RemoteViews;

.field mCategory:Ljava/lang/String;

.field mChannelId:Ljava/lang/String;

.field mColor:I

.field mColorized:Z

.field mColorizedSet:Z

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContentView:Landroid/widget/RemoteViews;

.field public mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mFgsDeferBehavior:I

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupAlertBehavior:I

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field mHeadsUpContentView:Landroid/widget/RemoteViews;

.field mInvisibleActions:Ljava/util/ArrayList;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field mLocusId:Landroidx/core/content/LocusIdCompat;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field public mPeople:Ljava/util/ArrayList;

.field public mPersonList:Ljava/util/ArrayList;

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field mRemoteInputHistory:[Ljava/lang/CharSequence;

.field mSettingsText:Ljava/lang/CharSequence;

.field mShortcutId:Ljava/lang/String;

.field mShowWhen:Z

.field mSilent:Z

.field mSmallIcon:Ljava/lang/Object;

.field mSortKey:Ljava/lang/String;

.field mStyle:Landroidx/core/app/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mTimeout:J

.field mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private reduceLargeIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/core/R$dimen;->compat_notification_large_icon_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Landroidx/core/R$dimen;->compat_notification_large_icon_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    return-object p1

    :cond_1
    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private setFlag(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    iput p1, p2, Landroid/app/Notification;->flags:I

    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    new-instance v0, Landroidx/core/app/NotificationCompatBuilder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompatBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->reduceLargeIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLights(III)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x2

    or-int/2addr p1, p2

    iput p1, v0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    return-object p0
.end method

.method public setNumber(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    return-object p0
.end method

.method public setPriority(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    return-object p0
.end method

.method public setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    return-object p0
.end method

.method public setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroidx/core/app/NotificationCompat$Builder$Api21Impl;->createBuilder()Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$Builder$Api21Impl;->setContentType(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$Builder$Api21Impl;->setUsage(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder$Api21Impl;->build(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Style;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_0
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    return-object p0
.end method

.method public setWhen(J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
