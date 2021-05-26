.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mResultObj:Landroid/service/media/MediaBrowserService$Result;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$Result;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    .line 63
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    .line 76
    return-void
.end method

.method parcelListToItemList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-nez v5, :cond_0

    .line 80
    const/4 v5, 0x0

    move-object v0, v5

    .line 88
    :goto_0
    return-object v0

    .line 82
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 83
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcel;

    move-object v4, v5

    .line 84
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    move-object v5, v2

    sget-object v6, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v7, v4

    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 86
    move-object v5, v4

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method public sendResult(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 67
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->parcelListToItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_0

    .line 69
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;

    sget-object v3, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    check-cast v4, Landroid/os/Parcel;

    .line 70
    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
