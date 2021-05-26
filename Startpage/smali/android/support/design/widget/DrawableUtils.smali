.class Landroid/support/design/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableUtils"

.field private static sSetConstantStateMethod:Ljava/lang/reflect/Method;

.field private static sSetConstantStateMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    sget-boolean v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethodFetched:Z

    if-nez v3, :cond_0

    .line 49
    :try_start_0
    const-class v3, Landroid/graphics/drawable/DrawableContainer;

    const-string v4, "setConstantState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    .line 51
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethodFetched:Z

    .line 57
    :cond_0
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 59
    :try_start_1
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 60
    const/4 v3, 0x1

    move v0, v3

    .line 65
    :goto_1
    return v0

    .line 52
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 53
    const-string v3, "DrawableUtils"

    const-string v4, "Could not fetch setConstantState(). Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 61
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 62
    const-string v3, "DrawableUtils"

    const-string v4, "Could not invoke setConstantState(). Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 65
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method
