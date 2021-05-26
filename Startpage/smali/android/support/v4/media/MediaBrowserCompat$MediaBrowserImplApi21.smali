.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
.implements Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplApi21"
.end annotation


# instance fields
.field protected final mBrowserObj:Ljava/lang/Object;

.field protected mCallbacksMessenger:Landroid/os/Messenger;

.field protected final mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

.field protected final mRootHints:Landroid/os/Bundle;

.field protected mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 1302
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1295
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    .line 1296
    move-object v5, v0

    new-instance v6, Landroid/support/v4/util/ArrayMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    .line 1305
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_1

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1306
    move-object v5, v4

    if-nez v5, :cond_0

    .line 1307
    new-instance v5, Landroid/os/Bundle;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 1309
    :cond_0
    move-object v5, v4

    const-string v6, "extra_client_version"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1310
    move-object v5, v0

    new-instance v6, Landroid/os/Bundle;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    .line 1314
    :goto_0
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->setInternalConnectionCallback(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;)V

    .line 1315
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->mConnectionCallbackObj:Ljava/lang/Object;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    invoke-static {v6, v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompatApi21;->createBrowser(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    .line 1317
    return-void

    .line 1312
    :cond_1
    move-object v5, v0

    move-object v6, v4

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v6, Landroid/os/Bundle;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 1321
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->connect(Ljava/lang/Object;)V

    .line 1322
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 1326
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 1328
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->unregisterCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompatApi21;->disconnect(Ljava/lang/Object;)V

    .line 1334
    return-void

    .line 1329
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1330
    const-string v2, "MediaBrowserCompat"

    const-string v3, "Remote error unregistering client messenger."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1355
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1448
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1449
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "mediaId is empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1451
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 1452
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "cb is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1454
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserCompatApi21;->isConnected(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1455
    const-string v5, "MediaBrowserCompat"

    const-string v6, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1456
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 1486
    :goto_0
    return-void

    .line 1464
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v5, :cond_3

    .line 1465
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 1472
    goto :goto_0

    .line 1474
    :cond_3
    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V

    move-object v3, v5

    .line 1476
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    move-object v6, v1

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    :goto_1
    goto :goto_0

    .line 1477
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1478
    const-string v5, "MediaBrowserCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote error getting media item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1479
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$3;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$3;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_1
.end method

.method public getRoot()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1349
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getRoot(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 1343
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getServiceComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1361
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    .line 1362
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1361
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 1338
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->isConnected(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public onConnected()V
    .locals 10

    .prologue
    .line 1490
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    move-object v1, v4

    .line 1491
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1505
    :goto_0
    return-void

    .line 1494
    :cond_0
    move-object v4, v1

    const-string v5, "extra_messenger"

    invoke-static {v4, v5}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    move-object v2, v4

    .line 1495
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 1496
    move-object v4, v0

    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mRootHints:Landroid/os/Bundle;

    invoke-direct {v6, v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1497
    move-object v4, v0

    new-instance v5, Landroid/os/Messenger;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v6, v7}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1498
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1500
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->registerCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    :cond_1
    :goto_1
    goto :goto_0

    .line 1501
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1502
    const-string v4, "MediaBrowserCompat"

    const-string v5, "Remote error registering client messenger."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method public onConnectionFailed()V
    .locals 0

    .prologue
    .line 1517
    return-void
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .locals 0

    .prologue
    .line 1528
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 3

    .prologue
    .line 1509
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1510
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1511
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1512
    return-void
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 1532
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    move-object v8, v1

    if-eq v7, v8, :cond_0

    .line 1554
    :goto_0
    return-void

    .line 1537
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    move-object v5, v7

    .line 1538
    move-object v7, v5

    if-nez v7, :cond_2

    .line 1539
    invoke-static {}, Landroid/support/v4/media/MediaBrowserCompat;->access$700()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1540
    const-string v7, "MediaBrowserCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1542
    :cond_1
    goto :goto_0

    .line 1546
    :cond_2
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallback(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v7

    move-object v6, v7

    .line 1547
    move-object v7, v6

    if-eqz v7, :cond_3

    .line 1548
    move-object v7, v4

    if-nez v7, :cond_4

    .line 1549
    move-object v7, v6

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 1554
    :cond_3
    :goto_1
    goto :goto_0

    .line 1551
    :cond_4
    move-object v7, v6

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1523
    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1369
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    move-object v4, v6

    .line 1370
    move-object v6, v4

    if-nez v6, :cond_0

    .line 1371
    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;-><init>()V

    move-object v4, v6

    .line 1372
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1374
    :cond_0
    move-object v6, v3

    move-object v7, v4

    invoke-static {v6, v7}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$2100(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroid/support/v4/media/MediaBrowserCompat$Subscription;)V

    .line 1375
    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->putCallback(Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 1377
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v6, :cond_1

    .line 1378
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    move-object v7, v1

    move-object v8, v3

    .line 1379
    invoke-static {v8}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$2200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v8

    .line 1378
    invoke-static {v6, v7, v8}, Landroid/support/v4/media/MediaBrowserCompatApi21;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1390
    :goto_0
    return-void

    .line 1382
    :cond_1
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    move-object v7, v1

    move-object v8, v3

    .line 1383
    invoke-static {v8}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v8

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1382
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    goto :goto_0

    .line 1384
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1387
    const-string v6, "MediaBrowserCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote error subscribing media item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1394
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    move-object v3, v7

    .line 1395
    move-object v7, v3

    if-nez v7, :cond_0

    .line 1444
    :goto_0
    return-void

    .line 1399
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v7, :cond_7

    .line 1400
    move-object v7, v2

    if-nez v7, :cond_3

    .line 1401
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1441
    :goto_1
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v2

    if-nez v7, :cond_2

    .line 1442
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1444
    :cond_2
    goto :goto_0

    .line 1403
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 1404
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 1405
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    :goto_2
    move v7, v6

    if-ltz v7, :cond_5

    .line 1406
    move-object v7, v4

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v2

    if-ne v7, v8, :cond_4

    .line 1407
    move-object v7, v4

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 1408
    move-object v7, v5

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 1405
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1411
    :cond_5
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 1412
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mBrowserObj:Ljava/lang/Object;

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1414
    :cond_6
    goto :goto_1

    .line 1418
    :cond_7
    move-object v7, v2

    if-nez v7, :cond_9

    .line 1419
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    .line 1438
    :cond_8
    goto :goto_1

    .line 1422
    :cond_9
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 1423
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 1424
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    :goto_3
    move v7, v6

    if-ltz v7, :cond_8

    .line 1425
    move-object v7, v4

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v2

    if-ne v7, v8, :cond_a

    .line 1426
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    move-object v8, v1

    move-object v9, v2

    .line 1427
    invoke-static {v9}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1426
    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    .line 1428
    move-object v7, v4

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 1429
    move-object v7, v5

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1424
    :cond_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 1433
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 1436
    const-string v7, "MediaBrowserCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_1
.end method
