.class public final Landroid/support/v4/content/res/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;,
        Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;,
        Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;,
        Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 33
    move v1, v0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 34
    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    move v1, v0

    const/16 v2, 0xd

    if-lt v1, v2, :cond_1

    .line 36
    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensityDpi(Landroid/content/res/Resources;)I
    .locals 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    move-object v0, p0

    sget-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    move-object v0, p0

    sget-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    move-object v0, p0

    sget-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    move-object v0, p0

    sget-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v1

    move v0, v1

    return v0
.end method
