.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DEFAULT:Z = true


# instance fields
.field private mAutoHideEnabled:Z

.field private mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 537
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    .line 538
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 542
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 544
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    .line 547
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 548
    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 596
    move-object v0, p0

    move-object v2, v0

    .line 597
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v1, v2

    .line 598
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    instance-of v2, v2, Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 10

    .prologue
    .line 711
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-static {v7}, Landroid/support/design/widget/FloatingActionButton;->access$200(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v7

    move-object v3, v7

    .line 713
    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    if-lez v7, :cond_3

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    if-lez v7, :cond_3

    .line 714
    move-object v7, v2

    .line 715
    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v7

    .line 717
    const/4 v7, 0x0

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    .line 719
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_4

    .line 721
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move v6, v7

    .line 726
    :cond_0
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_5

    .line 728
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move v5, v7

    .line 734
    :cond_1
    :goto_1
    move v7, v5

    if-eqz v7, :cond_2

    .line 735
    move-object v7, v2

    move v8, v5

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 737
    :cond_2
    move v7, v6

    if-eqz v7, :cond_3

    .line 738
    move-object v7, v2

    move v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 741
    :cond_3
    return-void

    .line 722
    :cond_4
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v7, v8, :cond_0

    .line 724
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    move v6, v7

    goto :goto_0

    .line 729
    :cond_5
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v7, v8, :cond_1

    .line 731
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    move v5, v7

    goto :goto_1
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 6

    .prologue
    .line 607
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    .line 608
    invoke-virtual {v4}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 609
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    if-nez v4, :cond_0

    .line 610
    const/4 v4, 0x0

    move v0, v4

    .line 625
    :goto_0
    return v0

    .line 613
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 616
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 620
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/design/widget/FloatingActionButton;->getUserSetVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 625
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 9

    .prologue
    .line 630
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 631
    const/4 v5, 0x0

    move v0, v5

    .line 649
    :goto_0
    return v0

    .line 634
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 635
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 639
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    move-object v4, v5

    .line 640
    move-object v5, v1

    move-object v6, v2

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 642
    move-object v5, v4

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 644
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton;->access$000(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 649
    :goto_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 647
    :cond_2
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton;->access$100(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_1
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 7

    .prologue
    .line 654
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/FloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 655
    const/4 v4, 0x0

    move v0, v4

    .line 664
    :goto_0
    return v0

    .line 657
    :cond_0
    move-object v4, v2

    .line 658
    invoke-virtual {v4}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 659
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    move-object v6, v3

    iget v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 660
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/support/design/widget/FloatingActionButton;->access$000(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 664
    :goto_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 662
    :cond_1
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/support/design/widget/FloatingActionButton;->access$100(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_1
.end method


# virtual methods
.method public getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 11
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/design/widget/FloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    invoke-static {v5}, Landroid/support/design/widget/FloatingActionButton;->access$200(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v5

    move-object v4, v5

    .line 698
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v6

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    move-object v7, v2

    .line 699
    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    move-object v8, v2

    .line 700
    invoke-virtual {v8}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move-object v9, v2

    .line 701
    invoke-virtual {v9}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 698
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 702
    const/4 v5, 0x1

    move v0, v5

    return v0
.end method

.method public bridge synthetic getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 8
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/FloatingActionButton;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public isAutoHideEnabled()Z
    .locals 2

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    move v0, v1

    return v0
.end method

.method public onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v2, :cond_0

    .line 578
    move-object v2, v1

    const/16 v3, 0x50

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 580
    :cond_0
    return-void
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    instance-of v4, v4, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_1

    .line 588
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    check-cast v6, Landroid/support/design/widget/AppBarLayout;

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    .line 592
    :cond_0
    :goto_0
    const/4 v4, 0x0

    move v0, v4

    return v0

    .line 589
    :cond_1
    move-object v4, v3

    invoke-static {v4}, Landroid/support/design/widget/FloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/FloatingActionButton;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 12

    .prologue
    .line 671
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 672
    const/4 v8, 0x0

    move v5, v8

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    :goto_0
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 673
    move-object v8, v4

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v7, v8

    .line 674
    move-object v8, v7

    instance-of v8, v8, Landroid/support/design/widget/AppBarLayout;

    if-eqz v8, :cond_1

    .line 675
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    check-cast v10, Landroid/support/design/widget/AppBarLayout;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 686
    :cond_0
    :goto_1
    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 688
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButton$Behavior;->offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V

    .line 689
    const/4 v8, 0x1

    move v0, v8

    return v0

    .line 679
    :cond_1
    move-object v8, v7

    invoke-static {v8}, Landroid/support/design/widget/FloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 680
    move-object v8, v0

    move-object v9, v7

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 681
    goto :goto_1

    .line 672
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/FloatingActionButton;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public setAutoHideEnabled(Z)V
    .locals 4

    .prologue
    .line 559
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    .line 560
    return-void
.end method

.method setInternalAutoHideListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 603
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    .line 604
    return-void
.end method
