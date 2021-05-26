.class Landroid/support/v4/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatJellybean$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_ACTION_EXTRAS:Ljava/lang/String; = "android.support.actionExtras"

.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field static final EXTRA_GROUP_KEY:Ljava/lang/String; = "android.support.groupKey"

.field static final EXTRA_GROUP_SUMMARY:Ljava/lang/String; = "android.support.isGroupSummary"

.field static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.support.localOnly"

.field static final EXTRA_REMOTE_INPUTS:Ljava/lang/String; = "android.support.remoteInputs"

.field static final EXTRA_SORT_KEY:Ljava/lang/String; = "android.support.sortKey"

.field static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "allowGeneratedReplies"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static addBigPictureStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 12

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    new-instance v8, Landroid/app/Notification$BigPictureStyle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-interface {v10}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v9, v1

    .line 182
    invoke-virtual {v8, v9}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v8

    move-object v9, v4

    .line 183
    invoke-virtual {v8, v9}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v8

    move-object v7, v8

    .line 184
    move v8, v6

    if-eqz v8, :cond_0

    .line 185
    move-object v8, v7

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v8

    .line 187
    :cond_0
    move v8, v2

    if-eqz v8, :cond_1

    .line 188
    move-object v8, v7

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v8

    .line 190
    :cond_1
    return-void
.end method

.method public static addBigTextStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 10

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-interface {v8}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v7, v1

    .line 170
    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    move-object v7, v4

    .line 171
    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    move-object v5, v6

    .line 172
    move v6, v2

    if-eqz v6, :cond_0

    .line 173
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 175
    :cond_0
    return-void
.end method

.method public static addInboxStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    new-instance v8, Landroid/app/Notification$InboxStyle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-interface {v10}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v9, v1

    .line 196
    invoke-virtual {v8, v9}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v8

    move-object v5, v8

    .line 197
    move v8, v2

    if-eqz v8, :cond_0

    .line 198
    move-object v8, v5

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v8

    .line 200
    :cond_0
    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    move-object v7, v8

    .line 201
    move-object v8, v5

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v8

    .line 202
    goto :goto_0

    .line 203
    :cond_1
    return-void
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    const/4 v5, 0x0

    move-object v1, v5

    .line 208
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 209
    move-object v5, v0

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v4, v5

    .line 210
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 211
    move-object v5, v1

    if-nez v5, :cond_0

    .line 212
    new-instance v5, Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v5

    .line 214
    :cond_0
    move-object v5, v1

    move v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_2
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .locals 4

    .prologue
    .line 336
    sget-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-eqz v1, :cond_0

    .line 337
    const/4 v1, 0x0

    move v0, v1

    .line 355
    :goto_0
    return v0

    .line 340
    :cond_0
    :try_start_0
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 341
    const-string v1, "android.app.Notification$Action"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    .line 342
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    .line 343
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    .line 344
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    const-string v2, "actionIntent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    .line 345
    const-class v1, Landroid/app/Notification;

    const-string v2, "actions"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    .line 346
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    :cond_1
    :goto_1
    sget-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_0

    .line 348
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 349
    const-string v1, "NotificationCompat"

    const-string v2, "Unable to access notification actions"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 350
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 354
    goto :goto_1

    .line 351
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 352
    const-string v1, "NotificationCompat"

    const-string v2, "Unable to access notification actions"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 353
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    goto :goto_1

    .line 355
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 17

    .prologue
    .line 295
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v10, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v4, v11

    monitor-enter v10

    .line 297
    move-object v10, v0

    :try_start_0
    invoke-static {v10}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v10

    move v11, v1

    aget-object v10, v10, v11

    move-object v5, v10

    .line 298
    const/4 v10, 0x0

    move-object v6, v10

    .line 299
    move-object v10, v0

    invoke-static {v10}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v10

    move-object v7, v10

    .line 300
    move-object v10, v7

    if-eqz v10, :cond_0

    .line 301
    move-object v10, v7

    const-string v11, "android.support.actionExtras"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    move-object v8, v10

    .line 303
    move-object v10, v8

    if-eqz v10, :cond_0

    .line 304
    move-object v10, v8

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    move-object v6, v10

    .line 307
    :cond_0
    move-object v10, v2

    move-object v11, v3

    sget-object v12, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    move-object v13, v5

    .line 308
    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    sget-object v13, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    move-object v14, v5

    .line 309
    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    sget-object v14, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    move-object v15, v5

    .line 310
    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    move-object v15, v6

    .line 307
    invoke-static/range {v10 .. v15}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v11, v4

    :try_start_1
    monitor-exit v11

    move-object v0, v10

    .line 317
    :goto_0
    return-object v0

    .line 312
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 313
    const-string v10, "NotificationCompat"

    const-string v11, "Unable to access notification actions"

    move-object v12, v5

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v10

    .line 314
    const/4 v10, 0x1

    sput-boolean v10, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 316
    move-object v10, v4

    monitor-exit v10

    .line 317
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v4

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v9

    throw v10
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 7

    .prologue
    .line 286
    move-object v0, p0

    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 287
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 288
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    array-length v4, v4

    :goto_0
    move-object v5, v1

    monitor-exit v5

    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method private static getActionFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 11

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    const-string v5, "icon"

    .line 377
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object v5, v0

    const-string v6, "title"

    .line 378
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v0

    const-string v7, "actionIntent"

    .line 379
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    move-object v7, v0

    const-string v8, "extras"

    .line 380
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v8, v0

    const-string v9, "remoteInputs"

    .line 382
    invoke-static {v8, v9}, Landroid/support/v4/app/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v8

    move-object v9, v2

    .line 381
    invoke-static {v8, v9}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v8

    move-object v9, v0

    const-string v10, "allowGeneratedReplies"

    .line 383
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 376
    invoke-interface/range {v3 .. v9}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Z)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 321
    move-object v0, p0

    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 322
    :try_start_0
    invoke-static {}, Landroid/support/v4/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 323
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 330
    :goto_0
    return-object v0

    .line 326
    :cond_0
    :try_start_1
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    :try_start_2
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 327
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 328
    const-string v4, "NotificationCompat"

    const-string v5, "Unable to access notification actions"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 329
    const/4 v4, 0x1

    sput-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    .line 330
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public static getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;",
            "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;",
            ")[",
            "Landroid/support/v4/app/NotificationCompatBase$Action;"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    if-nez v5, :cond_0

    .line 363
    const/4 v5, 0x0

    move-object v0, v5

    .line 370
    :goto_0
    return-object v0

    .line 365
    :cond_0
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v5

    move-object v3, v5

    .line 366
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 367
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    move-object v8, v1

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v7

    aput-object v7, v5, v6

    .line 366
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 370
    :cond_1
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method private static getBundleForAction(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 399
    move-object v0, p0

    new-instance v2, Landroid/os/Bundle;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 400
    move-object v2, v1

    const-string v3, "icon"

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    move-object v2, v1

    const-string v3, "title"

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 402
    move-object v2, v1

    const-string v3, "actionIntent"

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 403
    move-object v2, v1

    const-string v3, "extras"

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 404
    move-object v2, v1

    const-string v3, "remoteInputs"

    move-object v4, v0

    .line 405
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v4

    .line 404
    invoke-static {v4}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 406
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 225
    move-object v0, p0

    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 226
    :try_start_0
    sget-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    if-eqz v4, :cond_0

    .line 227
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 252
    :goto_0
    return-object v0

    .line 230
    :cond_0
    :try_start_1
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_2

    .line 231
    const-class v4, Landroid/app/Notification;

    const-string v5, "extras"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v2, v4

    .line 232
    const-class v4, Landroid/os/Bundle;

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    const-string v4, "NotificationCompat"

    const-string v5, "Notification.extras field is not of type Bundle"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 234
    const/4 v4, 0x1

    sput-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    const/4 v4, 0x0

    move-object v5, v1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    goto :goto_0

    .line 237
    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 238
    move-object v4, v2

    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    .line 240
    :cond_2
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    move-object v2, v4

    .line 241
    move-object v4, v2

    if-nez v4, :cond_3

    .line 242
    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v4

    .line 243
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    :cond_3
    move-object v4, v2

    move-object v5, v1

    :try_start_4
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 246
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 247
    const-string v4, "NotificationCompat"

    const-string v5, "Unable to access notification extras"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 251
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    .line 252
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 248
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 249
    const-string v4, "NotificationCompat"

    const-string v5, "Unable to access notification extras"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_1

    .line 253
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.support.groupKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 3

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.support.localOnly"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    move-object v6, v0

    if-nez v6, :cond_0

    .line 389
    const/4 v6, 0x0

    move-object v0, v6

    .line 395
    :goto_0
    return-object v0

    .line 391
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 392
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 393
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleForAction(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 392
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 395
    :cond_1
    move-object v6, v1

    move-object v0, v6

    goto :goto_0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.support.sortKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 3

    .prologue
    .line 418
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.support.isGroupSummary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 15

    .prologue
    .line 260
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v8, 0x0

    move-object v6, v8

    .line 261
    const/4 v8, 0x0

    move v7, v8

    .line 262
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 263
    move-object v8, v5

    const-string v9, "android.support.remoteInputs"

    .line 264
    invoke-static {v8, v9}, Landroid/support/v4/app/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v8

    move-object v9, v1

    .line 263
    invoke-static {v8, v9}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v8

    move-object v6, v8

    .line 266
    move-object v8, v5

    const-string v9, "android.support.allowGeneratedReplies"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    move v7, v8

    .line 268
    :cond_0
    move-object v8, v0

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move v14, v7

    invoke-interface/range {v8 .. v14}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Z)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 275
    new-instance v3, Landroid/os/Bundle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 276
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 277
    move-object v3, v2

    const-string v4, "android.support.remoteInputs"

    move-object v5, v1

    .line 278
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;

    move-result-object v5

    .line 277
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 280
    :cond_0
    move-object v3, v2

    const-string v4, "android.support.allowGeneratedReplies"

    move-object v5, v1

    .line 281
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v5

    .line 280
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
