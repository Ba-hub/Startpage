.class Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IcsTrafficStatsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .locals 0

    .prologue
    .line 98
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->clearThreadStatsTag()V

    .line 99
    return-void
.end method

.method public getThreadStatsTag()I
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->getThreadStatsTag()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public incrementOperationCount(I)V
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(I)V

    .line 109
    return-void
.end method

.method public incrementOperationCount(II)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(II)V

    .line 114
    return-void
.end method

.method public setThreadStatsTag(I)V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->setThreadStatsTag(I)V

    .line 119
    return-void
.end method

.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 134
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->tagSocket(Ljava/net/Socket;)V

    .line 124
    return-void
.end method

.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 139
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->untagSocket(Ljava/net/Socket;)V

    .line 129
    return-void
.end method
