.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallbacksCompat"
.end annotation


# instance fields
.field final mCallbacks:Landroid/os/Messenger;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
    .locals 5

    .prologue
    .line 712
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 713
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    .line 714
    return-void
.end method

.method private sendRequest(ILandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 754
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    move-object v3, v4

    .line 755
    move-object v4, v3

    move v5, v1

    iput v5, v4, Landroid/os/Message;->what:I

    .line 756
    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 757
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 758
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 759
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 718
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 724
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v3

    if-nez v5, :cond_0

    .line 725
    new-instance v5, Landroid/os/Bundle;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v3, v5

    .line 727
    :cond_0
    move-object v5, v3

    const-string v6, "extra_service_version"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 728
    new-instance v5, Landroid/os/Bundle;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 729
    move-object v5, v4

    const-string v6, "data_media_item_id"

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    move-object v5, v4

    const-string v6, "data_media_session_token"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 731
    move-object v5, v4

    const-string v6, "data_root_hints"

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 732
    move-object v5, v0

    const/4 v6, 0x1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 733
    return-void
.end method

.method public onConnectFailed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 738
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 743
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Landroid/os/Bundle;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 744
    move-object v5, v4

    const-string v6, "data_media_item_id"

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    move-object v5, v4

    const-string v6, "data_options"

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 746
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 747
    move-object v5, v4

    const-string v6, "data_media_item_list"

    move-object v7, v2

    instance-of v7, v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 750
    :cond_0
    move-object v5, v0

    const/4 v6, 0x3

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    .line 751
    return-void

    .line 747
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
