.class public Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScroll:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field private mInsetOffsetX:I

.field private mInsetOffsetY:I

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 2520
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2463
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2470
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2476
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2483
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2489
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2496
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2503
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2515
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2521
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 2524
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2463
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2470
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2476
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2483
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2489
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2496
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2503
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2515
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2526
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 2529
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_android_layout_gravity:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2532
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_anchor:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2534
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_anchorGravity:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2538
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_keyline:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2541
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_insetEdge:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2542
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2544
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2546
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v4, :cond_0

    .line 2547
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget v8, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2550
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2552
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v4, :cond_1

    .line 2554
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 2556
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 2559
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2463
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2470
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2476
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2483
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2489
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2496
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2503
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2515
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2560
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 2567
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2463
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2470
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2476
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2483
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2489
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2496
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2503
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2515
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2568
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 6

    .prologue
    .line 2563
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2463
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2470
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2476
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2483
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2489
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2496
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2503
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2515
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2564
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I
    .locals 2

    .prologue
    .line 2457
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    move v0, v1

    return v0
.end method

.method static synthetic access$102(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;I)I
    .locals 7

    .prologue
    .line 2457
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I
    .locals 2

    .prologue
    .line 2457
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    move v0, v1

    return v0
.end method

.method static synthetic access$202(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;I)I
    .locals 7

    .prologue
    .line 2457
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    move v0, v2

    return v0
.end method

.method private resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 12

    .prologue
    .line 2777
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2778
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 2779
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v6, v2

    if-ne v5, v6, :cond_1

    .line 2780
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2781
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2814
    :goto_0
    return-void

    .line 2784
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2788
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 2789
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 2790
    :goto_1
    move-object v5, v4

    move-object v6, v2

    if-eq v5, v6, :cond_5

    move-object v5, v4

    if-eqz v5, :cond_5

    .line 2792
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_3

    .line 2793
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2794
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2795
    goto :goto_0

    .line 2797
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2800
    :cond_3
    move-object v5, v4

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_4

    .line 2801
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    move-object v3, v5

    .line 2791
    :cond_4
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 2804
    :cond_5
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2814
    goto :goto_0

    .line 2806
    :cond_6
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2807
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2808
    goto :goto_0

    .line 2810
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    .line 2811
    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to anchor view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private shouldDodge(Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 2846
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v5

    .line 2847
    move-object v5, v3

    iget v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    move v4, v5

    .line 2848
    move v5, v4

    if-eqz v5, :cond_0

    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    move v7, v2

    .line 2849
    invoke-static {v6, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    and-int/2addr v5, v6

    move v6, v4

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z
    .locals 11

    .prologue
    .line 2822
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    if-eq v5, v6, :cond_0

    .line 2823
    const/4 v5, 0x0

    move v0, v5

    .line 2839
    :goto_0
    return v0

    .line 2826
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 2827
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 2828
    :goto_1
    move-object v5, v4

    move-object v6, v2

    if-eq v5, v6, :cond_4

    .line 2830
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_2

    .line 2831
    :cond_1
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    move-object v8, v10

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2832
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 2834
    :cond_2
    move-object v5, v4

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_3

    .line 2835
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    move-object v3, v5

    .line 2829
    :cond_3
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 2838
    :cond_4
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2839
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method acceptNestedScroll(Z)V
    .locals 4

    .prologue
    .line 2708
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2709
    return-void
.end method

.method checkAnchorChanged()Z
    .locals 3

    .prologue
    .line 2654
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 2736
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    .line 2737
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->shouldDodge(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    .line 2738
    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method didBlockInteraction()Z
    .locals 3

    .prologue
    .line 2665
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-nez v1, :cond_0

    .line 2666
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2668
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move v0, v1

    return v0
.end method

.method findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 9

    .prologue
    .line 2761
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2762
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2763
    const/4 v3, 0x0

    move-object v0, v3

    .line 2769
    :goto_0
    return-object v0

    .line 2766
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2767
    :cond_1
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V

    .line 2769
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v0, v3

    goto :goto_0
.end method

.method public getAnchorId()I
    .locals 2
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 2577
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    move v0, v1

    return v0
.end method

.method public getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2603
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v0, v1

    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .locals 2

    .prologue
    .line 2716
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    move v0, v1

    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 2646
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    move-object v0, v1

    return-object v0
.end method

.method invalidateAnchor()V
    .locals 7

    .prologue
    .line 2748
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2749
    return-void
.end method

.method isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 10

    .prologue
    .line 2683
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v3, :cond_0

    .line 2684
    const/4 v3, 0x1

    move v0, v3

    .line 2688
    :goto_0
    return v0

    .line 2687
    :cond_0
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-boolean v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v6, v1

    move-object v7, v2

    .line 2688
    invoke-virtual {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v5

    :goto_1
    or-int/2addr v4, v5

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput-boolean v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method isNestedScrollAccepted()Z
    .locals 2

    .prologue
    .line 2712
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    move v0, v1

    return v0
.end method

.method resetChangedAfterNestedScroll()V
    .locals 3

    .prologue
    .line 2724
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2725
    return-void
.end method

.method resetNestedScroll()V
    .locals 3

    .prologue
    .line 2704
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2705
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .locals 3

    .prologue
    .line 2700
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2701
    return-void
.end method

.method public setAnchorId(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 2591
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2592
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2593
    return-void
.end method

.method public setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/CoordinatorLayout$Behavior;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2616
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 2617
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v2, :cond_0

    .line 2619
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 2622
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2623
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2624
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2626
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 2628
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 2631
    :cond_1
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .locals 4

    .prologue
    .line 2720
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2721
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 2638
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2639
    return-void
.end method
