.class Landroid/support/v7/widget/AppCompatSeekBarHelper;
.super Landroid/support/v7/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"


# instance fields
.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mView:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;)V

    .line 35
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 37
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 38
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 43
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    if-eqz v1, :cond_3

    .line 125
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 127
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    if-eqz v1, :cond_1

    .line 128
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 131
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    if-eqz v1, :cond_2

    .line 132
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 137
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 141
    :cond_3
    return-void
.end method


# virtual methods
.method drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 161
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_3

    .line 162
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    move v2, v10

    .line 163
    move v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 164
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move v3, v10

    .line 165
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    move v4, v10

    .line 166
    move v10, v3

    if-ltz v10, :cond_0

    move v10, v3

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    :goto_0
    move v5, v10

    .line 167
    move v10, v4

    if-ltz v10, :cond_1

    move v10, v4

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    :goto_1
    move v6, v10

    .line 168
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    move v11, v5

    neg-int v11, v11

    move v12, v6

    neg-int v12, v12

    move v13, v5

    move v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getWidth()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 171
    invoke-virtual {v11}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move v11, v2

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v7, v10

    .line 172
    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    move v8, v10

    .line 173
    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getHeight()I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    const/4 v10, 0x0

    move v9, v10

    :goto_2
    move v10, v9

    move v11, v2

    if-gt v10, v11, :cond_2

    .line 175
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    move-object v10, v1

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 166
    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v10, 0x1

    goto :goto_1

    .line 178
    :cond_2
    move-object v10, v1

    move v11, v8

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 181
    :cond_3
    return-void
.end method

.method drawableStateChanged()V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    move-object v1, v2

    .line 151
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 152
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :cond_0
    return-void
.end method

.method getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    return-object v0
.end method

.method jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 145
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 147
    :cond_0
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 49
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar:[I

    move v9, v2

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v6

    move-object v3, v6

    .line 51
    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v4, v6

    .line 52
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 53
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_0
    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 57
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 59
    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    move-object v6, v0

    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 62
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 65
    :cond_1
    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    move-object v6, v0

    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 67
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 70
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 72
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 73
    return-void
.end method

.method setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 77
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 80
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 82
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 83
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 84
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 85
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 88
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 91
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->invalidate()V

    .line 92
    return-void
.end method

.method setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 101
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 103
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 104
    return-void
.end method

.method setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 113
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 115
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 116
    return-void
.end method
