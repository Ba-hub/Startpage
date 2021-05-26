.class public abstract Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 10857
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10913
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 10914
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 10917
    move-object v1, v0

    const-wide/16 v2, 0x78

    iput-wide v2, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 10918
    move-object v1, v0

    const-wide/16 v2, 0x78

    iput-wide v2, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 10919
    move-object v1, v0

    const-wide/16 v2, 0xfa

    iput-wide v2, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 10920
    move-object v1, v0

    const-wide/16 v2, 0xfa

    iput-wide v2, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 11521
    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 6

    .prologue
    .line 11242
    move-object v0, p0

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$6500(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    const/16 v5, 0xe

    and-int/lit8 v4, v4, 0xe

    move v1, v4

    .line 11243
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11244
    const/4 v4, 0x4

    move v0, v4

    .line 11253
    :goto_0
    return v0

    .line 11246
    :cond_0
    move v4, v1

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_1

    .line 11247
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v4

    move v2, v4

    .line 11248
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    move v3, v4

    .line 11249
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_1

    .line 11250
    move v4, v1

    const/16 v5, 0x800

    or-int/lit16 v4, v4, 0x800

    move v1, v4

    .line 11253
    :cond_1
    move v4, v1

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public abstract animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract animatePersistence(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11431
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 11461
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public final dispatchAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 11326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 11327
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v2, :cond_0

    .line 11328
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 11330
    :cond_0
    return-void
.end method

.method public final dispatchAnimationStarted(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 11367
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onAnimationStarted(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 11368
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 5

    .prologue
    .line 11469
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 11470
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 11471
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 11470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11473
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 11474
    return-void
.end method

.method public abstract endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 3

    .prologue
    .line 10946
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 3

    .prologue
    .line 10982
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 3

    .prologue
    .line 10928
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 3

    .prologue
    .line 10964
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 5

    .prologue
    .line 11398
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v3

    move v2, v3

    .line 11399
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 11400
    move v3, v2

    if-nez v3, :cond_1

    .line 11401
    move-object v3, v1

    invoke-interface {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 11406
    :cond_0
    :goto_0
    move v3, v2

    move v0, v3

    return v0

    .line 11403
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public obtainHolderInfo()Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 4

    .prologue
    .line 11486
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public onAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 11341
    return-void
.end method

.method public onAnimationStarted(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 11379
    return-void
.end method

.method public recordPostLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 11071
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 7
    .param p1    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$State;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .prologue
    .line 11042
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 6

    .prologue
    .line 10955
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 10956
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 6

    .prologue
    .line 10991
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 10992
    return-void
.end method

.method setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 4

    .prologue
    .line 11003
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 11004
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 6

    .prologue
    .line 10937
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 10938
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 6

    .prologue
    .line 10973
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 10974
    return-void
.end method
