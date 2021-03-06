.class Landroid/support/v4/widget/DrawerLayoutCompatApi21;
.super Ljava/lang/Object;
.source "DrawerLayoutCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;
    }
.end annotation


# static fields
.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->THEME_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 9

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    check-cast v4, Landroid/view/WindowInsets;

    move-object v3, v4

    .line 60
    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 61
    move-object v4, v3

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    move-object v6, v3

    .line 62
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    .line 61
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    .line 67
    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 68
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 69
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 70
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 71
    return-void

    .line 63
    :cond_1
    move v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 64
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    move-object v7, v3

    .line 65
    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    .line 64
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public static configureApplyInsets(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/widget/DrawerLayoutImpl;

    if-eqz v1, :cond_0

    .line 39
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 40
    move-object v1, v0

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43
    :cond_0
    return-void
.end method

.method public static dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    check-cast v4, Landroid/view/WindowInsets;

    move-object v3, v4

    .line 47
    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 48
    move-object v4, v3

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    move-object v6, v3

    .line 49
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    .line 48
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    .line 54
    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    .line 55
    return-void

    .line 50
    :cond_1
    move v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 51
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    move-object v7, v3

    .line 52
    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    .line 51
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public static getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    move-object v4, v0

    sget-object v5, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->THEME_ATTRS:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v1, v4

    .line 80
    move-object v4, v1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 82
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v2

    move-object v0, v4

    return-object v0

    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public static getTopInset(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
