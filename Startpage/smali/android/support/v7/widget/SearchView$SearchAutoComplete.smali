.class public Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.super Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Landroid/support/v7/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1871
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1872
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 1875
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1876
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 1879
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1880
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1881
    return-void
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z
    .locals 2

    .prologue
    .line 1865
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private getSearchViewTextMinWidthDp()I
    .locals 6

    .prologue
    .line 1991
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object v1, v4

    .line 1992
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v4

    move v2, v4

    .line 1993
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v4

    move v3, v4

    .line 1995
    move v4, v2

    const/16 v5, 0x3c0

    if-lt v4, v5, :cond_0

    move v4, v3

    const/16 v5, 0x2d0

    if-lt v4, v5, :cond_0

    move-object v4, v1

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1997
    const/16 v4, 0x100

    move v0, v4

    .line 2001
    :goto_0
    return v0

    .line 1998
    :cond_0
    move v4, v2

    const/16 v5, 0x258

    if-ge v4, v5, :cond_1

    move v4, v2

    const/16 v5, 0x280

    if-lt v4, v5, :cond_2

    move v4, v3

    const/16 v5, 0x1e0

    if-lt v4, v5, :cond_2

    .line 1999
    :cond_1
    const/16 v4, 0xc0

    move v0, v4

    goto :goto_0

    .line 2001
    :cond_2
    const/16 v4, 0xa0

    move v0, v4

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 2

    .prologue
    .line 1905
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

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


# virtual methods
.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 1958
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->enoughToFilter()Z

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

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 1885
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onFinishInflate()V

    .line 1886
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    move-object v1, v2

    .line 1887
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v0

    .line 1888
    invoke-direct {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v1

    .line 1887
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    .line 1889
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 1948
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1949
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->onTextFocusChanged()V

    .line 1950
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1963
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 1966
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1967
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    move-object v3, v4

    .line 1968
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1969
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1971
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 1984
    :goto_0
    return v0

    .line 1972
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1973
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    move-object v3, v4

    .line 1974
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 1975
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1977
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1978
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1979
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v7/widget/SearchView;->access$2100(Landroid/support/v7/widget/SearchView;Z)V

    .line 1980
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1984
    :cond_3
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    .prologue
    .line 1932
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1934
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1935
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    .line 1936
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object v2, v3

    .line 1937
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v3

    .line 1940
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1941
    sget-object v3, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1944
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1924
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1914
    return-void
.end method

.method setSearchView(Landroid/support/v7/widget/SearchView;)V
    .locals 4

    .prologue
    .line 1892
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 1893
    return-void
.end method

.method public setThreshold(I)V
    .locals 4

    .prologue
    .line 1897
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setThreshold(I)V

    .line 1898
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1899
    return-void
.end method
