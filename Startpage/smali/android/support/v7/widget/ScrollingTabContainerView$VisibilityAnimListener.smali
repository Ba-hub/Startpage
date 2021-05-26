.class public Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 4

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 586
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 612
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 613
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v2, :cond_0

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 607
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 608
    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 598
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 599
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 600
    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 5

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 592
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 593
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
