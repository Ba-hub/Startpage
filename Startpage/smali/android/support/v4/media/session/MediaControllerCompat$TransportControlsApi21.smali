.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi21"
.end annotation


# instance fields
.field protected final mControlsObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1377
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    .line 1378
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    .line 1379
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 2

    .prologue
    .line 1432
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->fastForward(Ljava/lang/Object;)V

    .line 1433
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1417
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->pause(Ljava/lang/Object;)V

    .line 1418
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 1412
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->play(Ljava/lang/Object;)V

    .line 1413
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1458
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1460
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1464
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1466
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1470
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-eqz v4, :cond_0

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1471
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "You must specify a non-empty Uri for playFromUri."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1474
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1475
    move-object v4, v3

    const-string v5, "android.support.v4.media.session.action.ARGUMENT_URI"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1476
    move-object v4, v3

    const-string v5, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1477
    move-object v4, v0

    const-string v5, "android.support.v4.media.session.action.PLAY_FROM_URI"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1478
    return-void
.end method

.method public prepare()V
    .locals 4

    .prologue
    .line 1383
    move-object v0, p0

    move-object v1, v0

    const-string v2, "android.support.v4.media.session.action.PREPARE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1384
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1388
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1389
    move-object v4, v3

    const-string v5, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    move-object v4, v3

    const-string v5, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1391
    move-object v4, v0

    const-string v5, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1392
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1396
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1397
    move-object v4, v3

    const-string v5, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    move-object v4, v3

    const-string v5, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1399
    move-object v4, v0

    const-string v5, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1400
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1404
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1405
    move-object v4, v3

    const-string v5, "android.support.v4.media.session.action.ARGUMENT_URI"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1406
    move-object v4, v3

    const-string v5, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1407
    move-object v4, v0

    const-string v5, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1408
    return-void
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 1437
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->rewind(Ljava/lang/Object;)V

    .line 1438
    return-void
.end method

.method public seekTo(J)V
    .locals 6

    .prologue
    .line 1427
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->seekTo(Ljava/lang/Object;J)V

    .line 1428
    return-void
.end method

.method public sendCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1487
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    move-object v4, v1

    .line 1488
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    .line 1487
    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1489
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1493
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1495
    return-void
.end method

.method public setRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 4

    .prologue
    .line 1452
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 1453
    invoke-virtual {v3}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object v3

    .line 1452
    :goto_0
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->setRating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1454
    return-void

    .line 1453
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public skipToNext()V
    .locals 2

    .prologue
    .line 1442
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToNext(Ljava/lang/Object;)V

    .line 1443
    return-void
.end method

.method public skipToPrevious()V
    .locals 2

    .prologue
    .line 1447
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToPrevious(Ljava/lang/Object;)V

    .line 1448
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 6

    .prologue
    .line 1482
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToQueueItem(Ljava/lang/Object;J)V

    .line 1483
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1422
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->stop(Ljava/lang/Object;)V

    .line 1423
    return-void
.end method
