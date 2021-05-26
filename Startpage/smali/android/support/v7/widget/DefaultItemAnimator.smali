.class public Landroid/support/v7/widget/DefaultItemAnimator;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;,
        Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;,
        Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    .line 39
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 40
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 41
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 42
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 44
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 45
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 46
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 48
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 49
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 50
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 51
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 659
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 12

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method private animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    .line 226
    move-object v4, v2

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v3, v4

    .line 227
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 228
    move-object v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator$5;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/DefaultItemAnimator$5;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 229
    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 246
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 247
    return-void
.end method

.method private animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 15

    .prologue
    .line 341
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v2, v7

    .line 342
    move-object v7, v2

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_0
    move-object v3, v7

    .line 343
    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v4, v7

    .line 344
    move-object v7, v4

    if-eqz v7, :cond_3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_1
    move-object v5, v7

    .line 345
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 346
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    move-object v8, v0

    .line 347
    invoke-virtual {v8}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 346
    invoke-virtual {v7, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    move-object v6, v7

    .line 348
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 349
    move-object v7, v6

    move-object v8, v1

    iget v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    move-object v9, v1

    iget v9, v9, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 350
    move-object v7, v6

    move-object v8, v1

    iget v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    move-object v9, v1

    iget v9, v9, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 351
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    new-instance v8, Landroid/support/v7/widget/DefaultItemAnimator$7;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v7/widget/DefaultItemAnimator$7;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 367
    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 369
    :cond_0
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 370
    move-object v7, v5

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    move-object v6, v7

    .line 371
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 372
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 373
    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    new-instance v8, Landroid/support/v7/widget/DefaultItemAnimator$8;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/DefaultItemAnimator$8;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 388
    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 390
    :cond_1
    return-void

    .line 342
    :cond_2
    move-object v7, v2

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto/16 :goto_0

    .line 344
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method private animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 19

    .prologue
    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v10

    .line 274
    move v10, v4

    move v11, v2

    sub-int/2addr v10, v11

    move v7, v10

    .line 275
    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    move v8, v10

    .line 276
    move v10, v7

    if-eqz v10, :cond_0

    .line 277
    move-object v10, v6

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    .line 279
    :cond_0
    move v10, v8

    if-eqz v10, :cond_1

    .line 280
    move-object v10, v6

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    .line 285
    :cond_1
    move-object v10, v6

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    move-object v9, v10

    .line 286
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 287
    move-object v10, v9

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    new-instance v11, Landroid/support/v7/widget/DefaultItemAnimator$6;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move-object v14, v1

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator$6;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    .line 308
    invoke-virtual {v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 309
    return-void
.end method

.method private animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    .line 196
    move-object v4, v2

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v3, v4

    .line 197
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 198
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const/4 v5, 0x0

    .line 199
    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator$4;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/DefaultItemAnimator$4;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 214
    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 2

    .prologue
    .line 540
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 543
    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 394
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object v4, v5

    .line 395
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 396
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    .line 397
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 393
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 401
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 5

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 405
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    .line 407
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 408
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    .line 410
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move v3, v4

    .line 413
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 414
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 421
    :goto_0
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 422
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 423
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 424
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 425
    const/4 v4, 0x1

    move v0, v4

    :goto_1
    return v0

    .line 415
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v5, v2

    if-ne v4, v5, :cond_1

    .line 416
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 417
    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    .line 419
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 515
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/animation/AnimatorCompatHelper;->clearInterpolator(Landroid/view/View;)V

    .line 516
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 517
    return-void
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 219
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 220
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 221
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 23

    .prologue
    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v12, v1

    move-object v13, v2

    if-ne v12, v13, :cond_0

    .line 317
    move-object v12, v0

    move-object v13, v1

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v12

    move v0, v12

    .line 337
    :goto_0
    return v0

    .line 319
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v12

    move v7, v12

    .line 320
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v12

    move v8, v12

    .line 321
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v12

    move v9, v12

    .line 322
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 323
    move v12, v5

    move v13, v3

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v7

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v10, v12

    .line 324
    move v12, v6

    move v13, v4

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v8

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v11, v12

    .line 326
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v7

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 327
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v8

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 328
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v9

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 329
    move-object v12, v2

    if-eqz v12, :cond_1

    .line 331
    move-object v12, v0

    move-object v13, v2

    invoke-direct {v12, v13}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 332
    move-object v12, v2

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v10

    neg-int v13, v13

    int-to-float v13, v13

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 333
    move-object v12, v2

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v11

    neg-int v13, v13

    int-to-float v13, v13

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 334
    move-object v12, v2

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 336
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$1;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 337
    const/4 v12, 0x1

    move v0, v12

    goto/16 :goto_0
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 19

    .prologue
    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v9

    .line 253
    move v9, v2

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v2, v9

    .line 254
    move v9, v3

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v3, v9

    .line 255
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 256
    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v7, v9

    .line 257
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v8, v9

    .line 258
    move v9, v7

    if-nez v9, :cond_0

    move v9, v8

    if-nez v9, :cond_0

    .line 259
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 260
    const/4 v9, 0x0

    move v0, v9

    .line 269
    :goto_0
    return v0

    .line 262
    :cond_0
    move v9, v7

    if-eqz v9, :cond_1

    .line 263
    move-object v9, v6

    move v10, v7

    neg-int v10, v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 265
    :cond_1
    move v9, v8

    if-eqz v9, :cond_2

    .line 266
    move-object v9, v6

    move v10, v8

    neg-int v10, v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 268
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v10, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$1;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 269
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 190
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 191
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 6
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 656
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 633
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 632
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 635
    :cond_0
    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v7

    .line 432
    move-object v7, v2

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 434
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_0
    move v7, v3

    if-ltz v7, :cond_1

    .line 435
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v4, v7

    .line 436
    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 437
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 438
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 439
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 440
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 434
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 443
    :cond_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 444
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 445
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 446
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 448
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 449
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 450
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 453
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_1
    move v7, v3

    if-ltz v7, :cond_5

    .line 454
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 455
    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 456
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 457
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 453
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 460
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_2
    move v7, v3

    if-ltz v7, :cond_8

    .line 461
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 462
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_3
    move v7, v5

    if-ltz v7, :cond_6

    .line 463
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v6, v7

    .line 464
    move-object v7, v6

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v8, v1

    if-ne v7, v8, :cond_7

    .line 465
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 466
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 467
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 468
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 469
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 470
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 460
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 462
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 476
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_4
    move v7, v3

    if-ltz v7, :cond_a

    .line 477
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 478
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 479
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 480
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 481
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 482
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 476
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 489
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 495
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 501
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 507
    :cond_d
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 511
    :cond_e
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 512
    return-void
.end method

.method public endAnimations()V
    .locals 12

    .prologue
    .line 547
    move-object v0, p0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 548
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_0
    move v9, v2

    if-ltz v9, :cond_0

    .line 549
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v3, v9

    .line 550
    move-object v9, v3

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v9

    .line 551
    move-object v9, v4

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 552
    move-object v9, v4

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 553
    move-object v9, v0

    move-object v10, v3

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 554
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 548
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 556
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 557
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_1
    move v9, v2

    if-ltz v9, :cond_1

    .line 558
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v9

    .line 559
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 560
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 557
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 562
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 563
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_2
    move v9, v2

    if-ltz v9, :cond_2

    .line 564
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v9

    .line 565
    move-object v9, v3

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v9

    .line 566
    move-object v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 567
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 568
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 563
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 570
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 571
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_3
    move v9, v2

    if-ltz v9, :cond_3

    .line 572
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 571
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 574
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 575
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v9

    if-nez v9, :cond_4

    .line 629
    :goto_4
    return-void

    .line 579
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 580
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_5
    move v9, v3

    if-ltz v9, :cond_7

    .line 581
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 582
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 583
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    :goto_6
    move v9, v5

    if-ltz v9, :cond_6

    .line 584
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v6, v9

    .line 585
    move-object v9, v6

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v9

    .line 586
    move-object v9, v7

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v9

    .line 587
    move-object v9, v8

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 588
    move-object v9, v8

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 589
    move-object v9, v0

    move-object v10, v6

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 590
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 591
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 592
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 583
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 580
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 596
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 597
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_7
    move v9, v3

    if-ltz v9, :cond_a

    .line 598
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 599
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 600
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    :goto_8
    move v9, v5

    if-ltz v9, :cond_9

    .line 601
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v6, v9

    .line 602
    move-object v9, v6

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v7, v9

    .line 603
    move-object v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 604
    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 605
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 606
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 607
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 600
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 597
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 611
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 612
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_9
    move v9, v3

    if-ltz v9, :cond_d

    .line 613
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 614
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 615
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    :goto_a
    move v9, v5

    if-ltz v9, :cond_c

    .line 616
    move-object v9, v0

    move-object v10, v4

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 617
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 618
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 615
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 612
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 623
    :cond_d
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 624
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 625
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 626
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 628
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 629
    goto/16 :goto_4
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 522
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 523
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 525
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 526
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 527
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 528
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 530
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 531
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 24

    .prologue
    .line 98
    move-object/from16 v1, p0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v2, v17

    .line 99
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x1

    :goto_1
    move/from16 v3, v17

    .line 100
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x1

    :goto_2
    move/from16 v4, v17

    .line 101
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, 0x1

    :goto_3
    move/from16 v5, v17

    .line 102
    move/from16 v17, v2

    if-nez v17, :cond_4

    move/from16 v17, v3

    if-nez v17, :cond_4

    move/from16 v17, v5

    if-nez v17, :cond_4

    move/from16 v17, v4

    if-nez v17, :cond_4

    .line 185
    :goto_4
    return-void

    .line 98
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 99
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 100
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 101
    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    .line 107
    :cond_4
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v6, v17

    :goto_5
    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v7, v17

    .line 108
    move-object/from16 v17, v1

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v18}, Landroid/support/v7/widget/DefaultItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 109
    goto :goto_5

    .line 110
    :cond_5
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 112
    move/from16 v17, v3

    if-eqz v17, :cond_6

    .line 113
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v17

    .line 114
    move-object/from16 v17, v6

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v17

    .line 115
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 116
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 117
    new-instance v17, Landroid/support/v7/widget/DefaultItemAnimator$1;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Landroid/support/v7/widget/DefaultItemAnimator$1;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v7, v17

    .line 128
    move/from16 v17, v2

    if-eqz v17, :cond_a

    .line 129
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v8, v17

    .line 130
    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 136
    :cond_6
    :goto_6
    move/from16 v17, v4

    if-eqz v17, :cond_7

    .line 137
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v17

    .line 138
    move-object/from16 v17, v6

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v17

    .line 139
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 140
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 141
    new-instance v17, Landroid/support/v7/widget/DefaultItemAnimator$2;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Landroid/support/v7/widget/DefaultItemAnimator$2;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v7, v17

    .line 151
    move/from16 v17, v2

    if-eqz v17, :cond_b

    .line 152
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v17, v0

    move-object/from16 v8, v17

    .line 153
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 159
    :cond_7
    :goto_7
    move/from16 v17, v5

    if-eqz v17, :cond_9

    .line 160
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v17

    .line 161
    move-object/from16 v17, v6

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v17

    .line 162
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 163
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v17, Landroid/support/v7/widget/DefaultItemAnimator$3;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Landroid/support/v7/widget/DefaultItemAnimator$3;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v7, v17

    .line 174
    move/from16 v17, v2

    if-nez v17, :cond_8

    move/from16 v17, v3

    if-nez v17, :cond_8

    move/from16 v17, v4

    if-eqz v17, :cond_f

    .line 175
    :cond_8
    move/from16 v17, v2

    if-eqz v17, :cond_c

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v17

    :goto_8
    move-wide/from16 v8, v17

    .line 176
    move/from16 v17, v3

    if-eqz v17, :cond_d

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v17

    :goto_9
    move-wide/from16 v10, v17

    .line 177
    move/from16 v17, v4

    if-eqz v17, :cond_e

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v17

    :goto_a
    move-wide/from16 v12, v17

    .line 178
    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    add-long v17, v17, v19

    move-wide/from16 v14, v17

    .line 179
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v16, v17

    .line 180
    move-object/from16 v17, v16

    move-object/from16 v18, v7

    move-wide/from16 v19, v14

    invoke-static/range {v17 .. v20}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 185
    :cond_9
    :goto_b
    goto/16 :goto_4

    .line 132
    :cond_a
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    .line 155
    :cond_b
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_7

    .line 175
    :cond_c
    const-wide/16 v17, 0x0

    goto :goto_8

    .line 176
    :cond_d
    const-wide/16 v17, 0x0

    goto :goto_9

    .line 177
    :cond_e
    const-wide/16 v17, 0x0

    goto :goto_a

    .line 182
    :cond_f
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto :goto_b
.end method
