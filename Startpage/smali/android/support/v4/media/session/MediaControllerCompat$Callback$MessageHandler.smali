.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;
.super Landroid/os/Handler;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x8

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_UPDATE_EXTRAS:I = 0x7

.field private static final MSG_UPDATE_METADATA:I = 0x3

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x5

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final MSG_UPDATE_VOLUME:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Looper;)V
    .locals 5

    .prologue
    .line 546
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 547
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 548
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$300(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    :goto_0
    return-void

    .line 555
    :cond_0
    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 581
    :goto_1
    goto :goto_0

    .line 557
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 558
    goto :goto_1

    .line 560
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 561
    goto :goto_1

    .line 563
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 564
    goto :goto_1

    .line 566
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 567
    goto :goto_1

    .line 569
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 570
    goto :goto_1

    .line 572
    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 573
    goto :goto_1

    .line 575
    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    .line 576
    goto :goto_1

    .line 578
    :pswitch_7
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    goto :goto_1

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 584
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v4, v5

    .line 585
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 586
    move-object v5, v4

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 587
    return-void
.end method
