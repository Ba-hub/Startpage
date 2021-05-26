.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)V

    move-object v0, v2

    return-object v0
.end method

.method public static notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/service/media/MediaBrowserService;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static onBind(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/service/media/MediaBrowserService;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static onCreate(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 39
    return-void
.end method

.method public static setSessionToken(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/service/media/MediaBrowserService;

    move-object v3, v1

    check-cast v3, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v2, v3}, Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 47
    return-void
.end method
