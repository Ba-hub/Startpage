.class Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"

# interfaces
.implements Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerbreadImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>()V

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
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 3
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 3
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 3
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v2

    move v0, v2

    return v0
.end method
