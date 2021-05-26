.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/support/v4/media/session/MediaControllerCompat$1;)V
    .locals 5

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(IIIII)V
    .locals 15

    .prologue
    .line 483
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    new-instance v7, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v8 .. v13}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    invoke-virtual {v6, v7}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    .line 485
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 478
    return-void
.end method

.method public onMetadataChanged(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 462
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 463
    return-void
.end method

.method public onPlaybackStateChanged(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    .line 457
    invoke-static {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    .line 456
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 458
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 467
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->fromQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 468
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 472
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 473
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    .line 447
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 452
    return-void
.end method
