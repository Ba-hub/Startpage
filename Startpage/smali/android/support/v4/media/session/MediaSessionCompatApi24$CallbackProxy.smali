.class Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
.super Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;",
        ">",
        "Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    invoke-interface {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepare()V

    .line 61
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method
