.class final Landroid/support/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedShadowColor:I

.field private mCollapsedShadowDx:F

.field private mCollapsedShadowDy:F

.field private mCollapsedShadowRadius:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedShadowColor:I

.field private mExpandedShadowDx:F

.field private mExpandedShadowDy:F

.field private mExpandedShadowRadius:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mState:[I

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 51
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    :cond_0
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 66
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 67
    move-object v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 68
    move-object v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 111
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    .line 113
    move-object v2, v0

    new-instance v3, Landroid/text/TextPaint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x81

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 115
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 116
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 117
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    .line 118
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 12

    .prologue
    .line 700
    move v0, p0

    move v1, p1

    move v2, p2

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v2

    sub-float/2addr v8, v9

    move v3, v8

    .line 701
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v4, v8

    .line 702
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v5, v8

    .line 703
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v6, v8

    .line 704
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 705
    move v8, v4

    float-to-int v8, v8

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    move v11, v7

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v0, v8

    return v0
.end method

.method private calculateBaseOffsets()V
    .locals 11

    .prologue
    .line 395
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    move v1, v7

    .line 398
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 399
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 400
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    :goto_0
    move v2, v7

    .line 401
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v7, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    move v3, v7

    .line 403
    move v7, v3

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_0

    .line 412
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    move v4, v7

    .line 413
    move v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float/2addr v7, v8

    move v5, v7

    .line 414
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    move v9, v5

    add-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 417
    :goto_2
    move v7, v3

    const v8, 0x800007

    and-int/2addr v7, v8

    sparse-switch v7, :sswitch_data_1

    .line 426
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 430
    :goto_3
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 431
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 432
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    :goto_4
    move v2, v7

    .line 433
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_5
    invoke-static {v7, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    move v4, v7

    .line 435
    move v7, v4

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_2

    .line 444
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    move v5, v7

    .line 445
    move v7, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float/2addr v7, v8

    move v6, v7

    .line 446
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    move v9, v6

    add-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 449
    :goto_6
    move v7, v4

    const v8, 0x800007

    and-int/2addr v7, v8

    sparse-switch v7, :sswitch_data_3

    .line 458
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 463
    :goto_7
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 465
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 466
    return-void

    .line 400
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 401
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 405
    :sswitch_0
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 406
    goto/16 :goto_2

    .line 408
    :sswitch_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 409
    goto/16 :goto_2

    .line 419
    :sswitch_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 420
    goto/16 :goto_3

    .line 422
    :sswitch_3
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    move v9, v2

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 423
    goto/16 :goto_3

    .line 432
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 433
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 437
    :sswitch_4
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 438
    goto :goto_6

    .line 440
    :sswitch_5
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 441
    goto :goto_6

    .line 451
    :sswitch_6
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 452
    goto :goto_7

    .line 454
    :sswitch_7
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    move v9, v2

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 455
    goto/16 :goto_7

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 417
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 435
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 449
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method private calculateCurrentOffsets()V
    .locals 3

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 346
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 7

    .prologue
    .line 524
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 526
    move v3, v2

    if-eqz v3, :cond_1

    sget-object v3, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_1
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    .line 528
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v3

    move v0, v3

    return v0

    .line 524
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 526
    :cond_1
    sget-object v3, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1
.end method

.method private calculateOffsets(F)V
    .locals 9

    .prologue
    .line 349
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    .line 350
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    .line 352
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    .line 355
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 358
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v2, v3, :cond_0

    .line 361
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    .line 362
    invoke-direct {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v4

    move v5, v1

    .line 361
    invoke-static {v3, v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 367
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    move v5, v1

    const/4 v6, 0x0

    .line 368
    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    move v6, v1

    const/4 v7, 0x0

    .line 369
    invoke-static {v4, v5, v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    move v7, v1

    const/4 v8, 0x0

    .line 370
    invoke-static {v5, v6, v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    move v8, v1

    .line 371
    invoke-static {v6, v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v6

    .line 367
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 373
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 374
    return-void

    .line 364
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private calculateUsingTextSize(F)V
    .locals 13

    .prologue
    .line 546
    move-object v0, p0

    move v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v9, :cond_0

    .line 613
    :goto_0
    return-void

    .line 548
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    move v2, v9

    .line 549
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    move v3, v9

    .line 553
    const/4 v9, 0x0

    move v6, v9

    .line 555
    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-static {v9, v10}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 556
    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move v5, v9

    .line 557
    move-object v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    .line 558
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v9, v10, :cond_1

    .line 559
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    iput-object v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 560
    const/4 v9, 0x1

    move v6, v9

    .line 562
    :cond_1
    move v9, v2

    move v4, v9

    .line 593
    :goto_1
    move v9, v4

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 594
    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    move v10, v5

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    if-nez v9, :cond_2

    move v9, v6

    if-eqz v9, :cond_a

    :cond_2
    const/4 v9, 0x1

    :goto_2
    move v6, v9

    .line 595
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    .line 596
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 599
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v9, :cond_4

    move v9, v6

    if-eqz v9, :cond_5

    .line 600
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 601
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 603
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 606
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move v11, v4

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v9, v10, v11, v12}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v7, v9

    .line 608
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 609
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 610
    move-object v9, v0

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {v10, v11}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v10

    iput-boolean v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    .line 613
    :cond_5
    goto/16 :goto_0

    .line 564
    :cond_6
    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    move v5, v9

    .line 565
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v9, v10, :cond_7

    .line 566
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 567
    const/4 v9, 0x1

    move v6, v9

    .line 569
    :cond_7
    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-static {v9, v10}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 571
    move-object v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    .line 577
    :goto_4
    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float/2addr v9, v10

    move v7, v9

    .line 580
    move v9, v3

    move v10, v7

    mul-float/2addr v9, v10

    move v8, v9

    .line 582
    move v9, v8

    move v10, v2

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    .line 586
    move v9, v2

    move v10, v7

    div-float/2addr v9, v10

    move v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move v4, v9

    goto/16 :goto_1

    .line 574
    :cond_8
    move-object v9, v0

    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float/2addr v10, v11

    iput v10, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    goto :goto_4

    .line 589
    :cond_9
    move v9, v3

    move v4, v9

    goto/16 :goto_1

    .line 594
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 603
    :cond_b
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private clearTexture()V
    .locals 3

    .prologue
    .line 671
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 672
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 673
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 675
    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 12

    .prologue
    .line 616
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 617
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 622
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    .line 623
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    .line 625
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v1, v4

    .line 626
    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, v4

    .line 628
    move v4, v1

    if-lez v4, :cond_2

    move v4, v2

    if-gtz v4, :cond_3

    .line 629
    :cond_2
    goto :goto_0

    .line 632
    :cond_3
    move-object v4, v0

    move v5, v1

    move v6, v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 634
    new-instance v4, Landroid/graphics/Canvas;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v4

    .line 635
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    move v9, v2

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 637
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v4, :cond_4

    .line 639
    move-object v4, v0

    new-instance v5, Landroid/graphics/Paint;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    .line 641
    :cond_4
    goto/16 :goto_0
.end method

.method private getCurrentCollapsedTextColor()I
    .locals 4
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    if-eqz v1, :cond_0

    .line 388
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    move v0, v1

    .line 390
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private getCurrentExpandedTextColor()I
    .locals 4
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    if-eqz v1, :cond_0

    .line 379
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    move v0, v1

    .line 381
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private interpolateBounds(F)V
    .locals 7

    .prologue
    .line 469
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 471
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 473
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 475
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 477
    return-void
.end method

.method private static isClose(FF)Z
    .locals 4

    .prologue
    .line 682
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 7

    .prologue
    .line 710
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v3

    if-eqz v4, :cond_0

    .line 711
    move-object v4, v3

    move v5, v2

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    move v2, v4

    .line 713
    :cond_0
    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result v4

    move v0, v4

    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 13

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move v7, v1

    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const v11, 0x10103ac

    aput v11, v9, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v2, v6

    .line 263
    move-object v6, v2

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 264
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 265
    move-object v6, v3

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 268
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v4

    move-object v0, v6

    .line 270
    :goto_0
    return-object v0

    .line 268
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 7

    .prologue
    .line 717
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v6, v1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v6, v2

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move v6, v3

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move v6, v4

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 5

    .prologue
    .line 532
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 535
    move-object v2, v0

    sget-boolean v3, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    .line 537
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v2, :cond_0

    .line 539
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 542
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 543
    return-void

    .line 535
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 480
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move v2, v8

    .line 482
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    if-eqz v8, :cond_2

    .line 483
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    move v3, v8

    .line 484
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    move v4, v8

    .line 486
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 490
    move v8, v5

    if-eqz v8, :cond_4

    .line 491
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v8, v9

    move v6, v8

    .line 492
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v8, v9

    move v7, v8

    .line 504
    :goto_1
    move v8, v5

    if-eqz v8, :cond_0

    .line 505
    move v8, v4

    move v9, v6

    add-float/2addr v8, v9

    move v4, v8

    .line 508
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 509
    move-object v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    move v11, v3

    move v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 512
    :cond_1
    move v8, v5

    if-eqz v8, :cond_5

    .line 514
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    move v10, v3

    move v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 520
    :cond_2
    :goto_2
    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 521
    return-void

    .line 486
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 494
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v8, v9

    move v6, v8

    .line 495
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v8, v9

    move v7, v8

    goto :goto_1

    .line 516
    :cond_5
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move v12, v3

    move v13, v4

    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 690
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method getCollapsedTextGravity()I
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    move v0, v1

    return v0
.end method

.method getCollapsedTextSize()F
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move v0, v1

    return v0
.end method

.method getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 686
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method getExpandedTextGravity()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    move v0, v1

    return v0
.end method

.method getExpandedTextSize()F
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    move v0, v1

    return v0
.end method

.method getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method getExpansionFraction()F
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    move v0, v1

    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 667
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method final isStateful()Z
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 329
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onBoundsChanged()V
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 176
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Landroid/support/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    .line 177
    return-void

    .line 176
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public recalculate()V
    .locals 2

    .prologue
    .line 644
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 647
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 648
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 650
    :cond_0
    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 10

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 170
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v3

    move-object v2, v3

    .line 204
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 208
    :cond_0
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 213
    :cond_1
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 215
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 217
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 219
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    .line 221
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 223
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 224
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 227
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 228
    return-void
.end method

.method setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 146
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 147
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 149
    :cond_0
    return-void
.end method

.method setCollapsedTextGravity(I)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 192
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 193
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 195
    :cond_0
    return-void
.end method

.method setCollapsedTextSize(F)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 139
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 140
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 142
    :cond_0
    return-void
.end method

.method setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 275
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 276
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 278
    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 10

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v5

    if-nez v5, :cond_0

    .line 160
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 162
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 164
    :cond_0
    return-void
.end method

.method setExpandedTextAppearance(I)V
    .locals 7

    .prologue
    .line 231
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v3

    move-object v2, v3

    .line 233
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 237
    :cond_0
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 242
    :cond_1
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    .line 244
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    .line 246
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    .line 248
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    .line 250
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 252
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 253
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 256
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 257
    return-void
.end method

.method setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 153
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 154
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 156
    :cond_0
    return-void
.end method

.method setExpandedTextGravity(I)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 181
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 182
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 184
    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 133
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 135
    :cond_0
    return-void
.end method

.method setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 282
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 283
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 285
    :cond_0
    return-void
.end method

.method setExpansionFraction(F)V
    .locals 5

    .prologue
    .line 308
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroid/support/design/widget/MathUtils;->constrain(FFF)F

    move-result v2

    move v1, v2

    .line 310
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 311
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    .line 312
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 314
    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 127
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 128
    return-void
.end method

.method final setState([I)Z
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mState:[I

    .line 319
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 321
    const/4 v2, 0x1

    move v0, v2

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 658
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    .line 660
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 661
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 662
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 664
    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 122
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 123
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 8

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 289
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 290
    return-void
.end method
