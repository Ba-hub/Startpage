.class public Landroid/support/v7/util/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# static fields
.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_CHANGE:I = 0x3

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Landroid/support/v7/util/ListUpdateCallback;


# direct methods
.method public constructor <init>(Landroid/support/v7/util/ListUpdateCallback;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 40
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 41
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 42
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    if-nez v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 57
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 69
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 70
    goto :goto_0

    .line 59
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 60
    goto :goto_1

    .line 62
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 63
    goto :goto_1

    .line 65
    :pswitch_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 108
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v6, v7

    if-gt v5, v6, :cond_0

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    move-object v6, v3

    if-ne v5, v6, :cond_0

    .line 112
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v5, v6

    move v4, v5

    .line 113
    move-object v5, v0

    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 114
    move-object v5, v0

    move v6, v4

    move v7, v1

    move v8, v2

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 118
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 119
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 120
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 121
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 122
    goto :goto_0
.end method

.method public onInserted(II)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    .line 76
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 77
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 81
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 82
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 83
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 84
    goto :goto_0
.end method

.method public onMoved(II)V
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 103
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 104
    return-void
.end method

.method public onRemoved(II)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    move v4, v1

    if-lt v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    .line 90
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 91
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 95
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 96
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 97
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 98
    goto :goto_0
.end method
