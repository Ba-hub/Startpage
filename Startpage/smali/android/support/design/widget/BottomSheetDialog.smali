.class public Landroid/support/design/widget/BottomSheetDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "BottomSheetDialog.java"


# instance fields
.field private mBehavior:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCanceledOnTouchOutsideSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/design/widget/BottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    .line 42
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 163
    move-object v3, v0

    new-instance v4, Landroid/support/design/widget/BottomSheetDialog$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/design/widget/BottomSheetDialog$2;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    iput-object v4, v3, Landroid/support/design/widget/BottomSheetDialog;->mBottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 53
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    move-result v3

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    .line 42
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 163
    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/BottomSheetDialog$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/BottomSheetDialog$2;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    iput-object v5, v4, Landroid/support/design/widget/BottomSheetDialog;->mBottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 59
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    move-result v4

    .line 60
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomSheetDialog;)Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomSheetDialog;)Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/BottomSheetDialog;->shouldWindowCloseOnTouchOutside()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 8

    .prologue
    .line 149
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-nez v3, :cond_0

    .line 151
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 152
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/design/R$attr;->bottomSheetDialogTheme:I

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v1, v3

    .line 160
    :cond_0
    :goto_0
    move v3, v1

    move v0, v3

    return v0

    .line 157
    :cond_1
    sget v3, Landroid/support/design/R$style;->Theme_Design_Light_BottomSheetDialog:I

    move v1, v3

    goto :goto_0
.end method

.method private shouldWindowCloseOnTouchOutside()Z
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutsideSet:Z

    if-nez v2, :cond_0

    .line 135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 136
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 143
    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutsideSet:Z

    .line 145
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    move v0, v2

    return v0

    .line 138
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const v6, 0x101035b

    aput v6, v4, v5

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    move-object v1, v2

    .line 140
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 141
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 11

    .prologue
    .line 107
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Landroid/support/design/R$layout;->design_bottom_sheet_dialog:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout;

    move-object v4, v6

    .line 109
    move v6, v1

    if-eqz v6, :cond_0

    move-object v6, v2

    if-nez v6, :cond_0

    .line 110
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/BottomSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    move v7, v1

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    move-object v2, v6

    .line 112
    :cond_0
    move-object v6, v4

    sget v7, Landroid/support/design/R$id;->design_bottom_sheet:I

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    move-object v5, v6

    .line 113
    move-object v6, v0

    move-object v7, v5

    invoke-static {v7}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/BottomSheetDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 114
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/BottomSheetDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/BottomSheetDialog;->mBottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    .line 115
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/BottomSheetDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    invoke-virtual {v6, v7}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 116
    move-object v6, v3

    if-nez v6, :cond_1

    .line 117
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 122
    :goto_0
    move-object v6, v4

    sget v7, Landroid/support/design/R$id;->touch_outside:I

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/support/design/widget/BottomSheetDialog$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/design/widget/BottomSheetDialog$1;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    move-object v6, v4

    move-object v0, v6

    return-object v0

    .line 119
    :cond_1
    move-object v6, v5

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 73
    return-void
.end method

.method public setCancelable(Z)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->setCancelable(Z)V

    .line 88
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 89
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    .line 90
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    if-nez v2, :cond_0

    .line 100
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetDialog;->mCancelable:Z

    .line 102
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutside:Z

    .line 103
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/BottomSheetDialog;->mCanceledOnTouchOutsideSet:Z

    .line 104
    return-void
.end method

.method public setContentView(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v3

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v3

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 83
    return-void
.end method
