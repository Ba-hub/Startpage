.class Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatableTouchDelegate"
.end annotation


# instance fields
.field private final mActualBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private final mDelegateView:Landroid/view/View;

.field private final mSlop:I

.field private final mSlopBounds:Landroid/graphics/Rect;

.field private final mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 1798
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1799
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    .line 1800
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    .line 1801
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 1802
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    .line 1803
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1804
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 1805
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1816
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    move v2, v7

    .line 1817
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    move v3, v7

    .line 1818
    const/4 v7, 0x0

    move v4, v7

    .line 1819
    const/4 v7, 0x1

    move v5, v7

    .line 1820
    const/4 v7, 0x0

    move v6, v7

    .line 1822
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1843
    :cond_0
    :goto_0
    move v7, v4

    if-eqz v7, :cond_1

    .line 1844
    move v7, v5

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1848
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 1849
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 1848
    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1855
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    move v6, v7

    .line 1857
    :cond_1
    move v7, v6

    move v0, v7

    return v0

    .line 1824
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1825
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1826
    const/4 v7, 0x1

    move v4, v7

    goto :goto_0

    .line 1831
    :pswitch_1
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    move v4, v7

    .line 1832
    move v7, v4

    if-eqz v7, :cond_0

    .line 1833
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1834
    const/4 v7, 0x0

    move v5, v7

    goto :goto_0

    .line 1839
    :pswitch_2
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    move v4, v7

    .line 1840
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 1852
    :cond_2
    move-object v7, v1

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 1822
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 1808
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1809
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1810
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v4, v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1811
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1812
    return-void
.end method
