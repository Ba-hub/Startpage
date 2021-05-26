.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi24"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1550
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;-><init>(Ljava/lang/Object;)V

    .line 1551
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 2

    .prologue
    .line 1555
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepare(Ljava/lang/Object;)V

    .line 1556
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1560
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1562
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1566
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1568
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1572
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromUri(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1573
    return-void
.end method
