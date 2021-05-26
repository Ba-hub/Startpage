.class public Landroid/support/v7/widget/helper/ItemTouchHelper;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field private static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private mOverdrawChild:Landroid/view/View;

.field private mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 7

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 169
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 174
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 179
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 218
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 228
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 244
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 254
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/helper/ItemTouchHelper$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 281
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 288
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 295
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 302
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/helper/ItemTouchHelper$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$2;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 436
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 437
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/View;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/helper/ItemTouchHelper;)I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    move v0, v1

    return v0
.end method

.method static synthetic access$2302(Landroid/support/v7/widget/helper/ItemTouchHelper;I)I
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    move v0, v2

    return v0
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 6

    .prologue
    .line 1261
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1284
    :goto_0
    return-void

    .line 1264
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v1, :cond_1

    .line 1265
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$5;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1283
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1284
    goto :goto_0
.end method

.method private checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 12

    .prologue
    .line 1204
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v8, v2

    const/16 v9, 0xc

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_3

    .line 1205
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const/16 v8, 0x8

    :goto_0
    move v3, v8

    .line 1206
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 1207
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1208
    invoke-virtual {v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    .line 1207
    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1209
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 1210
    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v8

    move v4, v8

    .line 1211
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 1212
    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v8

    move v5, v8

    .line 1213
    move v8, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    const/16 v8, 0x8

    :goto_1
    move v6, v8

    .line 1214
    move v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v7, v8

    .line 1215
    move v8, v6

    move v9, v2

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    move v8, v3

    move v9, v6

    if-ne v8, v9, :cond_2

    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1216
    invoke-virtual {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    move v8, v7

    move v9, v5

    .line 1217
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1218
    move v8, v6

    move v0, v8

    .line 1229
    :goto_2
    return v0

    .line 1205
    :cond_0
    const/4 v8, 0x4

    goto :goto_0

    .line 1213
    :cond_1
    const/4 v8, 0x4

    goto :goto_1

    .line 1222
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v1

    .line 1223
    invoke-virtual {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v9

    mul-float/2addr v8, v9

    move v4, v8

    .line 1225
    move v8, v2

    move v9, v3

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1226
    move v8, v3

    move v0, v8

    goto :goto_2

    .line 1229
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2
.end method

.method private checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 21

    .prologue
    .line 949
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v15, :cond_0

    move v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object v15, v2

    iget v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 950
    invoke-virtual {v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    .line 951
    :cond_0
    const/4 v15, 0x0

    move v2, v15

    .line 1003
    :goto_0
    return v2

    .line 953
    :cond_1
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 954
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 956
    :cond_2
    move-object v15, v2

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    move-object v6, v15

    .line 957
    move-object v15, v6

    if-nez v15, :cond_3

    .line 958
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 960
    :cond_3
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v15

    move v7, v15

    .line 962
    move v15, v7

    const v16, 0xff00

    and-int v15, v15, v16

    const/16 v16, 0x8

    shr-int/lit8 v15, v15, 0x8

    move v8, v15

    .line 965
    move v15, v8

    if-nez v15, :cond_4

    .line 966
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 971
    :cond_4
    move-object v15, v4

    move/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    move v9, v15

    .line 972
    move-object v15, v4

    move/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    move v10, v15

    .line 975
    move v15, v9

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v11, v15

    .line 976
    move v15, v10

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move v12, v15

    .line 979
    move v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move v13, v15

    .line 980
    move v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move v14, v15

    .line 982
    move v15, v13

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    move v15, v14

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_5

    .line 983
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 985
    :cond_5
    move v15, v13

    move/from16 v16, v14

    cmpl-float v15, v15, v16

    if-lez v15, :cond_7

    .line 986
    move v15, v11

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6

    move v15, v8

    const/16 v16, 0x4

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_6

    .line 987
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 989
    :cond_6
    move v15, v11

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9

    move v15, v8

    const/16 v16, 0x8

    and-int/lit8 v15, v15, 0x8

    if-nez v15, :cond_9

    .line 990
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 993
    :cond_7
    move v15, v12

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_8

    move v15, v8

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_8

    .line 994
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 996
    :cond_8
    move v15, v12

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9

    move v15, v8

    const/16 v16, 0x2

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_9

    .line 997
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 1000
    :cond_9
    move-object v15, v2

    move-object/from16 v16, v2

    const/16 v17, 0x0

    move-object/from16 v19, v16

    move/from16 v20, v17

    move/from16 v16, v20

    move-object/from16 v17, v19

    move/from16 v18, v20

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1001
    move-object v15, v2

    move-object/from16 v16, v4

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 1002
    move-object v15, v2

    move-object/from16 v16, v6

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1003
    const/4 v15, 0x1

    move v2, v15

    goto/16 :goto_0
.end method

.method private checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 12

    .prologue
    .line 1233
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v8, v2

    const/4 v9, 0x3

    and-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_3

    .line 1234
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const/4 v8, 0x2

    :goto_0
    move v3, v8

    .line 1235
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 1236
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1237
    invoke-virtual {v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    .line 1236
    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1238
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 1239
    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v8

    move v4, v8

    .line 1240
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 1241
    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v8

    move v5, v8

    .line 1242
    move v8, v5

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    const/4 v8, 0x2

    :goto_1
    move v6, v8

    .line 1243
    move v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v7, v8

    .line 1244
    move v8, v6

    move v9, v2

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    move v8, v6

    move v9, v3

    if-ne v8, v9, :cond_2

    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1245
    invoke-virtual {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    move v8, v7

    move v9, v4

    .line 1246
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1247
    move v8, v6

    move v0, v8

    .line 1257
    :goto_2
    return v0

    .line 1234
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 1242
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .line 1251
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v1

    .line 1252
    invoke-virtual {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v9

    mul-float/2addr v8, v9

    move v4, v8

    .line 1253
    move v8, v2

    move v9, v3

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1254
    move v8, v3

    move v0, v8

    goto :goto_2

    .line 1257
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2
.end method

.method private destroyCallbacks()V
    .locals 7

    .prologue
    .line 483
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 484
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 485
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 487
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    .line 488
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_0

    .line 489
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v3, v4

    .line 490
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 488
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 492
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 493
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 494
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 495
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 496
    return-void
.end method

.method private endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    .locals 10

    .prologue
    .line 884
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 885
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_0
    move v6, v4

    if-ltz v6, :cond_2

    .line 886
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v5, v6

    .line 887
    move-object v6, v5

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 888
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget-boolean v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    move v8, v2

    or-int/2addr v7, v8

    iput-boolean v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 889
    move-object v6, v5

    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 890
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 892
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 893
    move-object v6, v5

    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$2000(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)I

    move-result v6

    move v0, v6

    .line 896
    :goto_1
    return v0

    .line 885
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 896
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 7

    .prologue
    .line 1123
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1124
    const/4 v5, 0x0

    move-object v0, v5

    .line 1133
    :goto_0
    return-object v0

    .line 1126
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 1127
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_1
    move v5, v3

    if-ltz v5, :cond_2

    .line 1128
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v4, v5

    .line 1129
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v2

    if-ne v5, v6, :cond_1

    .line 1130
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 1127
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1133
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method private findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 13

    .prologue
    .line 1008
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move v2, v7

    .line 1009
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move v3, v7

    .line 1010
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_0

    .line 1011
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v7

    .line 1012
    move-object v7, v4

    move v8, v2

    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1013
    move-object v7, v4

    move-object v0, v7

    .line 1023
    :goto_0
    return-object v0

    .line 1016
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_1
    move v7, v4

    if-ltz v7, :cond_2

    .line 1017
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v5, v7

    .line 1018
    move-object v7, v5

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v7

    .line 1019
    move-object v7, v6

    move v8, v2

    move v9, v3

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1020
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 1016
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1023
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method private findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 773
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 774
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 779
    :goto_0
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v22

    move/from16 v4, v22

    .line 780
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v23, v4

    sub-int v22, v22, v23

    move/from16 v5, v22

    .line 781
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v23, v4

    sub-int v22, v22, v23

    move/from16 v6, v22

    .line 782
    move/from16 v22, v5

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    const/16 v23, 0x2

    move/from16 v24, v4

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v7, v22

    .line 783
    move/from16 v22, v6

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v23

    add-int v22, v22, v23

    const/16 v23, 0x2

    move/from16 v24, v4

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v8, v22

    .line 784
    move/from16 v22, v5

    move/from16 v23, v7

    add-int v22, v22, v23

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v9, v22

    .line 785
    move/from16 v22, v6

    move/from16 v23, v8

    add-int v22, v22, v23

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v10, v22

    .line 786
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v22

    move-object/from16 v11, v22

    .line 787
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v22

    move/from16 v12, v22

    .line 788
    const/16 v22, 0x0

    move/from16 v13, v22

    :goto_1
    move/from16 v22, v13

    move/from16 v23, v12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 789
    move-object/from16 v22, v11

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v14, v22

    .line 790
    move-object/from16 v22, v14

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 788
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 776
    :cond_1
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 777
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 793
    :cond_2
    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v23, v6

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    move-object/from16 v22, v14

    .line 794
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 795
    goto :goto_2

    .line 797
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v22

    move-object/from16 v15, v22

    .line 798
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v25, v15

    invoke-virtual/range {v22 .. v25}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 800
    move/from16 v22, v9

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v16, v22

    .line 801
    move/from16 v22, v10

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v17, v22

    .line 802
    move/from16 v22, v16

    move/from16 v23, v16

    mul-int v22, v22, v23

    move/from16 v23, v17

    move/from16 v24, v17

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v18, v22

    .line 804
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 805
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v20, v22

    .line 806
    const/16 v22, 0x0

    move/from16 v21, v22

    :goto_3
    move/from16 v22, v21

    move/from16 v23, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 807
    move/from16 v22, v18

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v23, v0

    move/from16 v24, v21

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 808
    add-int/lit8 v19, v19, 0x1

    .line 806
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 813
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v23, v19

    move-object/from16 v24, v15

    invoke-interface/range {v22 .. v24}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 814
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v23, v19

    move/from16 v24, v18

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 817
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v2, v22

    return-object v2
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 11

    .prologue
    .line 920
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    move-object v2, v9

    .line 921
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 922
    const/4 v9, 0x0

    move-object v0, v9

    .line 942
    :goto_0
    return-object v0

    .line 924
    :cond_0
    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    move v3, v9

    .line 925
    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v9, v10

    move v4, v9

    .line 926
    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v9, v10

    move v5, v9

    .line 927
    move v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v6, v9

    .line 928
    move v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v7, v9

    .line 930
    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 931
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 933
    :cond_1
    move v9, v6

    move v10, v7

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 934
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 935
    :cond_2
    move v9, v7

    move v10, v6

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 936
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 938
    :cond_3
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 939
    move-object v9, v8

    if-nez v9, :cond_4

    .line 940
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 942
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v0, v9

    goto :goto_0
.end method

.method private getSelectedDxDy([F)V
    .locals 6

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    const/16 v3, 0xc

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_0

    .line 508
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 512
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    .line 513
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 517
    :goto_1
    return-void

    .line 510
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v4

    aput v4, v2, v3

    goto :goto_0

    .line 515
    :cond_1
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    aput v4, v2, v3

    goto :goto_1
.end method

.method private hasRunningRecoverAnim()Z
    .locals 5

    .prologue
    .line 696
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 697
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 698
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-static {v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 699
    const/4 v3, 0x1

    move v0, v3

    .line 702
    :goto_1
    return v0

    .line 697
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 8

    .prologue
    .line 440
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v1

    move v6, v3

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v1

    move v6, v3

    move-object v7, v0

    .line 441
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    move v5, v2

    move v6, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    move v5, v2

    move v6, v4

    move-object v7, v0

    .line 443
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 10

    .prologue
    .line 499
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/view/GestureDetectorCompat;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$1;)V

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 504
    goto :goto_0
.end method

.method private moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 17

    .prologue
    .line 824
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 857
    :goto_0
    return-void

    .line 827
    :cond_0
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 828
    goto :goto_0

    .line 831
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v9

    move v2, v9

    .line 832
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v3, v9

    .line 833
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v4, v9

    .line 834
    move v9, v4

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move v11, v2

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    move v9, v3

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 835
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 836
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move v11, v2

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 837
    goto :goto_0

    .line 839
    :cond_2
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 840
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 841
    goto :goto_0

    .line 844
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v1

    move-object v11, v5

    move v12, v3

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v6, v9

    .line 845
    move-object v9, v6

    if-nez v9, :cond_4

    .line 846
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 847
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 848
    goto/16 :goto_0

    .line 850
    :cond_4
    move-object v9, v6

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    move v7, v9

    .line 851
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    move v8, v9

    .line 852
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v11, v1

    move-object v12, v6

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 854
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v11, v1

    move v12, v8

    move-object v13, v6

    move v14, v7

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v16}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    .line 857
    :cond_5
    goto/16 :goto_0
.end method

.method private obtainVelocityTracker()V
    .locals 3

    .prologue
    .line 906
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 907
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 909
    :cond_0
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 910
    return-void
.end method

.method private postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 10

    .prologue
    .line 674
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/helper/ItemTouchHelper$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$4;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 693
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 3

    .prologue
    .line 913
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 914
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 915
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 917
    :cond_0
    return-void
.end method

.method private removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne v2, v3, :cond_0

    .line 1288
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1290
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v2, :cond_0

    .line 1291
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1294
    :cond_0
    return-void
.end method

.method private scrollIfNecessary()Z
    .locals 19

    .prologue
    .line 709
    move-object/from16 v0, p0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v11, :cond_0

    .line 710
    move-object v11, v0

    const-wide/high16 v12, -0x8000000000000000L

    iput-wide v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 711
    const/4 v11, 0x0

    move v0, v11

    .line 768
    :goto_0
    return v0

    .line 713
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide v1, v11

    .line 714
    move-object v11, v0

    iget-wide v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v11, v11, v13

    if-nez v11, :cond_8

    const-wide/16 v11, 0x0

    :goto_1
    move-wide v3, v11

    .line 716
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v11

    move-object v5, v11

    .line 717
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v11, :cond_1

    .line 718
    move-object v11, v0

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 720
    :cond_1
    const/4 v11, 0x0

    move v6, v11

    .line 721
    const/4 v11, 0x0

    move v7, v11

    .line 722
    move-object v11, v5

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 723
    move-object v11, v5

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 724
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 725
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 726
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_9

    move v11, v9

    if-gez v11, :cond_9

    .line 727
    move v11, v9

    move v6, v11

    .line 737
    :cond_2
    :goto_2
    move-object v11, v5

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 738
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 739
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 740
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a

    move v11, v9

    if-gez v11, :cond_a

    .line 741
    move v11, v9

    move v7, v11

    .line 750
    :cond_3
    :goto_3
    move v11, v6

    if-eqz v11, :cond_4

    .line 751
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 752
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    move v14, v6

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 753
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v15

    move-wide/from16 v16, v3

    .line 751
    invoke-virtual/range {v11 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v11

    move v6, v11

    .line 755
    :cond_4
    move v11, v7

    if-eqz v11, :cond_5

    .line 756
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 757
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    move v14, v7

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 758
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v15

    move-wide/from16 v16, v3

    .line 756
    invoke-virtual/range {v11 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v11

    move v7, v11

    .line 760
    :cond_5
    move v11, v6

    if-nez v11, :cond_6

    move v11, v7

    if-eqz v11, :cond_b

    .line 761
    :cond_6
    move-object v11, v0

    iget-wide v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v11, v11, v13

    if-nez v11, :cond_7

    .line 762
    move-object v11, v0

    move-wide v12, v1

    iput-wide v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 764
    :cond_7
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move v12, v6

    move v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 765
    const/4 v11, 0x1

    move v0, v11

    goto/16 :goto_0

    .line 714
    :cond_8
    move-wide v11, v1

    move-object v13, v0

    iget-wide v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long/2addr v11, v13

    goto/16 :goto_1

    .line 728
    :cond_9
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 729
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 730
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 731
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    move v10, v11

    .line 732
    move v11, v10

    if-lez v11, :cond_2

    .line 733
    move v11, v10

    move v6, v11

    goto/16 :goto_2

    .line 742
    :cond_a
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 743
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 744
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    move v10, v11

    .line 745
    move v11, v10

    if-lez v11, :cond_3

    .line 746
    move v11, v10

    move v7, v11

    goto/16 :goto_3

    .line 767
    :cond_b
    move-object v11, v0

    const-wide/high16 v12, -0x8000000000000000L

    iput-wide v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 768
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0
.end method

.method private select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 32

    .prologue
    .line 553
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v19, v5

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 670
    :goto_0
    return-void

    .line 556
    :cond_0
    move-object/from16 v19, v3

    const-wide/high16 v20, -0x8000000000000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 557
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 559
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    move-result v19

    .line 560
    move-object/from16 v19, v3

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 561
    move/from16 v19, v5

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 565
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 566
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Landroid/support/v7/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 568
    :cond_1
    const/16 v19, 0x1

    const/16 v20, 0x8

    const/16 v21, 0x8

    move/from16 v22, v5

    mul-int v21, v21, v22

    add-int v20, v20, v21

    shl-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v7, v19

    .line 570
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 572
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 573
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 574
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-eqz v19, :cond_9

    .line 575
    move/from16 v19, v6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v19, 0x0

    .line 576
    :goto_1
    move/from16 v10, v19

    .line 577
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 581
    move/from16 v19, v10

    sparse-switch v19, :sswitch_data_0

    .line 595
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 596
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 598
    :goto_2
    move/from16 v19, v6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 599
    const/16 v19, 0x8

    move/from16 v13, v19

    .line 605
    :goto_3
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 606
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v14, v19

    .line 607
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v15, v19

    .line 608
    new-instance v19, Landroid/support/v7/widget/helper/ItemTouchHelper$3;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    move-object/from16 v22, v9

    move/from16 v23, v13

    move/from16 v24, v6

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v10

    move-object/from16 v30, v9

    invoke-direct/range {v20 .. v30}, Landroid/support/v7/widget/helper/ItemTouchHelper$3;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    move-object/from16 v16, v19

    .line 637
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move/from16 v21, v13

    move/from16 v22, v11

    move/from16 v23, v14

    sub-float v22, v22, v23

    move/from16 v23, v12

    move/from16 v24, v15

    sub-float v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 639
    move-object/from16 v19, v16

    move-wide/from16 v20, v17

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 640
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v20, v16

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 641
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 642
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 647
    :goto_4
    move-object/from16 v19, v3

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 649
    :cond_2
    move-object/from16 v19, v4

    if-eqz v19, :cond_3

    .line 650
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    .line 651
    invoke-virtual/range {v20 .. v22}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v20

    move/from16 v21, v7

    and-int v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v21, v0

    const/16 v22, 0x8

    mul-int/lit8 v21, v21, 0x8

    shr-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 653
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 654
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 655
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 657
    move/from16 v19, v5

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 658
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result v19

    .line 661
    :cond_3
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v9, v19

    .line 662
    move-object/from16 v19, v9

    if-eqz v19, :cond_4

    .line 663
    move-object/from16 v19, v9

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    const/16 v20, 0x1

    :goto_5
    invoke-interface/range {v19 .. v20}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 665
    :cond_4
    move/from16 v19, v8

    if-nez v19, :cond_5

    .line 666
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 668
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 669
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 670
    goto/16 :goto_0

    .line 575
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v20, v9

    .line 576
    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper;->swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v19

    goto/16 :goto_1

    .line 586
    :sswitch_0
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 587
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v11, v19

    .line 588
    goto/16 :goto_2

    .line 591
    :sswitch_1
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 592
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v12, v19

    .line 593
    goto/16 :goto_2

    .line 600
    :cond_7
    move/from16 v19, v10

    if-lez v19, :cond_8

    .line 601
    const/16 v19, 0x2

    move/from16 v13, v19

    goto/16 :goto_3

    .line 603
    :cond_8
    const/16 v19, 0x4

    move/from16 v13, v19

    goto/16 :goto_3

    .line 644
    :cond_9
    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 645
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_4

    .line 663
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 581
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setupCallbacks()V
    .locals 4

    .prologue
    .line 474
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 475
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    .line 476
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 477
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 478
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 479
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->initGestureDetector()V

    .line 480
    return-void
.end method

.method private swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 11

    .prologue
    .line 1158
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1159
    const/4 v7, 0x0

    move v0, v7

    .line 1200
    :goto_0
    return v0

    .line 1161
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v7

    move v2, v7

    .line 1162
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1164
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    .line 1162
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v7

    move v3, v7

    .line 1165
    move v7, v3

    const v8, 0xff00

    and-int/2addr v7, v8

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    move v4, v7

    .line 1167
    move v7, v4

    if-nez v7, :cond_1

    .line 1168
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1170
    :cond_1
    move v7, v2

    const v8, 0xff00

    and-int/2addr v7, v8

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    move v5, v7

    .line 1173
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1174
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_3

    .line 1176
    move v7, v5

    move v8, v6

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 1178
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1179
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 1178
    invoke-static {v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 1181
    :cond_2
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 1183
    :cond_3
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_7

    .line 1184
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 1187
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_5

    .line 1188
    move v7, v6

    move v0, v7

    goto/16 :goto_0

    .line 1190
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v6, v8

    if-lez v7, :cond_7

    .line 1192
    move v7, v5

    move v8, v6

    and-int/2addr v7, v8

    if-nez v7, :cond_6

    .line 1194
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1195
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 1194
    invoke-static {v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v7

    move v0, v7

    goto/16 :goto_0

    .line 1197
    :cond_6
    move v7, v6

    move v0, v7

    goto/16 :goto_0

    .line 1200
    :cond_7
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method private updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 9

    .prologue
    .line 1137
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    move v4, v6

    .line 1138
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move v5, v6

    .line 1141
    move-object v6, v0

    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1142
    move-object v6, v0

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1143
    move v6, v2

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_0

    .line 1144
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1146
    :cond_0
    move v6, v2

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 1147
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1149
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    .line 1150
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1152
    :cond_2
    move v6, v2

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    .line 1153
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    .line 1155
    :cond_3
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 471
    :goto_0
    return-void

    .line 459
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1

    .line 460
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 462
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 463
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_2

    .line 464
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v2, v3

    .line 465
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 466
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 467
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 468
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 469
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->setupCallbacks()V

    .line 471
    :cond_2
    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 902
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 903
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 861
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 865
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 866
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 867
    move-object v3, v2

    if-nez v3, :cond_0

    .line 878
    :goto_0
    return-void

    .line 870
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v3, v4, :cond_2

    .line 871
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 878
    :cond_1
    :goto_1
    goto :goto_0

    .line 873
    :cond_2
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    move-result v3

    .line 874
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 875
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 14

    .prologue
    .line 534
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 535
    const/4 v6, 0x0

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    .line 536
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 537
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 538
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move v4, v6

    .line 539
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move v5, v6

    .line 541
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move v12, v4

    move v13, v5

    invoke-static/range {v6 .. v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$1400(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 543
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 14

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v6, 0x0

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    .line 522
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 523
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 524
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move v4, v6

    .line 525
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move v5, v6

    .line 527
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move v12, v4

    move v13, v5

    invoke-static/range {v6 .. v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$1300(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 529
    return-void
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .prologue
    .line 1061
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$2100(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1062
    const-string v2, "ItemTouchHelper"

    const-string v3, "Start drag has been called but swiping is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1073
    :goto_0
    return-void

    .line 1065
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v2, v3, :cond_1

    .line 1066
    const-string v2, "ItemTouchHelper"

    const-string v3, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1068
    goto :goto_0

    .line 1070
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1071
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1072
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1073
    goto :goto_0
.end method

.method public startSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .prologue
    .line 1108
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->access$2200(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1109
    const-string v2, "ItemTouchHelper"

    const-string v3, "Start swipe has been called but dragging is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1120
    :goto_0
    return-void

    .line 1112
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v2, v3, :cond_1

    .line 1113
    const-string v2, "ItemTouchHelper"

    const-string v3, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1115
    goto :goto_0

    .line 1117
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1118
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1119
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1120
    goto :goto_0
.end method
