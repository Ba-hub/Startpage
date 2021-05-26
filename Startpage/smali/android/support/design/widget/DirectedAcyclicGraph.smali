.class final Landroid/support/design/widget/DirectedAcyclicGraph;
.super Ljava/lang/Object;
.source "DirectedAcyclicGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mGraph:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<TT;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mListPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mSortResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mSortTmpMarked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/Pools$SimplePool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v2, v1, Landroid/support/design/widget/DirectedAcyclicGraph;->mListPool:Landroid/support/v4/util/Pools$Pool;

    .line 33
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/SimpleArrayMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    .line 35
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    .line 36
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    return-void
.end method

.method private dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/HashSet",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 179
    :goto_0
    return-void

    .line 163
    :cond_0
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 164
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "This graph contains cyclic dependencies"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 167
    :cond_1
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 169
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 170
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 171
    const/4 v7, 0x0

    move v5, v7

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    :goto_1
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_2

    .line 172
    move-object v7, v0

    move-object v8, v4

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/support/design/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    :cond_2
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 178
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 179
    goto :goto_0
.end method

.method private getEmptyList()Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/DirectedAcyclicGraph;->mListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v1, v2

    .line 191
    move-object v2, v1

    if-nez v2, :cond_0

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 194
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private poolList(Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 199
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/DirectedAcyclicGraph;->mListPool:Landroid/support/v4/util/Pools$Pool;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v2

    .line 200
    return-void
.end method


# virtual methods
.method addEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v3, v4

    .line 74
    move-object v4, v3

    if-nez v4, :cond_2

    .line 76
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/DirectedAcyclicGraph;->getEmptyList()Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    .line 77
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 80
    :cond_2
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 81
    return-void
.end method

.method addNode(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    :cond_0
    return-void
.end method

.method clear()V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 129
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v3, v4

    .line 130
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 131
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/design/widget/DirectedAcyclicGraph;->poolList(Ljava/util/ArrayList;)V

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 135
    return-void
.end method

.method contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    return-object v0
.end method

.method getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move-object v2, v6

    .line 102
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 103
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v5, v6

    .line 104
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    move-object v6, v2

    if-nez v6, :cond_0

    .line 106
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 108
    :cond_0
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 102
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_2
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method

.method getSortedList()Ljava/util/ArrayList;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 148
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 151
    const/4 v3, 0x0

    move v1, v3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    move v2, v3

    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 152
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    move-object v0, v3

    return-object v0
.end method

.method hasOutgoingEdges(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 116
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v4, v5

    .line 117
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    const/4 v5, 0x1

    move v0, v5

    .line 121
    :goto_1
    return v0

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method size()I
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/DirectedAcyclicGraph;->mGraph:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    move v0, v1

    return v0
.end method
