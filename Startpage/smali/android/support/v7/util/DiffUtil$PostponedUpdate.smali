.class Landroid/support/v7/util/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 6

    .prologue
    .line 850
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 851
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 852
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 853
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    .line 854
    return-void
.end method
