.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;,
        Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field private mAlphaEndSwipeDistance:F

.field private mAlphaStartSwipeDistance:F

.field private final mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mDragDismissThreshold:F

.field private mInterceptingEvents:Z

.field private mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

.field private mSensitivity:F

.field private mSensitivitySet:Z

.field private mSwipeDirection:I

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 85
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivity:F

    .line 88
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    .line 89
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    .line 90
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    .line 91
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    .line 212
    move-object v1, v0

    new-instance v2, Landroid/support/design/widget/SwipeDismissBehavior$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v2, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 363
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/SwipeDismissBehavior;)I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    move v0, v1

    return v0
.end method

.method static synthetic access$400(III)I
    .locals 6

    .prologue
    .line 36
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(III)I

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    move v0, v1

    return v0
.end method

.method static synthetic access$700(FFF)F
    .locals 6

    .prologue
    .line 36
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    move v0, v3

    return v0
.end method

.method private static clamp(FFF)F
    .locals 5

    .prologue
    .line 385
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v0, v3

    return v0
.end method

.method private static clamp(III)I
    .locals 5

    .prologue
    .line 389
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v2, :cond_0

    .line 357
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivitySet:Z

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivity:F

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 358
    invoke-static {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    .line 359
    :goto_0
    iput-object v3, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 361
    :cond_0
    return-void

    .line 358
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 359
    invoke-static {v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    goto :goto_0
.end method

.method static fraction(FFF)F
    .locals 6

    .prologue
    .line 406
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    move v4, v0

    sub-float/2addr v3, v4

    move v4, v1

    move v5, v0

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    move v0, v3

    return v0
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public getDragState()I
    .locals 2

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    move v4, v5

    .line 173
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    move v5, v4

    if-eqz v5, :cond_0

    .line 187
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/design/widget/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 188
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    move v0, v5

    .line 190
    :goto_1
    return v0

    .line 175
    :pswitch_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    .line 176
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    .line 175
    invoke-virtual {v6, v7, v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v6

    iput-boolean v6, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    .line 177
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    move v4, v5

    .line 178
    goto :goto_0

    .line 182
    :pswitch_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/design/widget/SwipeDismissBehavior;->mInterceptingEvents:Z

    goto :goto_0

    .line 190
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v4, :cond_0

    .line 196
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 197
    const/4 v4, 0x1

    move v0, v4

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public setDragDismissDistance(F)V
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    .line 137
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    .line 155
    return-void
.end method

.method public setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    .line 118
    return-void
.end method

.method public setSensitivity(F)V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivity:F

    .line 166
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivitySet:Z

    .line 167
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    .line 146
    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    .line 128
    return-void
.end method
