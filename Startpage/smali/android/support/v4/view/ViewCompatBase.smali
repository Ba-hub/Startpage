.class Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCompatBase"

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/TintableBackgroundView;

    .line 37
    invoke-interface {v1}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/TintableBackgroundView;

    .line 49
    invoke-interface {v1}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    sget-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    if-nez v2, :cond_0

    .line 89
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "mMinHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 90
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    .line 97
    :cond_0
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 99
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v0, v2

    .line 106
    :goto_1
    return v0

    .line 91
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 100
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 106
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    sget-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    if-nez v2, :cond_0

    .line 66
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "mMinWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 67
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    .line 74
    :cond_0
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 76
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v0, v2

    .line 83
    :goto_1
    return v0

    .line 68
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 77
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 83
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method static isAttachedToWindow(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isLaidOut(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 10

    .prologue
    .line 134
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move v2, v5

    .line 135
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 137
    move v5, v1

    if-eqz v5, :cond_0

    .line 139
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 140
    move-object v5, v3

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 141
    move v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v5

    .line 142
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move v6, v2

    move v7, v4

    sub-int/2addr v6, v7

    move-object v7, v0

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move v8, v2

    move-object v9, v0

    .line 145
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v4

    add-int/2addr v8, v9

    move-object v9, v0

    .line 146
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 142
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 11

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    move v2, v5

    .line 115
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 117
    move v5, v1

    if-eqz v5, :cond_0

    .line 119
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 120
    move-object v5, v3

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 121
    move v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v5

    .line 122
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v6, v0

    .line 123
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move v7, v2

    move v8, v4

    sub-int/2addr v7, v8

    move-object v8, v0

    .line 125
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    move v9, v2

    move-object v10, v0

    .line 126
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    move v10, v4

    add-int/2addr v9, v10

    .line 122
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v2, :cond_0

    .line 43
    move-object v2, v0

    check-cast v2, Landroid/support/v4/view/TintableBackgroundView;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 45
    :cond_0
    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v2, :cond_0

    .line 55
    move-object v2, v0

    check-cast v2, Landroid/support/v4/view/TintableBackgroundView;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 57
    :cond_0
    return-void
.end method
