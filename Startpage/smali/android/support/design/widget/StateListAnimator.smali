.class final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final mAnimationListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

.field private mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field private mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 27
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 28
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 30
    move-object v1, v0

    new-instance v2, Landroid/support/design/widget/StateListAnimator$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    .line 104
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/StateListAnimator;)Landroid/support/design/widget/ValueAnimatorCompat;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/design/widget/StateListAnimator;Landroid/support/design/widget/ValueAnimatorCompat;)Landroid/support/design/widget/ValueAnimatorCompat;
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v0, v2

    return-object v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_0

    .line 87
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 88
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 90
    :cond_0
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    iput-object v3, v2, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 82
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 83
    return-void
.end method


# virtual methods
.method public addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 10

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/support/design/widget/StateListAnimator$Tuple;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/StateListAnimator$1;)V

    move-object v3, v4

    .line 49
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 50
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 51
    return-void
.end method

.method public jumpToCurrentState()V
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_0

    .line 99
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->end()V

    .line 100
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 102
    :cond_0
    return-void
.end method

.method setState([I)V
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move-object v2, v6

    .line 58
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 59
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 60
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/StateListAnimator$Tuple;

    move-object v5, v6

    .line 61
    move-object v6, v5

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    move-object v7, v1

    invoke-static {v6, v7}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    move-object v6, v5

    move-object v2, v6

    .line 66
    :cond_0
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v6, v7, :cond_2

    .line 78
    :goto_1
    return-void

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz v6, :cond_3

    .line 70
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 73
    :cond_3
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 75
    move-object v6, v2

    if-eqz v6, :cond_4

    .line 76
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    .line 78
    :cond_4
    goto :goto_1
.end method
