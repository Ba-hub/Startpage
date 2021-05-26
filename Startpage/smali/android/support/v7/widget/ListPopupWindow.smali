.class public Landroid/support/v7/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/support/v7/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/support/v7/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 82
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    :try_start_1
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "getMaxAvailableHeight"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_1
    :try_start_2
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setEpicenterBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 100
    :goto_2
    return-void

    .line 84
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 85
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 91
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 97
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 98
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 106
    move-object v6, v0

    const/4 v7, -0x2

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 107
    move-object v6, v0

    const/4 v7, -0x2

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 110
    move-object v6, v0

    const/16 v7, 0x3ea

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 112
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 114
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 116
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 117
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 118
    move-object v6, v0

    const v7, 0x7fffffff

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 121
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 132
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    .line 133
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 134
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    .line 135
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    .line 140
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 252
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 253
    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 255
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 257
    move-object v6, v0

    move-object v7, v5

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 259
    move-object v6, v0

    move-object v7, v5

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 261
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v6, :cond_0

    .line 262
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 264
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 267
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/AppCompatPopupWindow;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 271
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 272
    return-void

    .line 269
    :cond_1
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/AppCompatPopupWindow;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/DropDownListView;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method private buildDropDown()I
    .locals 18

    .prologue
    .line 1117
    move-object/from16 v0, p0

    const/4 v11, 0x0

    move v2, v11

    .line 1119
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    if-nez v11, :cond_8

    .line 1120
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    move-object v3, v11

    .line 1128
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/ListPopupWindow$2;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1139
    move-object v11, v0

    move-object v12, v0

    move-object v13, v3

    move-object v14, v0

    iget-boolean v14, v14, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v14, :cond_6

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1140
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 1141
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1143
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1144
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1145
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setFocusable(Z)V

    .line 1146
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1147
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    new-instance v12, Landroid/support/v7/widget/ListPopupWindow$3;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/ListPopupWindow$3;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1165
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1167
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v11, :cond_1

    .line 1168
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1171
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v1, v11

    .line 1173
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object v4, v11

    .line 1174
    move-object v11, v4

    if-eqz v11, :cond_2

    .line 1177
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v3

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v11

    .line 1178
    move-object v11, v5

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1180
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v6, v11

    .line 1184
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v11, :pswitch_data_0

    .line 1196
    const-string v11, "ListPopupWindow"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid hint position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1204
    :goto_1
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v11, :cond_7

    .line 1205
    const/high16 v11, -0x80000000

    move v8, v11

    .line 1206
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v7, v11

    .line 1211
    :goto_2
    move v11, v7

    move v12, v8

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v9, v11

    .line 1212
    const/4 v11, 0x0

    move v10, v11

    .line 1213
    move-object v11, v4

    move v12, v9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 1215
    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v11

    .line 1216
    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v12, v6

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v6

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v2, v11

    .line 1219
    move-object v11, v5

    move-object v1, v11

    .line 1222
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1237
    :cond_3
    :goto_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v4, v11

    .line 1238
    move-object v11, v4

    if-eqz v11, :cond_9

    .line 1239
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v11

    .line 1240
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move v3, v11

    .line 1244
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v11, :cond_4

    .line 1245
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    iput v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1253
    :cond_4
    :goto_4
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1254
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    :goto_5
    move v5, v11

    .line 1255
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v14, v5

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v11

    move v6, v11

    .line 1257
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v11, :cond_5

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 1258
    :cond_5
    move v11, v6

    move v12, v3

    add-int/2addr v11, v12

    move v0, v11

    .line 1290
    :goto_6
    return v0

    .line 1139
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1186
    :pswitch_0
    move-object v11, v5

    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1188
    goto/16 :goto_1

    .line 1191
    :pswitch_1
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1192
    move-object v11, v5

    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    goto/16 :goto_1

    .line 1208
    :cond_7
    const/4 v11, 0x0

    move v8, v11

    .line 1209
    const/4 v11, 0x0

    move v7, v11

    goto/16 :goto_2

    .line 1224
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object v1, v11

    .line 1225
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object v3, v11

    .line 1226
    move-object v11, v3

    if-eqz v11, :cond_3

    .line 1227
    move-object v11, v3

    .line 1228
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v4, v11

    .line 1229
    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v12, v4

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v2, v11

    goto/16 :goto_3

    .line 1248
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 1249
    const/4 v11, 0x0

    move v3, v11

    goto :goto_4

    .line 1254
    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    .line 1262
    :cond_b
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v11, :pswitch_data_1

    .line 1276
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1282
    :goto_7
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move v12, v7

    const/4 v13, 0x0

    const/4 v14, -0x1

    move v15, v6

    move/from16 v16, v2

    sub-int v15, v15, v16

    const/16 v16, -0x1

    invoke-virtual/range {v11 .. v16}, Landroid/support/v7/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v11

    move v8, v11

    .line 1284
    move v11, v8

    if-lez v11, :cond_c

    .line 1285
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v11}, Landroid/support/v7/widget/DropDownListView;->getPaddingTop()I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1286
    invoke-virtual {v12}, Landroid/support/v7/widget/DropDownListView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 1287
    move v11, v2

    move v12, v3

    move v13, v9

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v2, v11

    .line 1290
    :cond_c
    move v11, v8

    move v12, v2

    add-int/2addr v11, v12

    move v0, v11

    goto/16 :goto_6

    .line 1264
    :pswitch_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1265
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/high16 v12, -0x80000000

    .line 1264
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1268
    goto :goto_7

    .line 1270
    :pswitch_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1271
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    .line 1270
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1274
    goto :goto_7

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1262
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 12

    .prologue
    .line 1377
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-object v5, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    .line 1379
    :try_start_0
    sget-object v5, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v3

    .line 1380
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1379
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 1386
    :goto_0
    return v0

    .line 1381
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1382
    const-string v5, "ListPopupWindow"

    const-string v6, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1386
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method private static isConfirmKey(I)Z
    .locals 3

    .prologue
    .line 1363
    move v0, p0

    move v1, v0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 5

    .prologue
    .line 750
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 751
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    .line 752
    move-object v3, v1

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 753
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 754
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 757
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 10

    .prologue
    .line 1367
    move-object v0, p0

    move v1, p1

    sget-object v3, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 1369
    :try_start_0
    sget-object v3, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1370
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1371
    const-string v3, "ListPopupWindow"

    const-string v4, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 4

    .prologue
    .line 809
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v1, v2

    .line 810
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 812
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 814
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/DropDownListView;->requestLayout()V

    .line 816
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 7

    .prologue
    .line 1101
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/ListPopupWindow$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/view/View;)V

    move-object v0, v2

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 913
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v3, Landroid/support/v7/widget/DropDownListView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object v0, v3

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 733
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 734
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 735
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 736
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 737
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 2
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 558
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v0, v1

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move v0, v1

    return v0
.end method

.method public getInputMethodMode()I
    .locals 2

    .prologue
    .line 781
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 909
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v0, v1

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    move v0, v1

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 858
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    const/4 v1, 0x0

    move-object v0, v1

    .line 861
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 3

    .prologue
    .line 884
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 885
    const-wide/high16 v1, -0x8000000000000000L

    move-wide v0, v1

    .line 887
    :goto_0
    return-wide v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v1

    move-wide v0, v1

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 2

    .prologue
    .line 871
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    const/4 v1, -0x1

    move v0, v1

    .line 874
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 897
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 898
    const/4 v1, 0x0

    move-object v0, v1

    .line 900
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 2

    .prologue
    .line 398
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getVerticalOffset()I
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_0

    .line 485
    const/4 v1, 0x0

    move v0, v1

    .line 487
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v0, v1

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    move v0, v1

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 3

    .prologue
    .line 831
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    move v0, v1

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 823
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 938
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 944
    move v10, v1

    const/16 v11, 0x3e

    if-eq v10, v11, :cond_8

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 945
    invoke-virtual {v10}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v10

    if-gez v10, :cond_0

    move v10, v1

    .line 946
    invoke-static {v10}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 947
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v10}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v10

    move v3, v10

    .line 950
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_0
    move v5, v10

    .line 952
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v10

    .line 955
    const v10, 0x7fffffff

    move v8, v10

    .line 956
    const/high16 v10, -0x80000000

    move v9, v10

    .line 958
    move-object v10, v6

    if-eqz v10, :cond_1

    .line 959
    move-object v10, v6

    invoke-interface {v10}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v10

    move v7, v10

    .line 960
    move v10, v7

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    .line 961
    :goto_1
    move v8, v10

    .line 962
    move v10, v7

    if-eqz v10, :cond_6

    move-object v10, v6

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    .line 963
    :goto_2
    move v9, v10

    .line 966
    :cond_1
    move v10, v5

    if-eqz v10, :cond_2

    move v10, v1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_2

    move v10, v3

    move v11, v8

    if-le v10, v11, :cond_3

    :cond_2
    move v10, v5

    if-nez v10, :cond_7

    move v10, v1

    const/16 v11, 0x14

    if-ne v10, v11, :cond_7

    move v10, v3

    move v11, v9

    if-lt v10, v11, :cond_7

    .line 970
    :cond_3
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 971
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 972
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 973
    const/4 v10, 0x1

    move v0, v10

    .line 1018
    :goto_3
    return v0

    .line 950
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 960
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 961
    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v10

    goto :goto_1

    .line 962
    :cond_6
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v11, v6

    .line 963
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v10

    goto :goto_2

    .line 977
    :cond_7
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 980
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    move v4, v10

    .line 983
    move v10, v4

    if-eqz v10, :cond_9

    .line 986
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 991
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v10}, Landroid/support/v7/widget/DropDownListView;->requestFocusFromTouch()Z

    move-result v10

    .line 992
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 994
    move v10, v1

    sparse-switch v10, :sswitch_data_0

    .line 1018
    :cond_8
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 1001
    :sswitch_0
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 1004
    :cond_9
    move v10, v5

    if-eqz v10, :cond_a

    move v10, v1

    const/16 v11, 0x14

    if-ne v10, v11, :cond_a

    .line 1007
    move v10, v3

    move v11, v9

    if-ne v10, v11, :cond_8

    .line 1008
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 1010
    :cond_a
    move v10, v5

    if-nez v10, :cond_8

    move v10, v1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_8

    move v10, v3

    move v11, v8

    if-ne v10, v11, :cond_8

    .line 1012
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 994
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1056
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1059
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 1060
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 1061
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    move-object v4, v5

    .line 1062
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1063
    move-object v5, v4

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1065
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 1077
    :goto_0
    return v0

    .line 1066
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1067
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    move-object v4, v5

    .line 1068
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 1069
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1071
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1072
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1073
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1077
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1032
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v4}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1

    .line 1033
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v3, v4

    .line 1034
    move v4, v3

    if-eqz v4, :cond_0

    move v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1037
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1039
    :cond_0
    move v4, v3

    move v0, v4

    .line 1041
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 11

    .prologue
    .line 842
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 843
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_0

    .line 844
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v2, v5

    .line 845
    move-object v5, v2

    move v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 846
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    move-object v4, v5

    .line 847
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v6, v2

    move-object v7, v3

    move v8, v1

    move-object v9, v4

    move v10, v1

    invoke-interface {v9, v10}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 849
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 851
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public postShow()V
    .locals 3

    .prologue
    .line 626
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 627
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 8
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v2, :cond_3

    .line 282
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 286
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 287
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 288
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    if-eqz v2, :cond_2

    .line 292
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    :cond_2
    return-void

    .line 283
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 284
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 462
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 432
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 433
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    return-void
.end method

.method public setContentWidth(I)V
    .locals 6

    .prologue
    .line 545
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 546
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 547
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 548
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 4

    .prologue
    .line 365
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 366
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 4

    .prologue
    .line 518
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 519
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 509
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 351
    return-void
.end method

.method public setHeight(I)V
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 568
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 477
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 478
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 4

    .prologue
    .line 772
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 773
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 4

    .prologue
    .line 923
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 924
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 408
    return-void
.end method

.method public setModal(Z)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    .line 330
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 331
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 747
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 4
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 592
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 4
    .param p1    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 603
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 307
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 612
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    move v2, v3

    .line 613
    move v3, v2

    if-eqz v3, :cond_0

    .line 614
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 616
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 617
    move v3, v2

    if-eqz v3, :cond_1

    .line 618
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 620
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 6

    .prologue
    .line 791
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v2, v3

    .line 792
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 793
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 794
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    .line 796
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 797
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/DropDownListView;->getChoiceMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 798
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/DropDownListView;->setItemChecked(IZ)V

    .line 802
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 389
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    .prologue
    .line 496
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 497
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 498
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 535
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 536
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 4

    .prologue
    .line 580
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 581
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    .line 635
    move-object v0, p0

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    move v1, v6

    .line 637
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v6

    move v2, v6

    .line 638
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v6, v7}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 640
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 642
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 645
    const/4 v6, -0x1

    move v3, v6

    .line 653
    :goto_0
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 656
    move v6, v2

    if-eqz v6, :cond_3

    move v6, v1

    :goto_1
    move v4, v6

    .line 657
    move v6, v2

    if-eqz v6, :cond_5

    .line 658
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    const/4 v7, -0x1

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 660
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 672
    :goto_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v7, :cond_9

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 674
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v10, v3

    if-gez v10, :cond_a

    const/4 v10, -0x1

    :goto_5
    move v11, v4

    if-gez v11, :cond_b

    const/4 v11, -0x1

    :goto_6
    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 726
    :cond_0
    :goto_7
    return-void

    .line 646
    :cond_1
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2

    .line 647
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move v3, v6

    goto :goto_0

    .line 649
    :cond_2
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v3, v6

    goto :goto_0

    .line 656
    :cond_3
    const/4 v6, -0x1

    goto :goto_1

    .line 658
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 662
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    const/4 v7, -0x1

    :goto_8
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 664
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    .line 662
    :cond_6
    const/4 v7, 0x0

    goto :goto_8

    .line 666
    :cond_7
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_8

    .line 667
    move v6, v1

    move v4, v6

    goto :goto_3

    .line 669
    :cond_8
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v4, v6

    goto :goto_3

    .line 672
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 674
    :cond_a
    move v10, v3

    goto :goto_5

    :cond_b
    move v11, v4

    goto :goto_6

    .line 679
    :cond_c
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_10

    .line 680
    const/4 v6, -0x1

    move v3, v6

    .line 690
    :goto_9
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_12

    .line 691
    const/4 v6, -0x1

    move v4, v6

    .line 700
    :goto_a
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 701
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 702
    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/support/v7/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 706
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v7, :cond_14

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_14

    const/4 v7, 0x1

    :goto_b
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 707
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 708
    sget-object v6, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_d

    .line 710
    :try_start_0
    sget-object v6, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 715
    :cond_d
    :goto_c
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 717
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    .line 719
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-eqz v6, :cond_e

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v6}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 720
    :cond_e
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 722
    :cond_f
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v6, :cond_0

    .line 723
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    goto/16 :goto_7

    .line 682
    :cond_10
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_11

    .line 683
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move v3, v6

    goto/16 :goto_9

    .line 685
    :cond_11
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v3, v6

    goto/16 :goto_9

    .line 693
    :cond_12
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_13

    .line 694
    move v6, v1

    move v4, v6

    goto/16 :goto_a

    .line 696
    :cond_13
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v4, v6

    goto/16 :goto_a

    .line 706
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 711
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 712
    const-string v6, "ListPopupWindow"

    const-string v7, "Could not invoke setEpicenterBounds on PopupWindow"

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_c
.end method
