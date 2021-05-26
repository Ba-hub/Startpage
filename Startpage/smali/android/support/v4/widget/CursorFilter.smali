.class Landroid/support/v4/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CursorFilter$CursorFilterClient;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/widget/Filter;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    .line 41
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 52
    new-instance v4, Landroid/widget/Filter$FilterResults;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    move-object v3, v4

    .line 53
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 54
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    iput v5, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 60
    :goto_0
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 57
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 58
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v4}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 67
    move-object v4, v2

    iget-object v4, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object v4, v2

    iget-object v4, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    move-object v5, v3

    if-eq v4, v5, :cond_0

    .line 68
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/CursorFilter;->mClient:Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

    move-object v5, v2

    iget-object v5, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v5, Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/support/v4/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    .line 70
    :cond_0
    return-void
.end method
