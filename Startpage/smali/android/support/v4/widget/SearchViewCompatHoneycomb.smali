.class Landroid/support/v4/widget/SearchViewCompatHoneycomb;
.super Ljava/lang/Object;
.source "SearchViewCompatHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;,
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static checkIfLegalArg(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "searchView must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroid/widget/SearchView;

    if-nez v1, :cond_1

    .line 37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "searchView must be an instance ofandroid.widget.SearchView"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    return-void
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isQueryRefinementEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isSubmitButtonEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V

    move-object v0, v1

    return-object v0
.end method

.method public static newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V

    move-object v0, v1

    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    new-instance v1, Landroid/widget/SearchView;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 107
    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 131
    return-void
.end method

.method public static setOnCloseListener(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    check-cast v3, Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 91
    return-void
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    check-cast v3, Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 78
    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    check-cast v3, Landroid/widget/SearchView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 99
    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 123
    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    check-cast v4, Landroid/widget/SearchView;

    move-object v2, v4

    .line 57
    move-object v4, v2

    .line 58
    invoke-virtual {v4}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    move-object v3, v4

    .line 59
    move-object v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 60
    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 115
    return-void
.end method
