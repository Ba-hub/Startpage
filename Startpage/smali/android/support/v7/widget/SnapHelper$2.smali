.class Landroid/support/v7/widget/SnapHelper$2;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SnapHelper;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/SnapHelper$2;->this$0:Landroid/support/v7/widget/SnapHelper;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    move-object v3, v1

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v0, v2

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 13

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SnapHelper$2;->this$0:Landroid/support/v7/widget/SnapHelper;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SnapHelper$2;->this$0:Landroid/support/v7/widget/SnapHelper;

    invoke-static {v9}, Landroid/support/v7/widget/SnapHelper;->access$100(Landroid/support/v7/widget/SnapHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v8

    move-object v4, v8

    .line 208
    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    move v5, v8

    .line 209
    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    move v6, v8

    .line 210
    move-object v8, v0

    move v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v8

    move v7, v8

    .line 211
    move v8, v7

    if-lez v8, :cond_0

    .line 212
    move-object v8, v3

    move v9, v5

    move v10, v6

    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 214
    :cond_0
    return-void
.end method
