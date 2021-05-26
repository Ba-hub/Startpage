.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mSkipNestedPreScroll:Z

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 789
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    .line 782
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 789
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 792
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 782
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 793
    return-void
.end method

.method static synthetic access$1100(Landroid/support/design/widget/AppBarLayout$Behavior;)I
    .locals 2

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    move v0, v1

    return v0
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .locals 13

    .prologue
    .line 915
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v8

    move v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v5, v8

    .line 918
    move v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v4, v8

    .line 919
    move v8, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 920
    const/4 v8, 0x3

    const/high16 v9, 0x447a0000    # 1000.0f

    move v10, v5

    int-to-float v10, v10

    move v11, v4

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/2addr v8, v9

    move v6, v8

    .line 926
    :goto_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    .line 927
    return-void

    .line 922
    :cond_0
    move v8, v5

    int-to-float v8, v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 923
    move v8, v7

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    const/high16 v9, 0x43160000    # 150.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    goto :goto_0
.end method

.method private animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .locals 13

    .prologue
    .line 931
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v6

    move v5, v6

    .line 932
    move v6, v5

    move v7, v3

    if-ne v6, v7, :cond_1

    .line 933
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 934
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v6, :cond_2

    .line 940
    move-object v6, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 941
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v7, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 942
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v7, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v6, v7}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 953
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move v7, v4

    const/16 v8, 0x258

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 954
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move v7, v5

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 955
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 956
    goto :goto_0

    .line 950
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_1
.end method

.method private static checkFlag(II)Z
    .locals 4

    .prologue
    .line 1011
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    and-int/2addr v2, v3

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 8

    .prologue
    .line 1267
    move-object v0, p0

    move v1, p1

    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v2, v6

    .line 1268
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 1269
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1270
    move v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v6, v7, :cond_0

    move v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 1271
    move-object v6, v5

    move-object v0, v6

    .line 1274
    :goto_1
    return-object v0

    .line 1268
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1274
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 8

    .prologue
    .line 959
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v6, 0x0

    move v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 960
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 961
    move-object v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move v7, v2

    neg-int v7, v7

    if-gt v6, v7, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    move v7, v2

    neg-int v7, v7

    if-lt v6, v7, :cond_0

    .line 962
    move v6, v3

    move v0, v6

    .line 965
    :goto_1
    return v0

    .line 959
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 965
    :cond_1
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1
.end method

.method private interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 18

    .prologue
    .line 1169
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move v4, v14

    .line 1171
    const/4 v14, 0x0

    move v5, v14

    move-object v14, v2

    invoke-virtual {v14}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v14

    move v6, v14

    :goto_0
    move v14, v5

    move v15, v6

    if-ge v14, v15, :cond_2

    .line 1172
    move-object v14, v2

    move v15, v5

    invoke-virtual {v14, v15}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object v7, v14

    .line 1173
    move-object v14, v7

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v8, v14

    .line 1174
    move-object v14, v8

    invoke-virtual {v14}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v14

    move-object v9, v14

    .line 1176
    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v14, v15, :cond_3

    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    if-gt v14, v15, :cond_3

    .line 1177
    move-object v14, v9

    if-eqz v14, :cond_2

    .line 1178
    const/4 v14, 0x0

    move v10, v14

    .line 1179
    move-object v14, v8

    invoke-virtual {v14}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v14

    move v11, v14

    .line 1180
    move v14, v11

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_0

    .line 1182
    move v14, v10

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v14, v15

    move v10, v14

    .line 1185
    move v14, v11

    const/4 v15, 0x2

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_0

    .line 1188
    move v14, v10

    move-object v15, v7

    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v15

    sub-int/2addr v14, v15

    move v10, v14

    .line 1192
    :cond_0
    move-object v14, v7

    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1193
    move v14, v10

    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v15

    sub-int/2addr v14, v15

    move v10, v14

    .line 1196
    :cond_1
    move v14, v10

    if-lez v14, :cond_2

    .line 1197
    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    move v12, v14

    .line 1198
    move v14, v10

    int-to-float v14, v14

    move-object v15, v9

    move/from16 v16, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    .line 1199
    invoke-interface/range {v15 .. v16}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    mul-float/2addr v14, v15

    .line 1198
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v13, v14

    .line 1202
    move v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->signum(I)I

    move-result v14

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    move/from16 v16, v13

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    move v1, v14

    .line 1212
    :goto_1
    return v1

    :cond_2
    move v14, v3

    move v1, v14

    goto :goto_1

    .line 1171
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z
    .locals 11

    .prologue
    .line 1252
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v9

    move-object v3, v9

    .line 1253
    const/4 v9, 0x0

    move v4, v9

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v5, v9

    :goto_0
    move v9, v4

    move v10, v5

    if-ge v9, v10, :cond_2

    .line 1254
    move-object v9, v3

    move v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v6, v9

    .line 1255
    move-object v9, v6

    .line 1256
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v9

    .line 1257
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    move-object v8, v9

    .line 1259
    move-object v9, v8

    instance-of v9, v9, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v9, :cond_1

    .line 1260
    move-object v9, v8

    check-cast v9, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_1
    move v0, v9

    .line 1263
    :goto_2
    return v0

    .line 1260
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 1253
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1263
    :cond_2
    const/4 v9, 0x0

    move v0, v9

    goto :goto_2
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 17

    .prologue
    .line 969
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v11

    move v3, v11

    .line 970
    move-object v11, v0

    move-object v12, v2

    move v13, v3

    invoke-direct {v11, v12, v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v11

    move v4, v11

    .line 971
    move v11, v4

    if-ltz v11, :cond_2

    .line 972
    move-object v11, v2

    move v12, v4

    invoke-virtual {v11, v12}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    .line 973
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v6, v11

    .line 974
    move-object v11, v6

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v11

    move v7, v11

    .line 976
    move v11, v7

    const/16 v12, 0x11

    and-int/lit8 v11, v11, 0x11

    const/16 v12, 0x11

    if-ne v11, v12, :cond_2

    .line 978
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    neg-int v11, v11

    move v8, v11

    .line 979
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    neg-int v11, v11

    move v9, v11

    .line 981
    move v11, v4

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_0

    .line 983
    move v11, v9

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 986
    :cond_0
    move v11, v7

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 988
    move v11, v9

    move-object v12, v5

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 1001
    :cond_1
    :goto_0
    move v11, v3

    move v12, v9

    move v13, v8

    add-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_5

    move v11, v9

    :goto_1
    move v10, v11

    .line 1004
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v10

    move-object v15, v2

    .line 1005
    invoke-virtual {v15}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v15

    neg-int v15, v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v14

    const/4 v15, 0x0

    .line 1004
    invoke-direct {v11, v12, v13, v14, v15}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 1008
    :cond_2
    return-void

    .line 989
    :cond_3
    move v11, v7

    const/4 v12, 0x5

    invoke-static {v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 993
    move v11, v9

    move-object v12, v5

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 994
    move v11, v3

    move v12, v10

    if-ge v11, v12, :cond_4

    .line 995
    move v11, v10

    move v8, v11

    goto :goto_0

    .line 997
    :cond_4
    move v11, v10

    move v9, v11

    goto :goto_0

    .line 1001
    :cond_5
    move v11, v8

    goto :goto_1
.end method

.method private updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .locals 13

    .prologue
    .line 1217
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v10, v2

    move v11, v3

    invoke-static {v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v10

    move-object v5, v10

    .line 1218
    move-object v10, v5

    if-eqz v10, :cond_1

    .line 1219
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v6, v10

    .line 1220
    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v10

    move v7, v10

    .line 1221
    const/4 v10, 0x0

    move v8, v10

    .line 1223
    move v10, v7

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    .line 1224
    move-object v10, v5

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v10

    move v9, v10

    .line 1226
    move v10, v4

    if-lez v10, :cond_3

    move v10, v7

    const/16 v11, 0xc

    and-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_3

    .line 1230
    move v10, v3

    neg-int v10, v10

    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    move v12, v9

    sub-int/2addr v11, v12

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v12

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_0
    move v8, v10

    .line 1238
    :cond_0
    :goto_1
    move-object v10, v2

    move v11, v8

    invoke-static {v10, v11}, Landroid/support/design/widget/AppBarLayout;->access$1000(Landroid/support/design/widget/AppBarLayout;Z)Z

    move-result v10

    move v9, v10

    .line 1240
    move v10, v9

    if-eqz v10, :cond_1

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_1

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    .line 1241
    invoke-direct {v10, v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1244
    move-object v10, v2

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1247
    :cond_1
    return-void

    .line 1230
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 1231
    :cond_3
    move v10, v7

    const/4 v11, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_0

    .line 1234
    move v10, v3

    neg-int v10, v10

    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    move v12, v9

    sub-int/2addr v11, v12

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v12

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_2
    move v8, v10

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 5

    .prologue
    .line 1085
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v3, :cond_0

    .line 1087
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v3

    move v0, v3

    .line 1098
    :goto_0
    return v0

    .line 1091
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 1093
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 1094
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    const/4 v4, -0x1

    .line 1095
    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1098
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->canDragView(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I
    .locals 3

    .prologue
    .line 1110
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/design/widget/AppBarLayout;->access$500(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    neg-int v2, v2

    move v0, v2

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I
    .locals 3

    .prologue
    .line 1115
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    move v0, v2

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 3

    .prologue
    .line 1279
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 6

    .prologue
    .line 1105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 1106
    return-void
.end method

.method bridge synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 13

    .prologue
    .line 1038
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-super {v8, v9, v10, v11}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v8

    move v4, v8

    .line 1040
    move-object v8, v2

    invoke-static {v8}, Landroid/support/design/widget/AppBarLayout;->access$600(Landroid/support/design/widget/AppBarLayout;)I

    move-result v8

    move v5, v8

    .line 1041
    move v8, v5

    if-eqz v8, :cond_5

    .line 1042
    move v8, v5

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v6, v8

    .line 1043
    move v8, v5

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    .line 1044
    move-object v8, v2

    invoke-static {v8}, Landroid/support/design/widget/AppBarLayout;->access$400(Landroid/support/design/widget/AppBarLayout;)I

    move-result v8

    neg-int v8, v8

    move v7, v8

    .line 1045
    move v8, v6

    if-eqz v8, :cond_2

    .line 1046
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 1069
    :cond_0
    :goto_1
    move-object v8, v2

    invoke-static {v8}, Landroid/support/design/widget/AppBarLayout;->access$700(Landroid/support/design/widget/AppBarLayout;)V

    .line 1070
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1074
    move-object v8, v0

    move-object v9, v0

    .line 1075
    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v10

    neg-int v10, v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v9

    .line 1074
    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v8

    .line 1078
    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v9

    invoke-static {v8, v9}, Landroid/support/design/widget/AppBarLayout;->access$800(Landroid/support/design/widget/AppBarLayout;I)V

    .line 1080
    move v8, v4

    move v0, v8

    return v0

    .line 1042
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1048
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v8

    goto :goto_1

    .line 1050
    :cond_3
    move v8, v5

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 1051
    move v8, v6

    if-eqz v8, :cond_4

    .line 1052
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_1

    .line 1054
    :cond_4
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v8

    goto :goto_1

    .line 1057
    :cond_5
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz v8, :cond_0

    .line 1058
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 1059
    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    neg-int v8, v8

    move v7, v8

    .line 1060
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v8, :cond_6

    .line 1061
    move v8, v7

    move-object v9, v6

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 1065
    :goto_2
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v8

    goto :goto_1

    .line 1063
    :cond_6
    move v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    goto :goto_2
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/AppBarLayout;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .locals 15

    .prologue
    .line 1018
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v2

    .line 1019
    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v8

    .line 1020
    move-object v8, v7

    iget v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 1025
    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1026
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v13, v6

    .line 1025
    invoke-virtual/range {v8 .. v13}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1027
    const/4 v8, 0x1

    move v0, v8

    .line 1031
    :goto_0
    return v0

    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-super/range {v8 .. v14}, Landroid/support/design/widget/HeaderBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v8

    move v0, v8

    goto :goto_0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 14

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    check-cast v9, Landroid/support/design/widget/AppBarLayout;

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result v7

    move v0, v7

    return v0
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 15

    .prologue
    .line 869
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v9, 0x0

    move v7, v9

    .line 871
    move v9, v6

    if-nez v9, :cond_1

    .line 873
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v12

    neg-int v12, v12

    const/4 v13, 0x0

    move v14, v5

    neg-float v14, v14

    invoke-virtual/range {v9 .. v14}, Landroid/support/design/widget/AppBarLayout$Behavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v9

    move v7, v9

    .line 900
    :cond_0
    :goto_0
    move-object v9, v0

    move v10, v7

    iput-boolean v10, v9, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 901
    move v9, v7

    move v0, v9

    return v0

    .line 878
    :cond_1
    move v9, v5

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 880
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v9

    neg-int v9, v9

    move-object v10, v2

    .line 881
    invoke-static {v10}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v10

    add-int/2addr v9, v10

    move v8, v9

    .line 882
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v9

    move v10, v8

    if-ge v9, v10, :cond_2

    .line 885
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v8

    move v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 886
    const/4 v9, 0x1

    move v7, v9

    .line 888
    :cond_2
    goto :goto_0

    .line 890
    :cond_3
    move-object v9, v2

    invoke-static {v9}, Landroid/support/design/widget/AppBarLayout;->access$400(Landroid/support/design/widget/AppBarLayout;)I

    move-result v9

    neg-int v9, v9

    move v8, v9

    .line 891
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v9

    move v10, v8

    if-le v9, v10, :cond_0

    .line 894
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v8

    move v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 895
    const/4 v9, 0x1

    move v7, v9

    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 14

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    check-cast v9, Landroid/support/design/widget/AppBarLayout;

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result v7

    move v0, v7

    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 17

    .prologue
    .line 818
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move v9, v5

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez v9, :cond_0

    .line 820
    move v9, v5

    if-gez v9, :cond_1

    .line 822
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v9

    neg-int v9, v9

    move v7, v9

    .line 823
    move v9, v7

    move-object v10, v2

    invoke-static {v10}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v10

    add-int/2addr v9, v10

    move v8, v9

    .line 829
    :goto_0
    move-object v9, v6

    const/4 v10, 0x1

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v5

    move v15, v7

    move/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v11

    aput v11, v9, v10

    .line 831
    :cond_0
    return-void

    .line 826
    :cond_1
    move-object v9, v2

    invoke-static {v9}, Landroid/support/design/widget/AppBarLayout;->access$400(Landroid/support/design/widget/AppBarLayout;)I

    move-result v9

    neg-int v9, v9

    move v7, v9

    .line 827
    const/4 v9, 0x0

    move v8, v9

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 14

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    check-cast v9, Landroid/support/design/widget/AppBarLayout;

    move-object v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 837
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v7

    if-gez v8, :cond_0

    .line 840
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    move-object v12, v2

    .line 841
    invoke-static {v12}, Landroid/support/design/widget/AppBarLayout;->access$500(Landroid/support/design/widget/AppBarLayout;)I

    move-result v12

    neg-int v12, v12

    const/4 v13, 0x0

    .line 840
    invoke-virtual/range {v8 .. v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v8

    .line 843
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 16

    .prologue
    .line 755
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    check-cast v10, Landroid/support/design/widget/AppBarLayout;

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 9

    .prologue
    .line 1309
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v3

    instance-of v5, v5, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v5, :cond_0

    .line 1310
    move-object v5, v3

    check-cast v5, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    move-object v4, v5

    .line 1311
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v8

    invoke-super {v5, v6, v7, v8}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1312
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v6, v5, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1313
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v6, v5, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1314
    move-object v5, v0

    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v6, v5, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1319
    :goto_0
    return-void

    .line 1316
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1317
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 8

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/AppBarLayout;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 1284
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-super {v10, v11, v12}, Landroid/support/design/widget/HeaderBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v10

    move-object v3, v10

    .line 1285
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v10

    move v4, v10

    .line 1288
    const/4 v10, 0x0

    move v5, v10

    move-object v10, v2

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v10

    move v6, v10

    :goto_0
    move v10, v5

    move v11, v6

    if-ge v10, v11, :cond_2

    .line 1289
    move-object v10, v2

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1290
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    move v11, v4

    add-int/2addr v10, v11

    move v8, v10

    .line 1292
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v11, v4

    add-int/2addr v10, v11

    if-gtz v10, :cond_1

    move v10, v8

    if-ltz v10, :cond_1

    .line 1293
    new-instance v10, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v3

    invoke-direct {v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v9, v10

    .line 1294
    move-object v10, v9

    move v11, v5

    iput v11, v10, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1295
    move-object v10, v9

    move v11, v8

    move-object v12, v7

    .line 1296
    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v10, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1297
    move-object v10, v9

    move v11, v8

    int-to-float v11, v11

    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, v10, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1298
    move-object v10, v9

    move-object v0, v10

    .line 1303
    :goto_2
    return-object v0

    .line 1296
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 1288
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1303
    :cond_2
    move-object v10, v3

    move-object v0, v10

    goto :goto_2
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    .prologue
    .line 800
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, v5

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    move-object v7, v2

    .line 801
    invoke-static {v7}, Landroid/support/design/widget/AppBarLayout;->access$200(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v1

    .line 802
    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v6, v7

    .line 804
    move v7, v6

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v7, :cond_0

    .line 806
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v7}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 810
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 812
    move v7, v6

    move v0, v7

    return v0

    .line 802
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 12

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    check-cast v8, Landroid/support/design/widget/AppBarLayout;

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 853
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    if-nez v4, :cond_0

    .line 855
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 859
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 860
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 862
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 863
    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/AppBarLayout;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public setDragCallback(Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 910
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    .line 911
    return-void
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 16

    .prologue
    .line 1121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v10

    move v6, v10

    .line 1122
    const/4 v10, 0x0

    move v7, v10

    .line 1124
    move v10, v4

    if-eqz v10, :cond_4

    move v10, v6

    move v11, v4

    if-lt v10, v11, :cond_4

    move v10, v6

    move v11, v5

    if-gt v10, v11, :cond_4

    .line 1127
    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static {v10, v11, v12}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v10

    move v3, v10

    .line 1128
    move v10, v6

    move v11, v3

    if-eq v10, v11, :cond_1

    .line 1129
    move-object v10, v2

    invoke-static {v10}, Landroid/support/design/widget/AppBarLayout;->access$900(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v0

    move-object v11, v2

    move v12, v3

    .line 1130
    invoke-direct {v10, v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v10

    :goto_0
    move v8, v10

    .line 1133
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v10

    move v9, v10

    .line 1136
    move v10, v6

    move v11, v3

    sub-int/2addr v10, v11

    move v7, v10

    .line 1138
    move-object v10, v0

    move v11, v3

    move v12, v8

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    .line 1140
    move v10, v9

    if-nez v10, :cond_0

    move-object v10, v2

    invoke-static {v10}, Landroid/support/design/widget/AppBarLayout;->access$900(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1145
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1149
    :cond_0
    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v11

    invoke-static {v10, v11}, Landroid/support/design/widget/AppBarLayout;->access$800(Landroid/support/design/widget/AppBarLayout;I)V

    .line 1152
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v3

    move v15, v6

    if-ge v14, v15, :cond_3

    const/4 v14, -0x1

    :goto_1
    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    .line 1160
    :cond_1
    :goto_2
    move v10, v7

    move v0, v10

    return v0

    .line 1130
    :cond_2
    move v10, v3

    goto :goto_0

    .line 1152
    :cond_3
    const/4 v14, 0x1

    goto :goto_1

    .line 1157
    :cond_4
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    goto :goto_2
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 12

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    check-cast v8, Landroid/support/design/widget/AppBarLayout;

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v6

    move v0, v6

    return v0
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 755
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 755
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
