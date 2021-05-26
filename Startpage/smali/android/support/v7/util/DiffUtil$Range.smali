.class Landroid/support/v7/util/DiffUtil$Range;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 395
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 397
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 398
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 399
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 400
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 401
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 402
    return-void
.end method
