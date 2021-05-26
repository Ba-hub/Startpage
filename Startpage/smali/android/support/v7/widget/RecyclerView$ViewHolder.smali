.class public abstract Landroid/support/v7/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

.field mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9410
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 9434
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 9306
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9307
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9308
    move-object v2, v0

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 9309
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 9310
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9313
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9315
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9412
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 9413
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 9415
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9419
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 9421
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 9425
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9435
    move-object v2, v1

    if-nez v2, :cond_0

    .line 9436
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "itemView may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9438
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9439
    return-void
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 9304
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->onEnteredHiddenState()V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 9304
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->onLeftHiddenState()V

    return-void
.end method

.method static synthetic access$4800(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .prologue
    .line 9304
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$4902(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;
    .locals 7

    .prologue
    .line 9304
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$5000(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .prologue
    .line 9304
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$5002(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z
    .locals 7

    .prologue
    .line 9304
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$6300(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .prologue
    .line 9304
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$6500(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .prologue
    .line 9304
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    move v0, v1

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 5

    .prologue
    .line 9653
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v1, :cond_0

    .line 9654
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 9655
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 9657
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 3

    .prologue
    .line 9790
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onEnteredHiddenState()V
    .locals 3

    .prologue
    .line 9698
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9699
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9700
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 9702
    return-void
.end method

.method private onLeftHiddenState()V
    .locals 3

    .prologue
    .line 9708
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 9710
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9711
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 3

    .prologue
    .line 9782
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 9644
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_1

    .line 9645
    move-object v2, v0

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 9650
    :cond_0
    :goto_0
    return-void

    .line 9646
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, 0x400

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    .line 9647
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 9648
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 6

    .prologue
    .line 9640
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    move v4, v1

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9641
    return-void
.end method

.method clearOldPosition()V
    .locals 3

    .prologue
    .line 9464
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9465
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9466
    return-void
.end method

.method clearPayload()V
    .locals 4

    .prologue
    .line 9660
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 9661
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9663
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x401

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9664
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 4

    .prologue
    .line 9591
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x21

    and-int/lit8 v2, v2, -0x21

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9592
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 4

    .prologue
    .line 9595
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x101

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9596
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 7

    .prologue
    .line 9442
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 9443
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 9444
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9445
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 3

    .prologue
    .line 9540
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 9541
    const/4 v1, -0x1

    move v0, v1

    .line 9543
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->access$5700(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 3

    .prologue
    .line 9568
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 2

    .prologue
    .line 9575
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    move v0, v1

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 3

    .prologue
    .line 9514
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 2

    .prologue
    .line 9558
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    move v0, v1

    return v0
.end method

.method public final getPosition()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9488
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9667
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x400

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2

    .line 9668
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 9670
    :cond_0
    sget-object v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    move-object v0, v1

    .line 9676
    :goto_0
    return-object v0

    .line 9673
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    move-object v0, v1

    goto :goto_0

    .line 9676
    :cond_2
    sget-object v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    move-object v0, v1

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 4

    .prologue
    .line 9624
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 3

    .prologue
    .line 9632
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x200

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 3

    .prologue
    .line 9616
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 3

    .prologue
    .line 9608
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 3

    .prologue
    .line 9773
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9774
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 3

    .prologue
    .line 9620
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 2

    .prologue
    .line 9579
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 3

    .prologue
    .line 9628
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x100

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 3

    .prologue
    .line 9794
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 3

    .prologue
    .line 9612
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 7

    .prologue
    .line 9448
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 9449
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9451
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 9452
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9454
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 9455
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9457
    :cond_2
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9458
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9459
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9461
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 4

    .prologue
    .line 9681
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9682
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9683
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9684
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 9685
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9686
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9687
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9688
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9689
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 9690
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9691
    return-void
.end method

.method saveOldPosition()V
    .locals 3

    .prologue
    .line 9469
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 9470
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9472
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 7

    .prologue
    .line 9636
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    move v5, v2

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v5, v1

    move v6, v2

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9637
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 6

    .prologue
    .line 9748
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9749
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v2, :cond_2

    .line 9750
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9755
    const-string v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 9765
    :cond_0
    :goto_1
    return-void

    .line 9748
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9757
    :cond_2
    move v2, v1

    if-nez v2, :cond_3

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 9758
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 9759
    :cond_3
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v2, :cond_0

    .line 9760
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V
    .locals 5

    .prologue
    .line 9603
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 9604
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 9605
    return-void
.end method

.method shouldIgnore()Z
    .locals 3

    .prologue
    .line 9475
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x80

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method stopIgnoring()V
    .locals 4

    .prologue
    .line 9599
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x81

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9600
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 9715
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ViewHolder{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 9716
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pLpos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 9718
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9719
    move-object v2, v1

    const-string v3, " scrap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v3, :cond_a

    const-string v3, "[changeScrap]"

    .line 9720
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9722
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9723
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string v3, " unbound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9724
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    const-string v3, " update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9725
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    const-string v3, " removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9726
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v1

    const-string v3, " ignored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9727
    :cond_5
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    const-string v3, " tmpDetached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9728
    :cond_6
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not recyclable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9729
    :cond_7
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v1

    const-string v3, " undefined adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9731
    :cond_8
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_9

    move-object v2, v1

    const-string v3, " no parent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9732
    :cond_9
    move-object v2, v1

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9733
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 9719
    :cond_a
    const-string v3, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method unScrap()V
    .locals 3

    .prologue
    .line 9583
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 9584
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 3

    .prologue
    .line 9587
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
