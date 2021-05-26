.class public final Landroid/support/v4/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mIntent:Landroid/app/PendingIntent;

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    .prologue
    .line 2410
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    new-instance v8, Landroid/os/Bundle;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 2411
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 2422
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 2423
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    .line 2424
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 2425
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    .line 2426
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    .line 2427
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 10

    .prologue
    .line 2419
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/app/NotificationCompat$Action;->access$400(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 2420
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 4

    .prologue
    .line 2437
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2438
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2440
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 6

    .prologue
    .line 2460
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2461
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 2463
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2464
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public build()Landroid/support/v4/app/NotificationCompat$Action;
    .locals 12

    .prologue
    .line 2496
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 2497
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/support/v4/app/RemoteInput;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/v4/app/RemoteInput;

    :goto_0
    move-object v1, v2

    .line 2498
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    move-object v8, v1

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;ZLandroid/support/v4/app/NotificationCompat$1;)V

    move-object v0, v2

    return-object v0

    .line 2497
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Extender;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 4

    .prologue
    .line 2486
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/support/v4/app/NotificationCompat$Action$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v2

    .line 2487
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 2449
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 4

    .prologue
    .line 2477
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 2478
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
