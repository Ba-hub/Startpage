.class public final Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_DISPLAY_INLINE:I = 0x4

.field private static final FLAG_HINT_LAUNCHES_ACTIVITY:I = 0x2

.field private static final KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private mCancelLabel:Ljava/lang/CharSequence;

.field private mConfirmLabel:Ljava/lang/CharSequence;

.field private mFlags:I

.field private mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 2559
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2549
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 2560
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 7

    .prologue
    .line 2567
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2549
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 2568
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.wearable.EXTENSIONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 2569
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2570
    move-object v3, v0

    move-object v4, v2

    const-string v5, "flags"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 2571
    move-object v3, v0

    move-object v4, v2

    const-string v5, "inProgressLabel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2572
    move-object v3, v0

    move-object v4, v2

    const-string v5, "confirmLabel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2573
    move-object v3, v0

    move-object v4, v2

    const-string v5, "cancelLabel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2575
    :cond_0
    return-void
.end method

.method private setFlag(IZ)V
    .locals 8

    .prologue
    .line 2635
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 2636
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    move v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 2640
    :goto_0
    return-void

    .line 2638
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 5

    .prologue
    .line 2605
    move-object v0, p0

    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;-><init>()V

    move-object v1, v2

    .line 2606
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    iput v3, v2, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 2607
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2608
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2609
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2610
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2531
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 7

    .prologue
    .line 2584
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 2586
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2587
    move-object v3, v2

    const-string v4, "flags"

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2589
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 2590
    move-object v3, v2

    const-string v4, "inProgressLabel"

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2592
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 2593
    move-object v3, v2

    const-string v4, "confirmLabel"

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2595
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 2596
    move-object v3, v2

    const-string v4, "cancelLabel"

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2599
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.wearable.EXTENSIONS"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2600
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2705
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2683
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getHintDisplayActionInline()Z
    .locals 3

    .prologue
    .line 2756
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintLaunchesActivity()Z
    .locals 3

    .prologue
    .line 2729
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2661
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public isAvailableOffline()Z
    .locals 3

    .prologue
    .line 2631
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 5

    .prologue
    .line 2620
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 2621
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 4

    .prologue
    .line 2694
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2695
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 4

    .prologue
    .line 2672
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2673
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHintDisplayActionInline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 5

    .prologue
    .line 2743
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x4

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 2744
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHintLaunchesActivity(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 5

    .prologue
    .line 2717
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 2718
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 4

    .prologue
    .line 2650
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2651
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
