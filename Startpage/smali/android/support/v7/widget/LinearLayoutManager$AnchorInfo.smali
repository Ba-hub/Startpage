.class Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field mValid:Z

.field final synthetic this$0:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 4

    .prologue
    .line 2176
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2177
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 2178
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 6

    .prologue
    .line 2170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method private isViewValidAsAnchor(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 6

    .prologue
    .line 2208
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v3, v4

    .line 2209
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    if-ltz v4, :cond_0

    move-object v4, v3

    .line 2210
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 3

    .prologue
    .line 2192
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2193
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    .line 2194
    :goto_0
    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2195
    return-void

    .line 2193
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2194
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    goto :goto_0
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2261
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v2, :cond_0

    .line 2262
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2263
    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2268
    :goto_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2269
    return-void

    .line 2265
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 17

    .prologue
    .line 2214
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v12

    move v2, v12

    .line 2215
    move v12, v2

    if-ltz v12, :cond_0

    .line 2216
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 2258
    :goto_0
    return-void

    .line 2219
    :cond_0
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    move-object v14, v1

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    iput v13, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2220
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v12, :cond_2

    .line 2221
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    move v13, v2

    sub-int/2addr v12, v13

    move v3, v12

    .line 2222
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    move v4, v12

    .line 2223
    move v12, v3

    move v13, v4

    sub-int/2addr v12, v13

    move v5, v12

    .line 2224
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v13}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v13

    move v14, v5

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2226
    move v12, v5

    if-lez v12, :cond_1

    .line 2227
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    move v6, v12

    .line 2228
    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move v13, v6

    sub-int/2addr v12, v13

    move v7, v12

    .line 2229
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    move v8, v12

    .line 2230
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    move v13, v8

    sub-int/2addr v12, v13

    move v9, v12

    .line 2232
    move v12, v8

    move v13, v9

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/2addr v12, v13

    move v10, v12

    .line 2233
    move v12, v7

    move v13, v10

    sub-int/2addr v12, v13

    move v11, v12

    .line 2234
    move v12, v11

    if-gez v12, :cond_1

    .line 2236
    move-object v12, v0

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    iget v13, v13, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move v14, v5

    move v15, v11

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2258
    :cond_1
    :goto_1
    goto/16 :goto_0

    .line 2240
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    move v3, v12

    .line 2241
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v13}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v13

    sub-int/2addr v12, v13

    move v4, v12

    .line 2242
    move-object v12, v0

    move v13, v3

    iput v13, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2243
    move v12, v4

    if-lez v12, :cond_1

    .line 2244
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v1

    .line 2245
    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    move v5, v12

    .line 2246
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    move v13, v2

    sub-int/2addr v12, v13

    move v6, v12

    .line 2248
    move v12, v6

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v13, v13, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object v14, v1

    .line 2249
    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    sub-int/2addr v12, v13

    move v7, v12

    .line 2250
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v12, v12, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v12}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    const/4 v13, 0x0

    move v14, v7

    .line 2251
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int/2addr v12, v13

    move v8, v12

    .line 2252
    move v12, v8

    move v13, v5

    sub-int/2addr v12, v13

    move v9, v12

    .line 2253
    move v12, v9

    if-gez v12, :cond_1

    .line 2254
    move-object v12, v0

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    iget v13, v13, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move v14, v4

    move v15, v9

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_1
.end method

.method reset()V
    .locals 3

    .prologue
    .line 2181
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2182
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2183
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2184
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 2185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2199
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnchorInfo{mPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCoordinate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLayoutFromEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
