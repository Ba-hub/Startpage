.class Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 5

    .prologue
    .line 236
    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 237
    const/4 v2, 0x0

    move-object v0, v2

    .line 241
    :goto_0
    monitor-exit v4

    return-object v0

    .line 239
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-object v1, v2

    .line 240
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v3}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method declared-synchronized removeMessages(I)V
    .locals 8

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move-object v7, p0

    monitor-enter v7

    :goto_0
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget v5, v5, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 263
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-object v2, v5

    .line 264
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 265
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V

    .line 266
    goto :goto_0

    .line 267
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v5, :cond_2

    .line 268
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-object v2, v5

    .line 269
    move-object v5, v2

    invoke-static {v5}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v5

    move-object v3, v5

    .line 270
    :goto_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 271
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v5

    move-object v4, v5

    .line 272
    move-object v5, v3

    iget v5, v5, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    move v6, v1

    if-ne v5, v6, :cond_1

    .line 273
    move-object v5, v2

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v5

    .line 274
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_2
    move-object v5, v4

    move-object v3, v5

    .line 279
    goto :goto_1

    .line 276
    :cond_1
    move-object v5, v3

    move-object v2, v5

    goto :goto_2

    .line 281
    :cond_2
    monitor-exit v7

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method declared-synchronized sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 6

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-nez v3, :cond_0

    .line 251
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_0
    monitor-exit v5

    return-void

    .line 254
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-object v2, v3

    .line 255
    :goto_1
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 256
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 258
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 259
    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v2, v3}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    .line 246
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit v4

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
