.class Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr1Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensityDpi(Landroid/content/res/Resources;)I
    .locals 3
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelperJellybeanMr1;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v2

    move v0, v2

    return v0
.end method
