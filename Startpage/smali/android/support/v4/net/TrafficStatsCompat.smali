.class public final Landroid/support/v4/net/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;,
        Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;,
        Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;,
        Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 157
    const-string v0, "N"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 160
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->clearThreadStatsTag()V

    .line 172
    return-void
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 180
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .locals 3

    .prologue
    .line 191
    move v0, p0

    sget-object v1, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    move v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->incrementOperationCount(I)V

    .line 192
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 5

    .prologue
    .line 202
    move v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    move v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->incrementOperationCount(II)V

    .line 203
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .locals 3

    .prologue
    .line 217
    move v0, p0

    sget-object v1, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    move v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->setThreadStatsTag(I)V

    .line 218
    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    sget-object v1, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 250
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    sget-object v1, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->tagSocket(Ljava/net/Socket;)V

    .line 230
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    sget-object v1, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 257
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    sget-object v1, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->untagSocket(Ljava/net/Socket;)V

    .line 237
    return-void
.end method
