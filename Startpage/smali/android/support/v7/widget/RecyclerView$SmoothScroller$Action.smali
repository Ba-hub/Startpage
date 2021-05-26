.class public Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 10260
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10261
    return-void
.end method

.method public constructor <init>(III)V
    .locals 9

    .prologue
    .line 10269
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10270
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 7

    .prologue
    .line 10279
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 10245
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10249
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 10253
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 10280
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 10281
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 10282
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 10283
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10284
    return-void
.end method

.method static synthetic access$6100(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 10235
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V
    .locals 9

    .prologue
    .line 10310
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v3, :cond_0

    .line 10311
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    move v2, v3

    .line 10312
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10313
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$6200(Landroid/support/v7/widget/RecyclerView;I)V

    .line 10314
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 10339
    :goto_0
    return-void

    .line 10317
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v3, :cond_4

    .line 10318
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 10319
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_3

    .line 10320
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    .line 10321
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$5900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 10328
    :goto_1
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 10329
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    .line 10332
    const-string v3, "RecyclerView"

    const-string v4, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 10335
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 10339
    :goto_2
    goto :goto_0

    .line 10323
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$5900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_1

    .line 10326
    :cond_3
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$5900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 10337
    :cond_4
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    goto :goto_2
.end method

.method private validate()V
    .locals 5

    .prologue
    .line 10342
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 10343
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10345
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 10346
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Scroll duration must be a positive number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10348
    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .prologue
    .line 10369
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    move v0, v1

    return v0
.end method

.method public getDx()I
    .locals 2

    .prologue
    .line 10351
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    move v0, v1

    return v0
.end method

.method public getDy()I
    .locals 2

    .prologue
    .line 10360
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    move v0, v1

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .prologue
    .line 10378
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v1

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 2

    .prologue
    .line 10306
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 4

    .prologue
    .line 10302
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10303
    return-void
.end method

.method public setDuration(I)V
    .locals 4

    .prologue
    .line 10373
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 10374
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 10375
    return-void
.end method

.method public setDx(I)V
    .locals 4

    .prologue
    .line 10355
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 10356
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 10357
    return-void
.end method

.method public setDy(I)V
    .locals 4

    .prologue
    .line 10364
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 10365
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 10366
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 10388
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 10389
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10390
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 7

    .prologue
    .line 10401
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 10402
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 10403
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 10404
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10405
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 10406
    return-void
.end method
