.class Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    .line 159
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->start()V

    .line 160
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    .line 166
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 167
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/Pools$SynchronizedPool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v2, v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 8

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return-void

    .line 214
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 215
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Failed to enqueue async inflate request"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public obtainRequest()Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    .locals 6

    .prologue
    .line 195
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    move-object v1, v2

    .line 196
    move-object v2, v1

    if-nez v2, :cond_0

    .line 197
    new-instance v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;-><init>(Landroid/support/v4/view/AsyncLayoutInflater$1;)V

    move-object v1, v2

    .line 199
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public releaseRequest(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 204
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    .line 205
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 206
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 207
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 208
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-result v2

    .line 209
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 174
    move-object v0, p0

    :goto_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 182
    move-object v3, v1

    move-object v4, v1

    :try_start_1
    iget-object v4, v4, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-static {v4}, Landroid/support/v4/view/AsyncLayoutInflater;->access$000(Landroid/support/v4/view/AsyncLayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object v5, v1

    iget v5, v5, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :goto_1
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-static {v3}, Landroid/support/v4/view/AsyncLayoutInflater;->access$200(Landroid/support/v4/view/AsyncLayoutInflater;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 191
    goto :goto_0

    .line 175
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 177
    const-string v3, "AsyncLayoutInflater"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 178
    goto :goto_0

    .line 184
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 186
    const-string v3, "AsyncLayoutInflater"

    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method
