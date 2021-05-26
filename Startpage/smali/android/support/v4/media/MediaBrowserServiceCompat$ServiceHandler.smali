.class final Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field private final mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 8

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 401
    move-object v2, v0

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V
    .locals 5

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 406
    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 439
    const-string v3, "MBServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n  Service version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n  Client version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget v5, v5, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 443
    :goto_0
    return-void

    .line 408
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    move-object v4, v2

    const-string v5, "data_package_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    const-string v6, "data_calling_uid"

    .line 409
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v6, v2

    const-string v7, "data_root_hints"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v10, v1

    iget-object v10, v10, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v8, v9, v10}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V

    .line 408
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 411
    goto :goto_0

    .line 413
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->disconnect(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 414
    goto :goto_0

    .line 416
    :pswitch_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    move-object v4, v2

    const-string v5, "data_media_item_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    const-string v6, "data_callback_token"

    .line 417
    invoke-static {v5, v6}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    move-object v6, v2

    const-string v7, "data_options"

    .line 418
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v10, v1

    iget-object v10, v10, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v8, v9, v10}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V

    .line 416
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 420
    goto :goto_0

    .line 422
    :pswitch_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    move-object v4, v2

    const-string v5, "data_media_item_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    const-string v6, "data_callback_token"

    .line 423
    invoke-static {v5, v6}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v9, v1

    iget-object v9, v9, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v7, v8, v9}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V

    .line 422
    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 425
    goto/16 :goto_0

    .line 427
    :pswitch_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    move-object v4, v2

    const-string v5, "data_media_item_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    const-string v6, "data_result_receiver"

    .line 428
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/support/v4/os/ResultReceiver;

    new-instance v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v9, v1

    iget-object v9, v9, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v7, v8, v9}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V

    .line 427
    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 430
    goto/16 :goto_0

    .line 432
    :pswitch_5
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V

    move-object v5, v2

    const-string v6, "data_root_hints"

    .line 433
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 432
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->registerCallbacks(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Landroid/os/Bundle;)V

    .line 434
    goto/16 :goto_0

    .line 436
    :pswitch_6
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->unregisterCallbacks(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 437
    goto/16 :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public postOrRun(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 457
    move-object v2, v1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 9

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 450
    move-object v5, v4

    const-class v6, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 451
    move-object v5, v4

    const-string v6, "data_calling_uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-super {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v5

    move v0, v5

    return v0
.end method
