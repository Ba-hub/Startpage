.class Landroid/support/v4/view/ViewCompatLollipop;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;
    }
.end annotation


# static fields
.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    check-cast v4, Landroid/view/WindowInsets;

    move-object v2, v4

    .line 137
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    .line 138
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_0

    .line 139
    new-instance v4, Landroid/view/WindowInsets;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v1, v4

    .line 141
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 10

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 12

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    move v0, v1

    return v0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 243
    sget-object v1, Landroid/support/v4/view/ViewCompatLollipop;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/ThreadLocal;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompatLollipop;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 246
    :cond_0
    sget-object v1, Landroid/support/v4/view/ViewCompatLollipop;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object v0, v1

    .line 247
    move-object v1, v0

    if-nez v1, :cond_1

    .line 248
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 249
    sget-object v1, Landroid/support/v4/view/ViewCompatLollipop;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 251
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 252
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 11

    .prologue
    .line 218
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/v4/view/ViewCompatLollipop;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v6

    .line 219
    const/4 v6, 0x0

    move v3, v6

    .line 221
    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    .line 222
    move-object v6, v4

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 223
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 224
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 228
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 227
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 232
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompatHC;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 236
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 237
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 236
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 240
    :cond_1
    return-void

    .line 227
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 11

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/v4/view/ViewCompatLollipop;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v6

    .line 194
    const/4 v6, 0x0

    move v3, v6

    .line 196
    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    .line 197
    move-object v6, v4

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 198
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 199
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 202
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 203
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 202
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 207
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompatHC;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 211
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 212
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 211
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 215
    :cond_1
    return-void

    .line 202
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    check-cast v4, Landroid/view/WindowInsets;

    move-object v2, v4

    .line 128
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    .line 129
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_0

    .line 130
    new-instance v4, Landroid/view/WindowInsets;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v1, v4

    .line 132
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 46
    return-void
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 89
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_1

    .line 92
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 93
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 95
    move-object v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_1

    .line 96
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 99
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_1
    return-void

    .line 94
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 111
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_1

    .line 114
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 115
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 117
    move-object v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_1

    .line 118
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 121
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_1
    return-void

    .line 116
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setElevation(F)V

    .line 50
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 146
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v2, v0

    new-instance v3, Landroid/support/v4/view/ViewCompatLollipop$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewCompatLollipop$1;-><init>(Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 58
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setZ(F)V

    .line 190
    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->stopNestedScroll()V

    .line 158
    return-void
.end method
