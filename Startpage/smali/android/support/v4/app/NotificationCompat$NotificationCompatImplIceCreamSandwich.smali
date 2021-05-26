.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplIceCreamSandwich"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 612
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
    .locals 22

    .prologue
    .line 615
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v6, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v9, v2

    iget-object v9, v9, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v10, v2

    iget-object v10, v10, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object v11, v2

    iget-object v11, v11, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object v12, v2

    iget-object v12, v12, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object v13, v2

    iget-object v13, v13, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object v14, v2

    iget v14, v14, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move/from16 v20, v0

    invoke-direct/range {v7 .. v20}, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    move-object v4, v6

    .line 620
    move-object v6, v3

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;

    move-result-object v6

    move-object v5, v6

    .line 621
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_0

    .line 622
    move-object v6, v5

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 624
    :cond_0
    move-object v6, v5

    move-object v1, v6

    return-object v1
.end method
