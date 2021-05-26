.class Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinderWrapper"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mRootHints:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1698
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1699
    move-object v3, v0

    new-instance v4, Landroid/os/Messenger;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mMessenger:Landroid/os/Messenger;

    .line 1700
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    .line 1701
    return-void
.end method

.method private sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1754
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    move-object v4, v5

    .line 1755
    move-object v5, v4

    move v6, v1

    iput v6, v5, Landroid/os/Message;->what:I

    .line 1756
    move-object v5, v4

    const/4 v6, 0x1

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 1757
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1758
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1759
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mMessenger:Landroid/os/Messenger;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1760
    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1718
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v6, Landroid/os/Bundle;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v5, v6

    .line 1719
    move-object v6, v5

    const-string v7, "data_media_item_id"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    move-object v6, v5

    const-string v7, "data_callback_token"

    move-object v8, v2

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1721
    move-object v6, v5

    const-string v7, "data_options"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1722
    move-object v6, v0

    const/4 v7, 0x3

    move-object v8, v5

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 1723
    return-void
.end method

.method connect(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1705
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/os/Bundle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1706
    move-object v4, v3

    const-string v5, "data_package_name"

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    move-object v4, v3

    const-string v5, "data_root_hints"

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1708
    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 1709
    return-void
.end method

.method disconnect(Landroid/os/Messenger;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1712
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 1713
    return-void
.end method

.method getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1736
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Landroid/os/Bundle;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 1737
    move-object v5, v4

    const-string v6, "data_media_item_id"

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    move-object v5, v4

    const-string v6, "data_result_receiver"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1739
    move-object v5, v0

    const/4 v6, 0x5

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 1740
    return-void
.end method

.method registerCallbackMessenger(Landroid/os/Messenger;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1743
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/os/Bundle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1744
    move-object v3, v2

    const-string v4, "data_root_hints"

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1745
    move-object v3, v0

    const/4 v4, 0x6

    move-object v5, v2

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 1746
    return-void
.end method

.method removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1728
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Landroid/os/Bundle;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v4, v5

    .line 1729
    move-object v5, v4

    const-string v6, "data_media_item_id"

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    move-object v5, v4

    const-string v6, "data_callback_token"

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1731
    move-object v5, v0

    const/4 v6, 0x4

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 1732
    return-void
.end method

.method unregisterCallbackMessenger(Landroid/os/Messenger;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1749
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x7

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 1750
    return-void
.end method
