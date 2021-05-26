.class abstract Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
.super Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;
.source "FloatingActionButtonGingerbread.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonGingerbread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShadowAnimatorImpl"
.end annotation


# instance fields
.field private mShadowSizeEnd:F

.field private mShadowSizeStart:F

.field private mValidValues:Z

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    return-void
.end method


# virtual methods
.method protected abstract getTargetShadowSize()F
.end method

.method public onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeEnd:F

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 239
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mValidValues:Z

    .line 240
    return-void
.end method

.method public onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 6

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mValidValues:Z

    if-nez v2, :cond_0

    .line 227
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->getShadowSize()F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeStart:F

    .line 228
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->getTargetShadowSize()F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeEnd:F

    .line 229
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mValidValues:Z

    .line 232
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeStart:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeEnd:F

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;->mShadowSizeStart:F

    sub-float/2addr v4, v5

    move-object v5, v1

    .line 233
    invoke-virtual {v5}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 232
    invoke-virtual {v2, v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 234
    return-void
.end method
