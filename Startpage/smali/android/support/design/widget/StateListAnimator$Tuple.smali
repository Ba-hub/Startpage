.class Landroid/support/design/widget/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tuple"
.end annotation


# instance fields
.field final mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field final mSpecs:[I


# direct methods
.method private constructor <init>([ILandroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 109
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    .line 110
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 111
    return-void
.end method

.method synthetic constructor <init>([ILandroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/StateListAnimator$1;)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    return-void
.end method
