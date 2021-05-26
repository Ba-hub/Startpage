.class public Landroid/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mBigContentView:Landroid/widget/RemoteViews;

.field mCategory:Ljava/lang/String;

.field mColor:I

.field public mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field mContentView:Landroid/widget/RemoteViews;

.field public mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field mHeadsUpContentView:Landroid/widget/RemoteViews;

.field public mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field public mNotification:Landroid/app/Notification;

.field public mNumber:I

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field public mRemoteInputHistory:[Ljava/lang/CharSequence;

.field mShowWhen:Z

.field mSortKey:Ljava/lang/String;

.field public mStyle:Landroid/support/v4/app/NotificationCompat$Style;

.field public mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field public mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 1044
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1002
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 1018
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 1019
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 1022
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    .line 1023
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    .line 1030
    move-object v2, v0

    new-instance v3, Landroid/app/Notification;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 1045
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 1048
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 1049
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->audioStreamType:I

    .line 1050
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 1051
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 1052
    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1737
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v0, v1

    .line 1741
    :goto_0
    return-object v0

    .line 1738
    :cond_0
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x1400

    if-le v1, v2, :cond_1

    .line 1739
    move-object v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x1400

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 1741
    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 8

    .prologue
    .line 1419
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 1420
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/app/Notification;->flags:I

    move v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1424
    :goto_0
    return-void

    .line 1422
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/app/Notification;->flags:I

    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 11

    .prologue
    .line 1589
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/support/v4/app/NotificationCompat$Action;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1590
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1608
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1609
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7

    .prologue
    .line 1528
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1529
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1530
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1535
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 1532
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1471
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1472
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 1726
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->access$300()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1709
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/support/v4/app/NotificationCompat$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1710
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;
    .locals 4

    .prologue
    .line 1733
    move-object v0, p0

    new-instance v1, Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1566
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1567
    move-object v1, v0

    new-instance v2, Landroid/os/Bundle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1569
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1718
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1373
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, 0x10

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1374
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1396
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 1397
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1638
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    .line 1639
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1198
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1199
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 1180
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1211
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 1212
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1128
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 1129
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 1121
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1687
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 1688
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1674
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1675
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1700
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 1701
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 1411
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v3, v1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 1412
    move v2, v1

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 1413
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/app/Notification;->flags:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1415
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1223
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1224
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1551
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1552
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 1246
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 1247
    move-object v3, v0

    const/16 v4, 0x80

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1248
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1487
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 1488
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1499
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 1500
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1275
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 1276
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1332
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v1

    iput v6, v5, Landroid/app/Notification;->ledARGB:I

    .line 1333
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v2

    iput v6, v5, Landroid/app/Notification;->ledOnMS:I

    .line 1334
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v6, v3

    iput v6, v5, Landroid/app/Notification;->ledOffMS:I

    .line 1335
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->ledOnMS:I

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->ledOffMS:I

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1336
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    move v7, v4

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v6, v7

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1338
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 1335
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1336
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1384
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 1385
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1171
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    .line 1172
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1353
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1354
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1362
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, 0x8

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1363
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1444
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 1445
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 1188
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    .line 1189
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    .line 1190
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 1191
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1663
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 1664
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1161
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    .line 1162
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1068
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 1069
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1096
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v3, v1

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 1097
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1111
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v1

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 1112
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v2

    iput v4, v3, Landroid/app/Notification;->iconLevel:I

    .line 1113
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1516
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 1517
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1288
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1289
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->audioStreamType:I

    .line 1290
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1305
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v4, v1

    iput-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1306
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move v4, v2

    iput v4, v3, Landroid/app/Notification;->audioStreamType:I

    .line 1307
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1621
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1622
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 1623
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v2, :cond_0

    .line 1624
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Style;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1627
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 1143
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1256
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1257
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 1266
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1267
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1268
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1084
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 1085
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1322
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v1

    iput-object v3, v2, Landroid/app/Notification;->vibrate:[J

    .line 1323
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 1650
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    .line 1651
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 1059
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-wide v4, v1

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 1060
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
