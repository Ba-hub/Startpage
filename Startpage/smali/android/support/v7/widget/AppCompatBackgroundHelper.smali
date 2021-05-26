.class Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
    }
.end annotation


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 41
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 42
    move-object v2, v0

    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 43
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .locals 10
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v5, :cond_0

    .line 196
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V

    iput-object v6, v5, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 198
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v2, v5

    .line 199
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 201
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v3, v5

    .line 202
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 203
    move-object v5, v2

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 204
    move-object v5, v2

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 206
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    move-object v4, v5

    .line 207
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 208
    move-object v5, v2

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 209
    move-object v5, v2

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 212
    :cond_2
    move-object v5, v2

    iget-boolean v5, v5, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v5, :cond_3

    move-object v5, v2

    iget-boolean v5, v5, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v5, :cond_4

    .line 213
    :cond_3
    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getDrawableState()[I

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 214
    const/4 v5, 0x1

    move v0, v5

    .line 217
    :goto_0
    return v0

    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method private updateBackgroundTint()Z
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-boolean v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    if-eqz v2, :cond_1

    .line 117
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    if-ltz v2, :cond_0

    .line 120
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 121
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v1, v2

    .line 122
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 124
    const/4 v2, 0x1

    move v0, v2

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    if-eq v2, v3, :cond_1

    .line 130
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 131
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 134
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 157
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 166
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v2, :cond_2

    .line 167
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 168
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 167
    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 174
    :cond_1
    :goto_1
    goto :goto_0

    .line 169
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v2, :cond_1

    .line 170
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    .line 170
    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_1
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    move v9, v2

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v6

    move-object v3, v6

    .line 49
    move-object v6, v3

    :try_start_0
    sget v7, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    move-object v6, v0

    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 52
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v4, v6

    .line 54
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 55
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 58
    :cond_0
    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 60
    invoke-virtual {v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 59
    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_1
    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v9, -0x1

    .line 65
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x0

    .line 64
    invoke-static {v7, v8}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 63
    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 88
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 90
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 93
    :cond_0
    return-void
.end method

.method onSetBackgroundResource(I)V
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 76
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 76
    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 80
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 83
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 178
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v2, :cond_0

    .line 179
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 181
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 182
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    .line 186
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 187
    return-void

    .line 184
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    goto :goto_0
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v2, :cond_0

    .line 97
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 102
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 103
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 104
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    .line 106
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 109
    :cond_1
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v2, :cond_0

    .line 143
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 145
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 146
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintMode:Z

    .line 148
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 149
    return-void
.end method
