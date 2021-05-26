.class public Landroid/support/v7/app/NotificationCompat;
.super Landroid/support/v4/app/NotificationCompat;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/NotificationCompat$MediaStyle;,
        Landroid/support/v7/app/NotificationCompat$LollipopExtender;,
        Landroid/support/v7/app/NotificationCompat$JellybeanExtender;,
        Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;,
        Landroid/support/v7/app/NotificationCompat$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat;-><init>()V

    .line 213
    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v7/app/NotificationCompat;->addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V

    return-void
.end method

.method private static addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 19

    .prologue
    .line 94
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v5, v5, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v5, :cond_1

    .line 95
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v5, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    move-object v3, v5

    .line 96
    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object v9, v2

    iget-object v9, v9, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object v10, v2

    iget v10, v10, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object v11, v2

    iget-object v11, v11, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object v12, v2

    iget-object v12, v12, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object v13, v2

    iget-boolean v13, v13, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move-object v14, v2

    iget-object v14, v14, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v14, v14, Landroid/app/Notification;->when:J

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-static/range {v5 .. v18}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V

    .line 101
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 102
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v5, :cond_0

    .line 103
    move-object v5, v4

    const-string v6, "android.mediaSession"

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 104
    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 103
    invoke-static {v5, v6, v7}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 106
    :cond_0
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v5, :cond_1

    .line 107
    move-object v5, v4

    const-string v6, "android.compactActions"

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 110
    :cond_1
    return-void
.end method

.method private static addMediaStyleToBuilderIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 19

    .prologue
    .line 81
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v4, v4, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v4, :cond_0

    .line 82
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v4, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    move-object v3, v4

    .line 83
    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object v9, v2

    iget v9, v9, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object v10, v2

    iget-object v10, v10, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object v11, v2

    iget-object v11, v11, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object v12, v2

    iget-boolean v12, v12, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move-object v13, v2

    iget-object v13, v13, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v13, v13, Landroid/app/Notification;->when:J

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-static/range {v4 .. v18}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V

    .line 90
    :cond_0
    return-void
.end method

.method private static addMediaStyleToBuilderLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v3, :cond_0

    .line 72
    move-object v3, v1

    check-cast v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    move-object v2, v3

    .line 73
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v5, :cond_1

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 75
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v5

    .line 73
    :goto_0
    invoke-static {v3, v4, v5}, Landroid/support/v7/app/NotificationCompatImpl21;->addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V

    .line 77
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getMediaSession(Landroid/app/Notification;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v7/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v5

    move-object v1, v5

    .line 47
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 48
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 49
    move-object v5, v1

    const-string v6, "android.mediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v2, v5

    .line 50
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 51
    move-object v5, v2

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v5

    move-object v0, v5

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 54
    :cond_1
    move-object v5, v1

    const-string v6, "android.mediaSession"

    invoke-static {v5, v6}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    move-object v2, v5

    .line 55
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 57
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 58
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    sget-object v5, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v3

    .line 60
    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v4, v5

    .line 61
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 62
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method
