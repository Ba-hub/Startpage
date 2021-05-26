.class Landroid/support/design/widget/ViewUtilsLollipop;
.super Ljava/lang/Object;
.source "ViewUtilsLollipop.java"


# static fields
.field private static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010448

    aput v3, v1, v2

    sput-object v0, Landroid/support/design/widget/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBoundsViewOutlineProvider(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 35
    return-void
.end method

.method static setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V
    .locals 13

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/design/R$integer;->app_bar_elevation_anim_duration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v2, v4

    .line 59
    new-instance v4, Landroid/animation/StateListAnimator;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Landroid/animation/StateListAnimator;-><init>()V

    move-object v3, v4

    .line 62
    move-object v4, v3

    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    const v8, 0x101000e

    aput v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    sget v8, Landroid/support/design/R$attr;->state_collapsible:I

    aput v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x2

    sget v8, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int v8, v8

    aput v8, v6, v7

    move-object v6, v0

    const-string v7, "elevation"

    const/4 v8, 0x1

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 64
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move v7, v2

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 62
    invoke-virtual {v4, v5, v6}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 67
    move-object v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    const v8, 0x101000e

    aput v8, v6, v7

    move-object v6, v0

    const-string v7, "elevation"

    const/4 v8, 0x1

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    aput v11, v9, v10

    .line 68
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move v7, v2

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 67
    invoke-virtual {v4, v5, v6}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 71
    move-object v4, v3

    const/4 v5, 0x0

    new-array v5, v5, [I

    move-object v6, v0

    const-string v7, "elevation"

    const/4 v8, 0x1

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 72
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 71
    invoke-virtual {v4, v5, v6}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 74
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 75
    return-void
.end method

.method static setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 13

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v4, v8

    .line 40
    move-object v8, v4

    move-object v9, v1

    sget-object v10, Landroid/support/design/widget/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    move v11, v2

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v5, v8

    .line 43
    move-object v8, v5

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 44
    move-object v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 45
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 44
    invoke-static {v8, v9}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v8

    move-object v6, v8

    .line 46
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move-object v8, v7

    throw v8
.end method
