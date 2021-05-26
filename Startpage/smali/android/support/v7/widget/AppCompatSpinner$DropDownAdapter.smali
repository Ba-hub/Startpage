.class Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1    # Landroid/widget/SpinnerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 595
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 596
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 598
    move-object v4, v1

    instance-of v4, v4, Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 599
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Landroid/widget/ListAdapter;

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 602
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 603
    invoke-static {}, Landroid/support/v7/widget/AppCompatSpinner;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    instance-of v4, v4, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v4, :cond_2

    .line 604
    move-object v4, v1

    check-cast v4, Landroid/widget/ThemedSpinnerAdapter;

    move-object v3, v4

    .line 606
    move-object v4, v3

    invoke-interface {v4}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move-object v5, v2

    if-eq v4, v5, :cond_1

    .line 607
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Landroid/support/v7/widget/ThemedSpinnerAdapter;

    if-eqz v4, :cond_1

    .line 610
    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/ThemedSpinnerAdapter;

    move-object v3, v4

    .line 611
    move-object v4, v3

    invoke-interface {v4}, Landroid/support/v7/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    if-nez v4, :cond_1

    .line 612
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Landroid/support/v7/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    .line 660
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    move-object v1, v2

    .line 661
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 662
    move-object v2, v1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v2

    move v0, v2

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 635
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 636
    :goto_0
    move-object v0, v4

    return-object v0

    .line 635
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    .line 636
    invoke-interface {v4, v5, v6, v7}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 623
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 627
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    move-wide v0, v2

    return-wide v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 682
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 631
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 686
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    .line 640
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

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

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 690
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->getCount()I

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

.method public isEnabled(I)Z
    .locals 5

    .prologue
    .line 673
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    move-object v2, v3

    .line 674
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 675
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    move v0, v3

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4

    .prologue
    .line 644
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    .line 645
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 647
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4

    .prologue
    .line 650
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    .line 651
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 653
    :cond_0
    return-void
.end method
