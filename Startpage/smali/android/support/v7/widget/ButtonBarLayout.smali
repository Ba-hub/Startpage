.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 46
    move-object v5, v0

    .line 47
    invoke-virtual {v5}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v5

    const/16 v6, 0x140

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 49
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 50
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 52
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void

    .line 47
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isStacked()Z
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 119
    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 120
    move-object v5, v0

    sget v6, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 121
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 122
    move-object v5, v2

    move v6, v1

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .line 127
    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v4, v5

    :goto_3
    move v5, v4

    if-ltz v5, :cond_4

    .line 128
    move-object v5, v0

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 127
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 118
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 119
    :cond_2
    const/16 v6, 0x50

    goto :goto_1

    .line 122
    :cond_3
    const/4 v6, 0x4

    goto :goto_2

    .line 130
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    move v3, v10

    .line 68
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v10, :cond_1

    .line 69
    move v10, v3

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v10, v11, :cond_0

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 71
    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 73
    :cond_0
    move-object v10, v0

    move v11, v3

    iput v11, v10, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 75
    :cond_1
    const/4 v10, 0x0

    move v4, v10

    .line 80
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_4

    .line 81
    move v10, v3

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v5, v10

    .line 83
    const/4 v10, 0x1

    move v4, v10

    .line 87
    :goto_0
    move-object v10, v0

    move v11, v5

    move v12, v2

    invoke-super {v10, v11, v12}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 88
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v10, :cond_2

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v10

    if-nez v10, :cond_2

    .line 91
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_6

    .line 93
    move-object v10, v0

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v10

    move v7, v10

    .line 94
    move v10, v7

    const/high16 v11, -0x1000000

    and-int/2addr v10, v11

    move v8, v10

    .line 95
    move v10, v8

    const/high16 v11, 0x1000000

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_1
    move v6, v10

    .line 106
    :goto_2
    move v10, v6

    if-eqz v10, :cond_2

    .line 107
    move-object v10, v0

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 109
    const/4 v10, 0x1

    move v4, v10

    .line 112
    :cond_2
    move v10, v4

    if-eqz v10, :cond_3

    .line 113
    move-object v10, v0

    move v11, v1

    move v12, v2

    invoke-super {v10, v11, v12}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 115
    :cond_3
    return-void

    .line 85
    :cond_4
    move v10, v1

    move v5, v10

    goto :goto_0

    .line 95
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 99
    :cond_6
    const/4 v10, 0x0

    move v7, v10

    .line 100
    const/4 v10, 0x0

    move v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v10

    move v9, v10

    :goto_3
    move v10, v8

    move v11, v9

    if-ge v10, v11, :cond_7

    .line 101
    move v10, v7

    move-object v11, v0

    move v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    move v7, v10

    .line 100
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 103
    :cond_7
    move v10, v7

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    move v11, v3

    if-le v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_4
    move v6, v10

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    goto :goto_4
.end method

.method public setAllowStacking(Z)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 57
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 58
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 59
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 61
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 63
    :cond_1
    return-void
.end method
