.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;,
        Landroid/support/design/widget/TextInputLayout$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mEditText:Landroid/widget/EditText;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field private mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHasPasswordToggleTintList:Z

.field private mHasPasswordToggleTintMode:Z

.field private mHasReconstructedEditTextBackground:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mIndicatorsAdded:I

.field private final mInputFrame:Landroid/widget/FrameLayout;

.field private mPasswordToggleContentDesc:Ljava/lang/CharSequence;

.field private mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleEnabled:Z

.field private mPasswordToggleTintList:Landroid/content/res/ColorStateList;

.field private mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

.field private mPasswordToggledVisible:Z

.field private mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    .prologue
    .line 164
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    move-object v8, v0

    new-instance v9, Landroid/graphics/Rect;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 146
    move-object v8, v0

    new-instance v9, Landroid/support/design/widget/CollapsingTextHelper;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 166
    move-object v8, v1

    invoke-static {v8}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 168
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 169
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 170
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 172
    move-object v8, v0

    new-instance v9, Landroid/widget/FrameLayout;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    .line 173
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 174
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 176
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v9, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 177
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 178
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const v9, 0x800033

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 180
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v9}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v8, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    .line 182
    move-object v8, v1

    move-object v9, v2

    sget-object v10, Landroid/support/design/R$styleable;->TextInputLayout:[I

    move v11, v3

    sget v12, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v8

    move-object v4, v8

    .line 184
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_hintEnabled:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v8, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    .line 185
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 186
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v8, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 189
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 190
    move-object v8, v0

    move-object v9, v0

    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 191
    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 194
    :cond_0
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    move v5, v8

    .line 196
    move v8, v5

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 197
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v11, 0x0

    .line 198
    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 197
    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 201
    :cond_1
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v8, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    .line 202
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v8

    move v6, v8

    .line 204
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_counterEnabled:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v8

    move v7, v8

    .line 206
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_counterMaxLength:I

    const/4 v11, -0x1

    .line 207
    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v9

    .line 206
    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 208
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_counterTextAppearance:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v8, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    .line 210
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v8, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowTextAppearance:I

    .line 213
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v8, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    .line 215
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    .line 218
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 219
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintList:Z

    .line 220
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    .line 223
    :cond_2
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintMode:Z

    .line 225
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    const/4 v11, -0x1

    .line 226
    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v9

    const/4 v10, 0x0

    .line 225
    invoke-static {v9, v10}, Landroid/support/design/widget/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v9

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 229
    :cond_3
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 231
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 232
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 233
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 235
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v8

    if-nez v8, :cond_4

    .line 238
    move-object v8, v0

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 242
    :cond_4
    move-object v8, v0

    new-instance v9, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout$1;)V

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 243
    return-void

    .line 180
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$100(Landroid/support/design/widget/TextInputLayout;Z)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/TextInputLayout;I)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/TextInputLayout;)V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v0, v1

    return-object v0
.end method

.method private addIndicator(Landroid/widget/TextView;I)V
    .locals 11

    .prologue
    .line 510
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-nez v5, :cond_0

    .line 511
    move-object v5, v0

    new-instance v6, Landroid/widget/LinearLayout;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    .line 512
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 513
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 517
    new-instance v5, Landroid/support/v4/widget/Space;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 518
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v4, v5

    .line 519
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 522
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/TextInputLayout;->adjustIndicatorPadding()V

    .line 525
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 527
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    .line 528
    return-void
.end method

.method private adjustIndicatorPadding()V
    .locals 6

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 533
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    .line 532
    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 534
    return-void
.end method

.method private animateToExpansionFraction(F)V
    .locals 7

    .prologue
    .line 1310
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v2

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1313
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_1

    .line 1314
    move-object v2, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v3

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 1315
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1316
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 1317
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/TextInputLayout$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout$5;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 1324
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 1325
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 1326
    goto :goto_0
.end method

.method private applyPasswordToggleTint()V
    .locals 3

    .prologue
    .line 1211
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintList:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v1, :cond_3

    .line 1213
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1215
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintList:Z

    if-eqz v1, :cond_1

    .line 1216
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1218
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v1, :cond_2

    .line 1219
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1222
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1223
    invoke-virtual {v1}, Landroid/support/design/widget/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_3

    .line 1224
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    :cond_3
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 8

    .prologue
    .line 1371
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 1372
    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 1373
    const/4 v6, 0x1

    move v0, v6

    .line 1376
    :goto_1
    return v0

    .line 1371
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1376
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private collapseHint(Z)V
    .locals 4

    .prologue
    .line 1254
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1255
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1257
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v2, :cond_1

    .line 1258
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 1262
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    .line 1263
    return-void

    .line 1260
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_0
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 7

    .prologue
    .line 825
    move-object v0, p0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v4

    .line 826
    move v4, v1

    const/16 v5, 0x15

    if-eq v4, v5, :cond_0

    move v4, v1

    const/16 v5, 0x16

    if-eq v4, v5, :cond_0

    .line 859
    :goto_0
    return-void

    .line 830
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 831
    move-object v4, v2

    if-nez v4, :cond_1

    .line 832
    goto :goto_0

    .line 835
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v4, :cond_3

    .line 840
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 842
    move-object v4, v2

    instance-of v4, v4, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v4, :cond_2

    .line 845
    move-object v4, v0

    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/DrawableContainer;

    move-object v6, v3

    .line 847
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    .line 846
    invoke-static {v5, v6}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v5

    iput-boolean v5, v4, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    .line 850
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v4, :cond_3

    .line 855
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 856
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    .line 859
    :cond_3
    goto :goto_0
.end method

.method private expandHint(Z)V
    .locals 4

    .prologue
    .line 1298
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1301
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v2, :cond_1

    .line 1302
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 1306
    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    .line 1307
    return-void

    .line 1304
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_0
.end method

.method private hasPasswordTransformation()Z
    .locals 2

    .prologue
    .line 1202
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1203
    invoke-virtual {v1}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private passwordVisibilityToggleRequested()V
    .locals 4

    .prologue
    .line 1182
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v2, :cond_0

    .line 1184
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    move v1, v2

    .line 1186
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1187
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1188
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    .line 1194
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1197
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1199
    :cond_0
    return-void

    .line 1190
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1191
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    goto :goto_0
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 7

    .prologue
    .line 752
    move-object v0, p0

    move v1, p1

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 753
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 754
    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 755
    move-object v5, v4

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 756
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    move v6, v1

    invoke-static {v5, v6}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 752
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    :cond_1
    return-void
.end method

.method private removeIndicator(Landroid/widget/TextView;)V
    .locals 7

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 538
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 539
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    if-nez v2, :cond_0

    .line 540
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    :cond_0
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 9

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 283
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "We already have an EditText, can only have one"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Landroid/support/design/widget/TextInputEditText;

    if-nez v4, :cond_1

    .line 287
    const-string v4, "TextInputLayout"

    const-string v5, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 291
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 293
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v4

    move v2, v4

    .line 296
    move v4, v2

    if-nez v4, :cond_2

    .line 298
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 300
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 302
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getGravity()I

    move-result v4

    move v3, v4

    .line 303
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const/16 v5, 0x30

    move v6, v3

    const v7, 0x800007

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 305
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 308
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v5, Landroid/support/design/widget/TextInputLayout$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 325
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_3

    .line 326
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 330
    :cond_3
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 331
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 333
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 336
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 337
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 340
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    .line 341
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/TextInputLayout;->adjustIndicatorPadding()V

    .line 344
    :cond_6
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 347
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 348
    return-void
.end method

.method private setError(Ljava/lang/CharSequence;Z)V
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 613
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout;->mError:Ljava/lang/CharSequence;

    .line 615
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-nez v3, :cond_1

    .line 616
    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    :goto_0
    return-void

    .line 621
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 624
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 627
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 629
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v3, :cond_6

    .line 630
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    move v3, v2

    if-eqz v3, :cond_5

    .line 634
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 636
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 638
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 639
    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 640
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    sget-object v4, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 641
    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    new-instance v4, Landroid/support/design/widget/TextInputLayout$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    .line 642
    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 647
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 673
    :cond_3
    :goto_2
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 674
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 675
    goto :goto_0

    .line 624
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 650
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_2

    .line 653
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 654
    move v3, v2

    if-eqz v3, :cond_7

    .line 655
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/4 v4, 0x0

    .line 656
    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 657
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    sget-object v4, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 658
    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    new-instance v4, Landroid/support/design/widget/TextInputLayout$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;Ljava/lang/CharSequence;)V

    .line 659
    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 665
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    .line 667
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 424
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 425
    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 2

    .prologue
    .line 1207
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCounter(I)V
    .locals 11

    .prologue
    .line 771
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    move v2, v3

    .line 772
    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 773
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 784
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eq v3, v4, :cond_0

    .line 785
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 786
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 788
    :cond_0
    return-void

    .line 776
    :cond_1
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    if-le v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 777
    move v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eq v3, v4, :cond_2

    .line 778
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v5, :cond_4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowTextAppearance:I

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 781
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 782
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 781
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 776
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 778
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    goto :goto_2
.end method

.method private updateEditTextBackground()V
    .locals 5

    .prologue
    .line 791
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 822
    :goto_0
    return-void

    .line 795
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 796
    move-object v2, v1

    if-nez v2, :cond_1

    .line 797
    goto :goto_0

    .line 800
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 802
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 806
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 808
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 810
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 809
    invoke-static {v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    .line 808
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 822
    :goto_1
    goto :goto_0

    .line 811
    :cond_3
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 813
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 815
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 814
    invoke-static {v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    .line 813
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 819
    :cond_4
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 820
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->refreshDrawableState()V

    goto :goto_1
.end method

.method private updateInputLayoutMargins()V
    .locals 7

    .prologue
    .line 353
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, v3

    .line 356
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v3, :cond_2

    .line 357
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 358
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 360
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 361
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 362
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    move v2, v3

    .line 367
    :goto_0
    move v3, v2

    move-object v4, v1

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v3, v4, :cond_1

    .line 368
    move-object v3, v1

    move v4, v2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 369
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 371
    :cond_1
    return-void

    .line 364
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method private updateLabelState(Z)V
    .locals 8

    .prologue
    .line 374
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v6

    move v2, v6

    .line 375
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 376
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v6

    const v7, 0x101009c

    invoke-static {v6, v7}, Landroid/support/design/widget/TextInputLayout;->arrayContains([II)Z

    move-result v6

    move v4, v6

    .line 377
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 379
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_0

    .line 380
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 383
    :cond_0
    move v6, v2

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 384
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 391
    :cond_1
    :goto_2
    move v6, v3

    if-nez v6, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    if-nez v6, :cond_2

    move v6, v5

    if-eqz v6, :cond_7

    .line 393
    :cond_2
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Landroid/support/design/widget/TextInputLayout;->collapseHint(Z)V

    .line 398
    :goto_3
    return-void

    .line 375
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 377
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 385
    :cond_5
    move v6, v2

    if-eqz v6, :cond_6

    move v6, v4

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_6

    .line 386
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 387
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_1

    .line 388
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 396
    :cond_7
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Landroid/support/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_3
.end method

.method private updatePasswordToggleView()V
    .locals 9

    .prologue
    .line 975
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->shouldShowPasswordIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 976
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-nez v2, :cond_0

    .line 977
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Landroid/support/design/R$layout;->design_text_input_password_icon:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    .line 978
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CheckableImageButton;

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 979
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 980
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 981
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 983
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    new-instance v3, Landroid/support/design/widget/TextInputLayout$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 995
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 996
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 998
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/CheckableImageButton;->getMeasuredWidth()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1000
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1001
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1005
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1006
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1007
    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v6

    .line 1005
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/design/widget/CheckableImageButton;->setPadding(IIII)V

    .line 1018
    :goto_0
    return-void

    .line 1009
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v2}, Landroid/support/design/widget/CheckableImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1010
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1014
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1015
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 10

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 248
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    move-object v5, v1

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 255
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 961
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 963
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v2, :cond_0

    .line 964
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 966
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 1267
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mInDrawableStateChanged:Z

    if-eqz v3, :cond_0

    .line 1295
    :goto_0
    return-void

    .line 1274
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mInDrawableStateChanged:Z

    .line 1276
    move-object v3, v0

    invoke-super {v3}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1278
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v3

    move-object v1, v3

    .line 1279
    const/4 v3, 0x0

    move v2, v3

    .line 1282
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1284
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1286
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v3, :cond_1

    .line 1287
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 1290
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 1291
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    .line 1294
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mInDrawableStateChanged:Z

    .line 1295
    goto :goto_0

    .line 1282
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getCounterMaxLength()I
    .locals 2

    .prologue
    .line 767
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    move v0, v1

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v0, v1

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 932
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mError:Ljava/lang/CharSequence;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1097
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public isCounterEnabled()Z
    .locals 2

    .prologue
    .line 719
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    move v0, v1

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    move v0, v1

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 2

    .prologue
    .line 944
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    move v0, v1

    return v0
.end method

.method public isHintEnabled()Z
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    move v0, v1

    return v0
.end method

.method final isHintExpanded()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1330
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    move v0, v1

    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .locals 2

    .prologue
    .line 1118
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    move v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    .prologue
    .line 1231
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    invoke-super/range {v9 .. v14}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1233
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 1234
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object v6, v9

    .line 1235
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v11, v6

    invoke-static {v9, v10, v11}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1237
    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 1238
    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move v8, v9

    .line 1240
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v10, v7

    move-object v11, v6

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1241
    invoke-virtual {v12}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v12

    add-int/2addr v11, v12

    move v12, v8

    move-object v13, v6

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1242
    invoke-virtual {v14}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    .line 1240
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1246
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v10, v7

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v11

    move v12, v8

    move v13, v5

    move v14, v3

    sub-int/2addr v13, v14

    move-object v14, v0

    .line 1247
    invoke-virtual {v14}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    .line 1246
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1249
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v9}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 1251
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 970
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 971
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 972
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 913
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/design/widget/TextInputLayout$SavedState;

    if-nez v3, :cond_0

    .line 914
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 921
    :goto_0
    return-void

    .line 917
    :cond_0
    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/TextInputLayout$SavedState;

    move-object v2, v3

    .line 918
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 919
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 920
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    .line 921
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 903
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 904
    new-instance v3, Landroid/support/design/widget/TextInputLayout$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 905
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v3, :cond_0

    .line 906
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 908
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public setCounterEnabled(Z)V
    .locals 8

    .prologue
    .line 683
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 684
    move v3, v1

    if-eqz v3, :cond_2

    .line 685
    move-object v3, v0

    new-instance v4, Landroid/widget/TextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 686
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 688
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/TextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 698
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v3, :cond_1

    .line 699
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 707
    :goto_1
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    .line 709
    :cond_0
    return-void

    .line 689
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 692
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 694
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move-object v4, v0

    .line 695
    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$color;->design_textinput_error_color_light:I

    .line 694
    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 701
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_1

    .line 704
    :cond_2
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    .line 705
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public setCounterMaxLength(I)V
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 731
    move v2, v1

    if-lez v2, :cond_1

    .line 732
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    .line 736
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    if-eqz v2, :cond_0

    .line 737
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 740
    :cond_0
    return-void

    .line 734
    :cond_1
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    goto :goto_0

    .line 737
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 747
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 748
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 749
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 608
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 609
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 608
    :goto_0
    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;Z)V

    .line 610
    return-void

    .line 609
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setErrorEnabled(Z)V
    .locals 8

    .prologue
    .line 553
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    move v4, v1

    if-eq v3, v4, :cond_1

    .line 554
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 555
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 558
    :cond_0
    move v3, v1

    if-eqz v3, :cond_2

    .line 559
    move-object v3, v0

    new-instance v4, Landroid/widget/TextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 561
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 573
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/TextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 580
    :goto_1
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    .line 582
    :cond_1
    return-void

    .line 562
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 565
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 567
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v4, v0

    .line 568
    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$color;->design_textinput_error_color_light:I

    .line 567
    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 575
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 576
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 577
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    .line 578
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v2, :cond_0

    .line 417
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 418
    move-object v2, v0

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 420
    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 4

    .prologue
    .line 956
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 957
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 5

    .prologue
    .line 452
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eq v3, v4, :cond_2

    .line 453
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    .line 455
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 456
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-nez v3, :cond_3

    .line 457
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 463
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 476
    :cond_1
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 477
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 480
    :cond_2
    return-void

    .line 465
    :cond_3
    move-object v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 469
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 471
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHintTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 499
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 500
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 502
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 503
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 505
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 507
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1067
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1068
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1067
    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 1069
    return-void

    .line 1068
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1082
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    .line 1083
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v2, :cond_0

    .line 1084
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1086
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 1032
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1033
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1032
    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1035
    return-void

    .line 1033
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1049
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1050
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v2, :cond_0

    .line 1051
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 4

    .prologue
    .line 1132
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 1133
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    .line 1135
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    if-eqz v2, :cond_0

    .line 1138
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1142
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    .line 1144
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 1146
    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1161
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    .line 1162
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintList:Z

    .line 1163
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 1164
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1176
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1177
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintMode:Z

    .line 1178
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 1179
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 269
    return-void
.end method
