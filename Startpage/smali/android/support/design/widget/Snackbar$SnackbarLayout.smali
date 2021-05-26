.class public Landroid/support/design/widget/Snackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnackbarLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;,
        Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;
    }
.end annotation


# instance fields
.field private mActionView:Landroid/widget/Button;

.field private mMaxInlineActionWidth:I

.field private mMaxWidth:I

.field private mMessageView:Landroid/widget/TextView;

.field private mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 680
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 681
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 684
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 685
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->SnackbarLayout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 686
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->SnackbarLayout_android_maxWidth:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    .line 687
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    .line 689
    move-object v4, v3

    sget v5, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 690
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 693
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 695
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setClickable(Z)V

    .line 700
    move-object v4, v1

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_layout_snackbar_include:I

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 702
    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 704
    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 708
    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 709
    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/Snackbar$SnackbarLayout$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/Snackbar$SnackbarLayout$1;-><init>(Landroid/support/design/widget/Snackbar$SnackbarLayout;)V

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 720
    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .locals 8

    .prologue
    .line 845
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    move-object v3, v0

    move-object v4, v0

    .line 847
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    move v5, v1

    move-object v6, v0

    .line 848
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v6

    move v7, v2

    .line 846
    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 853
    :goto_0
    return-void

    .line 850
    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    move v5, v1

    move-object v6, v0

    .line 851
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    move v7, v2

    .line 850
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateViewsWithinLayout(III)Z
    .locals 8

    .prologue
    .line 831
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/4 v5, 0x0

    move v4, v5

    .line 832
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getOrientation()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 833
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOrientation(I)V

    .line 834
    const/4 v5, 0x1

    move v4, v5

    .line 836
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    move v6, v2

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 837
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    move v6, v3

    if-eq v5, v6, :cond_2

    .line 838
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    .line 839
    const/4 v5, 0x1

    move v4, v5

    .line 841
    :cond_2
    move v5, v4

    move v0, v5

    return v0
.end method


# virtual methods
.method animateChildrenIn(II)V
    .locals 6

    .prologue
    .line 772
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 773
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move v4, v1

    int-to-long v4, v4

    .line 774
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 776
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 777
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 778
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move v4, v1

    int-to-long v4, v4

    .line 779
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 781
    :cond_0
    return-void
.end method

.method animateChildrenOut(II)V
    .locals 6

    .prologue
    .line 784
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 785
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move v4, v1

    int-to-long v4, v4

    .line 786
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 788
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 789
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 790
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move v4, v1

    int-to-long v4, v4

    .line 791
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 793
    :cond_0
    return-void
.end method

.method getActionView()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 734
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    move-object v0, v1

    return-object v0
.end method

.method getMessageView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    move-object v0, v1

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 805
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 806
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v1, :cond_0

    .line 807
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 810
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 811
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 815
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 816
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v1, :cond_0

    .line 817
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 819
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 724
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 725
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroid/support/design/R$id;->snackbar_text:I

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 726
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroid/support/design/R$id;->snackbar_action:I

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    .line 727
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 797
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 798
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    if-eqz v6, :cond_0

    .line 799
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    move-object v7, v0

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-interface/range {v6 .. v11}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 801
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 739
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 741
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    if-lez v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    if-le v8, v9, :cond_0

    .line 742
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v1, v8

    .line 743
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 746
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v3, v8

    .line 748
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v4, v8

    .line 750
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 752
    const/4 v8, 0x0

    move v6, v8

    .line 753
    move v8, v5

    if-eqz v8, :cond_4

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-lez v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    .line 754
    invoke-virtual {v8}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-le v8, v9, :cond_4

    .line 755
    move-object v8, v0

    const/4 v9, 0x1

    move v10, v3

    move v11, v3

    move v12, v4

    sub-int/2addr v11, v12

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 757
    const/4 v8, 0x1

    move v6, v8

    .line 766
    :cond_1
    :goto_1
    move v8, v6

    if-eqz v8, :cond_2

    .line 767
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 769
    :cond_2
    return-void

    .line 750
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 760
    :cond_4
    move v8, v5

    if-eqz v8, :cond_5

    move v8, v3

    :goto_2
    move v7, v8

    .line 761
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v7

    move v11, v7

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 762
    const/4 v8, 0x1

    move v6, v8

    goto :goto_1

    .line 760
    :cond_5
    move v8, v4

    goto :goto_2
.end method

.method setOnAttachStateChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;)V
    .locals 4

    .prologue
    .line 826
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    .line 827
    return-void
.end method

.method setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V
    .locals 4

    .prologue
    .line 822
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    .line 823
    return-void
.end method
