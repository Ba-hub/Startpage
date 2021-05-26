.class Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
.super Landroid/support/v7/widget/TintInfo;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatBackgroundHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundTintInfo"
.end annotation


# instance fields
.field public mOriginalTintList:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/TintInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 228
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 229
    return-void
.end method
