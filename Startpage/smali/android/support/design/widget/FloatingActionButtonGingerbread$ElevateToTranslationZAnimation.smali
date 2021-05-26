.class Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;
.super Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonGingerbread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElevateToTranslationZAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .locals 3

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mElevation:F

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mPressedTranslationZ:F

    add-float/2addr v1, v2

    move v0, v1

    return v0
.end method
