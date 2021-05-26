.class Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mTargetState:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 735
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 736
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 737
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->mTargetState:I

    .line 738
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 742
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$1300(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$1300(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->mTargetState:I

    invoke-static {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->access$700(Landroid/support/design/widget/BottomSheetBehavior;I)V

    goto :goto_0
.end method
