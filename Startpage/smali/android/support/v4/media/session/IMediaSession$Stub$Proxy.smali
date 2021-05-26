.class Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 481
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 482
    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v5, v7

    .line 691
    move-object v7, v4

    :try_start_0
    const-string v8, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 692
    move-object v7, v4

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    move-object v7, v4

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 695
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v8, 0xb

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 696
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 700
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 702
    return-void

    .line 699
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 700
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    return-object v0
.end method

.method public fastForward()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 881
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 884
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 885
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 886
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 890
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 892
    return-void

    .line 889
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 890
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1050
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 1051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 1054
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1055
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1f

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 1056
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 1057
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1058
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 1065
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1066
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1068
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 1061
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 1065
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1066
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getFlags()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v1, v6

    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v2, v6

    .line 653
    move-object v6, v1

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 654
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x9

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 655
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 656
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    move-wide v3, v6

    .line 659
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 660
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 662
    move-wide v6, v3

    move-wide v0, v6

    return-wide v0

    .line 659
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 660
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    const-string v1, "android.support.v4.media.session.IMediaSession"

    move-object v0, v1

    return-object v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 631
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 632
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x8

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 633
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 634
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 635
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 642
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 643
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 645
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 638
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 643
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 971
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 972
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1b

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 973
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 974
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 975
    sget-object v5, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 982
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 983
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 985
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 978
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 982
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 983
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 597
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x6

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 599
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 600
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 603
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 604
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 606
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 603
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 604
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 989
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 993
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 994
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1c

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 995
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 996
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 997
    sget-object v5, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 1004
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1005
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1007
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 1000
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 1004
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1005
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getQueue()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1011
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 1015
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1016
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1d

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 1017
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 1018
    move-object v5, v2

    sget-object v6, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 1021
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1022
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1024
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 1021
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1022
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1028
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 1029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 1032
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1033
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1e

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 1034
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 1035
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1036
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 1043
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1044
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1046
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 1039
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 1043
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1044
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getRatingType()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1072
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 1073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 1076
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1077
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x20

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 1078
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 1079
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v3, v5

    .line 1082
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1083
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1085
    move v5, v3

    move v0, v5

    return v0

    .line 1082
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1083
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getTag()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 614
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x7

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 616
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 617
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 620
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 621
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 623
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 620
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 621
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 666
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 670
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 671
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xa

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 672
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 673
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 674
    sget-object v5, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 681
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 682
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 684
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 677
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 682
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public isTransportControlEnabled()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 580
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 581
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x5

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 582
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 583
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 586
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 587
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 589
    move v5, v3

    move v0, v5

    return v0

    .line 583
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 587
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public next()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 856
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 858
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 862
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 864
    return-void

    .line 861
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 862
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public pause()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 825
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 828
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 829
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x12

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 830
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 834
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 836
    return-void

    .line 833
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 834
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public play()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 724
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 727
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 729
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 733
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 735
    return-void

    .line 732
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 733
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 738
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 741
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 744
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 750
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0xe

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 751
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 755
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 757
    return-void

    .line 748
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 754
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 755
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 760
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 763
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 764
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 766
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 772
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0xf

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 773
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 777
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 779
    return-void

    .line 770
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 776
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 777
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 785
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 787
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 793
    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 794
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 800
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x10

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 801
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 805
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 807
    return-void

    .line 791
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 804
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 805
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6

    .line 798
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public prepare()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1089
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 1090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 1092
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1093
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x21

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1094
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1098
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1100
    return-void

    .line 1097
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1098
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 1104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 1106
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1107
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1108
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 1109
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1115
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x22

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 1116
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1120
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1122
    return-void

    .line 1113
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1119
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1120
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1125
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 1126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 1128
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1129
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1130
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 1131
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1137
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x23

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 1138
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1142
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1144
    return-void

    .line 1135
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1141
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1142
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 1148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 1150
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1151
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 1152
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1158
    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 1159
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1165
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x24

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 1166
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1170
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1172
    return-void

    .line 1156
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1169
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1170
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6

    .line 1163
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public previous()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 867
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 870
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x15

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 872
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 876
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 878
    return-void

    .line 875
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 876
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public rate(Landroid/support/v4/media/RatingCompat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 924
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 927
    move-object v5, v2

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 928
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 929
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/RatingCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 935
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x19

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 936
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 940
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 942
    return-void

    .line 933
    :cond_0
    move-object v5, v2

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 940
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 546
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 549
    move-object v5, v2

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    move-object v5, v2

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-interface {v6}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 551
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x3

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 552
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 556
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 558
    return-void

    .line 550
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 556
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public rewind()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 895
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 898
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 899
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 900
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 904
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 906
    return-void

    .line 903
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 904
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public seekTo(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    move-object v0, p0

    move-wide v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 912
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    move-object v6, v3

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 914
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x18

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 915
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 919
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 921
    return-void

    .line 918
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 919
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v5, v7

    .line 496
    move-object v7, v4

    :try_start_0
    const-string v8, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 499
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    move-object v7, v2

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 505
    :goto_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 506
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 512
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x1

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 513
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 517
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 519
    return-void

    .line 503
    :cond_0
    move-object v7, v4

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 517
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7

    .line 510
    :cond_1
    move-object v7, v4

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 945
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 948
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 949
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 950
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 951
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 957
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x1a

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 958
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 962
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 964
    return-void

    .line 955
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 961
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 962
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 522
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v2, v6

    .line 523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 526
    move-object v6, v2

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 528
    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 534
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x2

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 535
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 536
    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 539
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 540
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 542
    move v6, v4

    move v0, v6

    return v0

    .line 532
    :cond_0
    move-object v6, v2

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 540
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6

    .line 536
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v5, v7

    .line 708
    move-object v7, v4

    :try_start_0
    const-string v8, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 709
    move-object v7, v4

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    move-object v7, v4

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v8, 0xc

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 713
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 717
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 719
    return-void

    .line 716
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 717
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method public skipToQueueItem(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 810
    move-object v0, p0

    move-wide v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 813
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 814
    move-object v6, v3

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 815
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x11

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 816
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 820
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 822
    return-void

    .line 819
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 820
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public stop()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 839
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 842
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 843
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x13

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 844
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 848
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 850
    return-void

    .line 847
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 848
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 564
    move-object v5, v2

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    move-object v5, v2

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-interface {v6}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 566
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x4

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 567
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 571
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 573
    return-void

    .line 565
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 571
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method
