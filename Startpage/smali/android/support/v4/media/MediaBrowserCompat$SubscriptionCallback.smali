.class public abstract Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubscriptionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi24;,
        Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
    }
.end annotation


# instance fields
.field private final mSubscriptionCallbackObj:Ljava/lang/Object;

.field private mSubscriptionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 549
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi24;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi24;-><init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroid/support/v4/media/MediaBrowserCompat$1;)V

    .line 551
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompatApi24;->createSubscriptionCallback(Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    .line 552
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    .line 561
    :goto_0
    return-void

    .line 553
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 554
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;-><init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroid/support/v4/media/MediaBrowserCompat$1;)V

    .line 555
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompatApi21;->createSubscriptionCallback(Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    .line 556
    move-object v1, v0

    new-instance v2, Landroid/os/Binder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    goto :goto_0

    .line 558
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    .line 559
    move-object v1, v0

    new-instance v2, Landroid/os/Binder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2100(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroid/support/v4/media/MediaBrowserCompat$Subscription;)V
    .locals 4

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->setSubscription(Landroid/support/v4/media/MediaBrowserCompat$Subscription;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    return-object v0
.end method

.method private setSubscription(Landroid/support/v4/media/MediaBrowserCompat$Subscription;)V
    .locals 7

    .prologue
    .line 613
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    .line 614
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    .prologue
    .line 583
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 595
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 610
    return-void
.end method
