.class Landroid/support/design/widget/BottomSheetBehavior$2;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .locals 4

    .prologue
    .line 632
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 5

    .prologue
    .line 703
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    move v0, v4

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 7

    .prologue
    .line 698
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v5}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v6}, Landroid/support/design/widget/BottomSheetBehavior;->access$900(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v6}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v6

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v4

    move v0, v4

    return v0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v6}, Landroid/support/design/widget/BottomSheetBehavior;->access$1200(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v6

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 708
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->access$900(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    .line 711
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->access$1200(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public onViewDragStateChanged(I)V
    .locals 4

    .prologue
    .line 659
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 660
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 662
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 654
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move v7, v3

    invoke-static {v6, v7}, Landroid/support/design/widget/BottomSheetBehavior;->access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 655
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 14

    .prologue
    .line 668
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 669
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v7}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v7

    move v4, v7

    .line 670
    const/4 v7, 0x3

    move v5, v7

    .line 687
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v7}, Landroid/support/design/widget/BottomSheetBehavior;->access$1300(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 688
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;I)V

    .line 689
    move-object v7, v1

    new-instance v8, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v11, v1

    move v12, v5

    invoke-direct {v9, v10, v11, v12}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 694
    :goto_1
    return-void

    .line 671
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v7}, Landroid/support/design/widget/BottomSheetBehavior;->access$900(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v8, v1

    move v9, v3

    invoke-static {v7, v8, v9}, Landroid/support/design/widget/BottomSheetBehavior;->access$1000(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 672
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v7}, Landroid/support/design/widget/BottomSheetBehavior;->access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v7

    move v4, v7

    .line 673
    const/4 v7, 0x5

    move v5, v7

    goto :goto_0

    .line 674
    :cond_1
    move v7, v3

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 675
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move v6, v7

    .line 676
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v8}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v9}, Landroid/support/design/widget/BottomSheetBehavior;->access$1200(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 677
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v7}, Landroid/support/design/widget/BottomSheetBehavior;->access$800(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v7

    move v4, v7

    .line 678
    const/4 v7, 0x3

    move v5, v7

    .line 683
    :goto_2
    goto :goto_0

    .line 680
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v7}, Landroid/support/design/widget/BottomSheetBehavior;->access$1200(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v7

    move v4, v7

    .line 681
    const/4 v7, 0x4

    move v5, v7

    goto :goto_2

    .line 684
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v7}, Landroid/support/design/widget/BottomSheetBehavior;->access$1200(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v7

    move v4, v7

    .line 685
    const/4 v7, 0x4

    move v5, v7

    goto/16 :goto_0

    .line 692
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move v8, v5

    invoke-static {v7, v8}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;I)V

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 636
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 637
    const/4 v4, 0x0

    move v0, v4

    .line 649
    :goto_0
    return v0

    .line 639
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$200(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 640
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 642
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$300(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v4

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 643
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 644
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 646
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 649
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$500(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v4}, Landroid/support/design/widget/BottomSheetBehavior;->access$500(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
