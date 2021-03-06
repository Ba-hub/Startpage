.class final Landroid/support/v4/util/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 77
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I

    .line 78
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    .line 79
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_0

    .line 134
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "This container does not support retaining Map.Entry objects"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 138
    const/4 v3, 0x0

    move v0, v3

    .line 142
    :goto_0
    return v0

    .line 140
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    move-object v2, v3

    .line 141
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 142
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_0

    .line 148
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "This container does not support retaining Map.Entry objects"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 152
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 153
    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 154
    :goto_1
    xor-int/2addr v3, v4

    move v0, v3

    return v0

    .line 153
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 154
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    .line 89
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 90
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 98
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    .line 99
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    .line 100
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I

    .line 101
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 102
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v2, :cond_0

    .line 125
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This container does not support retaining Map.Entry objects"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
