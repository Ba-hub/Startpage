.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;,
        Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;,
        Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;,
        Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCacheLock:Ljava/lang/Object;

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 100
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 116
    const/4 v0, 0x7

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 130
    const/4 v0, 0x7

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_alpha:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 173
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    .line 174
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v2, v1, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 744
    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 486
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-nez v3, :cond_0

    .line 487
    move-object v3, v0

    new-instance v4, Landroid/support/v4/util/ArrayMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 489
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 490
    return-void
.end method

.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    move-object v5, v9

    .line 411
    move-object v9, v5

    if-eqz v9, :cond_1

    .line 412
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    monitor-enter v9

    .line 413
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/util/LongSparseArray;

    move-object v7, v9

    .line 414
    move-object v9, v7

    if-nez v9, :cond_0

    .line 415
    new-instance v9, Landroid/support/v4/util/LongSparseArray;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move-object v7, v9

    .line 416
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    move-object v10, v1

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 418
    :cond_0
    move-object v9, v7

    move-wide v10, v2

    new-instance v12, Ljava/lang/ref/WeakReference;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v5

    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 419
    move-object v9, v6

    monitor-exit v9

    .line 420
    const/4 v9, 0x1

    move v0, v9

    .line 422
    :goto_0
    return v0

    .line 419
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9

    .line 422
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v5, :cond_0

    .line 575
    move-object v5, v0

    new-instance v6, Ljava/util/WeakHashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 577
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move-object v4, v5

    .line 578
    move-object v5, v4

    if-nez v5, :cond_1

    .line 579
    new-instance v5, Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v5

    .line 580
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 582
    :cond_1
    move-object v5, v4

    move v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 583
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 8

    .prologue
    .line 499
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 500
    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 501
    const/4 v6, 0x1

    move v0, v6

    .line 504
    :goto_1
    return v0

    .line 499
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v3, :cond_0

    .line 723
    :goto_0
    return-void

    .line 716
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 717
    move-object v3, v0

    move-object v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_vector_test:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 718
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-static {v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 719
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 720
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 723
    :cond_2
    goto :goto_0
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 594
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 605
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v9, 0x4

    new-array v9, v9, [[I

    move-object v4, v9

    .line 606
    const/4 v9, 0x4

    new-array v9, v9, [I

    move-object v5, v9

    .line 607
    const/4 v9, 0x0

    move v6, v9

    .line 609
    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    move v7, v9

    .line 610
    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    move v8, v9

    .line 613
    move-object v9, v4

    move v10, v6

    sget-object v11, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v11, v9, v10

    .line 614
    move-object v9, v5

    move v10, v6

    move-object v11, v3

    if-nez v11, :cond_0

    move v11, v8

    :goto_0
    aput v11, v9, v10

    .line 615
    add-int/lit8 v6, v6, 0x1

    .line 617
    move-object v9, v4

    move v10, v6

    sget-object v11, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v11, v9, v10

    .line 618
    move-object v9, v5

    move v10, v6

    move v11, v7

    move-object v12, v3

    if-nez v12, :cond_1

    move v12, v2

    :goto_1
    invoke-static {v11, v12}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v11

    aput v11, v9, v10

    .line 620
    add-int/lit8 v6, v6, 0x1

    .line 622
    move-object v9, v4

    move v10, v6

    sget-object v11, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v11, v9, v10

    .line 623
    move-object v9, v5

    move v10, v6

    move v11, v7

    move-object v12, v3

    if-nez v12, :cond_2

    move v12, v2

    :goto_2
    invoke-static {v11, v12}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v11

    aput v11, v9, v10

    .line 625
    add-int/lit8 v6, v6, 0x1

    .line 628
    move-object v9, v4

    move v10, v6

    sget-object v11, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v11, v9, v10

    .line 629
    move-object v9, v5

    move v10, v6

    move-object v11, v3

    if-nez v11, :cond_3

    move v11, v2

    :goto_3
    aput v11, v9, v10

    .line 630
    add-int/lit8 v6, v6, 0x1

    .line 632
    new-instance v9, Landroid/content/res/ColorStateList;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v9

    return-object v0

    .line 614
    :cond_0
    move-object v11, v3

    move-object v12, v4

    move v13, v6

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    goto :goto_0

    .line 618
    :cond_1
    move-object v12, v3

    move-object v13, v4

    move v14, v6

    aget-object v13, v13, v14

    const/4 v14, 0x0

    .line 619
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    goto :goto_1

    .line 623
    :cond_2
    move-object v12, v3

    move-object v13, v4

    move v14, v6

    aget-object v13, v13, v14

    const/4 v14, 0x0

    .line 624
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    goto :goto_2

    .line 629
    :cond_3
    move-object v11, v3

    move-object v12, v4

    move v13, v6

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    goto :goto_3
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    move-object v3, v0

    iget v3, v3, Landroid/util/TypedValue;->data:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    move-wide v0, v1

    return-wide v0
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 599
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    sget v6, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    .line 600
    invoke-static {v5, v6}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    move-object v6, v2

    .line 599
    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 587
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    sget v6, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    .line 588
    invoke-static {v5, v6}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    move-object v6, v2

    .line 587
    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v7, :cond_0

    .line 225
    move-object v7, v0

    new-instance v8, Landroid/util/TypedValue;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    iput-object v8, v7, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 227
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    move-object v3, v7

    .line 228
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move v8, v2

    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 229
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v7

    move-wide v4, v7

    .line 231
    move-object v7, v0

    move-object v8, v1

    move-wide v9, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v6, v7

    .line 232
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 234
    move-object v7, v6

    move-object v0, v7

    .line 251
    :goto_0
    return-object v0

    .line 238
    :cond_1
    move v7, v2

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne v7, v8, :cond_2

    .line 239
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v0

    move-object v13, v1

    sget v14, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 240
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move-object v12, v0

    move-object v13, v1

    sget v14, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 241
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v6, v7

    .line 245
    :cond_2
    move-object v7, v6

    if-eqz v7, :cond_3

    .line 246
    move-object v7, v6

    move-object v8, v3

    iget v8, v8, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 248
    move-object v7, v0

    move-object v8, v1

    move-wide v9, v4

    move-object v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    move-result v7

    .line 251
    :cond_3
    move-object v7, v6

    move-object v0, v7

    goto :goto_0
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 7

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 683
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 686
    :goto_0
    return-object v0

    .line 685
    :cond_1
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v3, v4

    .line 686
    move v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static get()Landroid/support/v7/widget/AppCompatDrawableManager;
    .locals 3

    .prologue
    .line 79
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 81
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V

    .line 83
    :cond_0
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    return-object v0
.end method

.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v4, v10

    monitor-enter v9

    .line 387
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    move-object v10, v1

    .line 388
    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/util/LongSparseArray;

    move-object v5, v9

    .line 389
    move-object v9, v5

    if-nez v9, :cond_0

    .line 390
    const/4 v9, 0x0

    move-object v10, v4

    monitor-exit v10

    move-object v0, v9

    .line 405
    :goto_0
    return-object v0

    .line 393
    :cond_0
    move-object v9, v5

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    move-object v6, v9

    .line 394
    move-object v9, v6

    if-eqz v9, :cond_2

    .line 396
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v7, v9

    .line 397
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 398
    move-object v9, v7

    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v10, v4

    monitor-exit v10

    move-object v0, v9

    goto :goto_0

    .line 401
    :cond_1
    move-object v9, v5

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 404
    :cond_2
    move-object v9, v4

    monitor-exit v9

    .line 405
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v4

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 8

    .prologue
    .line 691
    move v0, p0

    move-object v1, p1

    sget-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    move-object v2, v3

    .line 693
    move-object v3, v2

    if-nez v3, :cond_0

    .line 695
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    .line 696
    sget-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    .line 699
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 565
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-eqz v4, :cond_1

    .line 566
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move-object v3, v4

    .line 567
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    :goto_0
    move-object v0, v4

    .line 569
    :goto_1
    return-object v0

    .line 567
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 569
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 4

    .prologue
    .line 508
    move v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 510
    move v2, v0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v2, v3, :cond_0

    .line 511
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v1, v2

    .line 514
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .locals 8
    .param p0    # Landroid/support/v7/widget/AppCompatDrawableManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v2

    .line 88
    move v2, v1

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 91
    move-object v2, v0

    const-string v3, "vector"

    new-instance v4, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>(Landroid/support/v7/widget/AppCompatDrawableManager$1;)V

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 93
    move v2, v1

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 95
    move-object v2, v0

    const-string v3, "animated-vector"

    new-instance v4, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;-><init>(Landroid/support/v7/widget/AppCompatDrawableManager$1;)V

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 98
    :cond_0
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 726
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-nez v1, :cond_0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    move-object v2, v0

    .line 727
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v13, :cond_b

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v13}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 302
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    if-eqz v13, :cond_3

    .line 303
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    move v14, v2

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v3, v13

    .line 304
    const-string v13, "appcompat_skip_skip"

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object v13, v3

    if-eqz v13, :cond_1

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    move-object v14, v3

    .line 305
    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    .line 312
    :cond_0
    const/4 v13, 0x0

    move-object v0, v13

    .line 382
    :goto_0
    return-object v0

    .line 319
    :cond_1
    :goto_1
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v13, :cond_2

    .line 320
    move-object v13, v0

    new-instance v14, Landroid/util/TypedValue;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    iput-object v14, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 322
    :cond_2
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    move-object v3, v13

    .line 323
    move-object v13, v1

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object v4, v13

    .line 324
    move-object v13, v4

    move v14, v2

    move-object v15, v3

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 326
    move-object v13, v3

    invoke-static {v13}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v13

    move-wide v5, v13

    .line 328
    move-object v13, v0

    move-object v14, v1

    move-wide v15, v5

    invoke-direct/range {v13 .. v16}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v7, v13

    .line 329
    move-object v13, v7

    if-eqz v13, :cond_4

    .line 335
    move-object v13, v7

    move-object v0, v13

    goto :goto_0

    .line 316
    :cond_3
    move-object v13, v0

    new-instance v14, Landroid/util/SparseArray;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    iput-object v14, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    goto :goto_1

    .line 338
    :cond_4
    move-object v13, v3

    iget-object v13, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v13, :cond_6

    move-object v13, v3

    iget-object v13, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 341
    move-object v13, v4

    move v14, v2

    :try_start_0
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    move-object v8, v13

    .line 342
    move-object v13, v8

    invoke-static {v13}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    move-object v9, v13

    .line 344
    :goto_2
    move-object v13, v8

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move/from16 v18, v13

    move/from16 v13, v18

    move/from16 v14, v18

    move v10, v14

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    move v13, v10

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    goto :goto_2

    .line 348
    :cond_5
    move v13, v10

    const/4 v14, 0x2

    if-eq v13, v14, :cond_8

    .line 349
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const-string v15, "No start tag found"

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 371
    const-string v13, "AppCompatDrawableManager"

    const-string v14, "Exception while inflating drawable"

    move-object v15, v8

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v13

    .line 374
    :cond_6
    :goto_3
    move-object v13, v7

    if-nez v13, :cond_7

    .line 377
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    move v14, v2

    const-string v15, "appcompat_skip_skip"

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 379
    :cond_7
    move-object v13, v7

    move-object v0, v13

    goto/16 :goto_0

    .line 352
    :cond_8
    move-object v13, v8

    :try_start_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 354
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    move v14, v2

    move-object v15, v11

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 357
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    move-object v14, v11

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    move-object v12, v13

    .line 358
    move-object v13, v12

    if-eqz v13, :cond_9

    .line 359
    move-object v13, v12

    move-object v14, v1

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    .line 360
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    .line 359
    invoke-interface/range {v13 .. v17}, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v7, v13

    .line 362
    :cond_9
    move-object v13, v7

    if-eqz v13, :cond_a

    .line 364
    move-object v13, v7

    move-object v14, v3

    iget v14, v14, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 365
    move-object v13, v0

    move-object v14, v1

    move-wide v15, v5

    move-object/from16 v17, v7

    invoke-direct/range {v13 .. v17}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-eqz v13, :cond_a

    .line 372
    :cond_a
    goto :goto_3

    .line 382
    :cond_b
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0
.end method

.method private removeDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 494
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 496
    :cond_0
    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 703
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-static {v3}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 706
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    if-nez v5, :cond_1

    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-static {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 707
    return-void

    .line 706
    :cond_1
    move-object v5, v2

    goto :goto_0
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object v5, v7

    .line 257
    move-object v7, v5

    if-eqz v7, :cond_2

    .line 259
    move-object v7, v4

    invoke-static {v7}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 260
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 262
    :cond_0
    move-object v7, v4

    invoke-static {v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 263
    move-object v7, v4

    move-object v8, v5

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 266
    move v7, v2

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    move-object v6, v7

    .line 267
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 268
    move-object v7, v4

    move-object v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 297
    :cond_1
    :goto_0
    move-object v7, v4

    move-object v0, v7

    return-object v0

    .line 270
    :cond_2
    move v7, v2

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I

    if-ne v7, v8, :cond_3

    .line 271
    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v6, v7

    .line 272
    move-object v7, v6

    const/high16 v8, 0x1020000

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 273
    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 272
    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 274
    move-object v7, v6

    const v8, 0x102000f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 275
    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 274
    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    move-object v7, v6

    const v8, 0x102000d

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 277
    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 276
    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 278
    goto :goto_0

    :cond_3
    move v7, v2

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq v7, v8, :cond_4

    move v7, v2

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq v7, v8, :cond_4

    move v7, v2

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne v7, v8, :cond_5

    .line 281
    :cond_4
    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v6, v7

    .line 282
    move-object v7, v6

    const/high16 v8, 0x1020000

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 283
    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 282
    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    move-object v7, v6

    const v8, 0x102000f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 286
    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 285
    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 287
    move-object v7, v6

    const v8, 0x102000d

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 288
    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 287
    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 289
    goto/16 :goto_0

    .line 290
    :cond_5
    move-object v7, v1

    move v8, v2

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v6, v7

    .line 291
    move v7, v6

    if-nez v7, :cond_1

    move v7, v3

    if-eqz v7, :cond_1

    .line 294
    const/4 v7, 0x0

    move-object v4, v7

    goto/16 :goto_0
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .locals 7

    .prologue
    .line 658
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-static {v3}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 659
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 660
    const-string v3, "AppCompatDrawableManager"

    const-string v4, "Mutated drawable is not the same instance as the input."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 678
    :goto_0
    return-void

    .line 664
    :cond_0
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v3, :cond_1

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_5

    .line 665
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_1
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v5, :cond_4

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 673
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v3, v4, :cond_2

    .line 676
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 678
    :cond_2
    goto :goto_0

    .line 665
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 670
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 439
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v8, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v8

    .line 440
    const/4 v8, 0x0

    move v4, v8

    .line 441
    const/4 v8, 0x0

    move v5, v8

    .line 442
    const/4 v8, -0x1

    move v6, v8

    .line 444
    sget-object v8, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    move v9, v1

    invoke-static {v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 445
    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    move v5, v8

    .line 446
    const/4 v8, 0x1

    move v4, v8

    .line 463
    :cond_0
    :goto_0
    move v8, v4

    if-eqz v8, :cond_7

    .line 464
    move-object v8, v2

    invoke-static {v8}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 465
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v2, v8

    .line 468
    :cond_1
    move-object v8, v0

    move v9, v5

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    move v7, v8

    .line 469
    move-object v8, v2

    move v9, v7

    move-object v10, v3

    invoke-static {v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 471
    move v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 472
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 480
    :cond_2
    const/4 v8, 0x1

    move v0, v8

    .line 482
    :goto_1
    return v0

    .line 447
    :cond_3
    sget-object v8, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    move v9, v1

    invoke-static {v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 448
    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    move v5, v8

    .line 449
    const/4 v8, 0x1

    move v4, v8

    goto :goto_0

    .line 450
    :cond_4
    sget-object v8, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    move v9, v1

    invoke-static {v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 451
    const v8, 0x1010031

    move v5, v8

    .line 452
    const/4 v8, 0x1

    move v4, v8

    .line 453
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v8

    goto :goto_0

    .line 454
    :cond_5
    move v8, v1

    sget v9, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne v8, v9, :cond_6

    .line 455
    const v8, 0x1010030

    move v5, v8

    .line 456
    const/4 v8, 0x1

    move v4, v8

    .line 457
    const v8, 0x42233333    # 40.8f

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v6, v8

    goto :goto_0

    .line 458
    :cond_6
    move v8, v1

    sget v9, Landroid/support/v7/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne v8, v9, :cond_0

    .line 459
    const v8, 0x1010031

    move v5, v8

    .line 460
    const/4 v8, 0x1

    move v4, v8

    goto :goto_0

    .line 482
    :cond_7
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 189
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 190
    move-object v5, v4

    if-nez v5, :cond_0

    .line 191
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 193
    :cond_0
    move-object v5, v4

    if-nez v5, :cond_1

    .line 194
    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 197
    :cond_1
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 199
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 201
    :cond_2
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 203
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_3
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v3

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 528
    move v6, v4

    if-eqz v6, :cond_3

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_1
    move-object v5, v6

    .line 530
    move-object v6, v5

    if-nez v6, :cond_1

    .line 532
    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne v6, v7, :cond_4

    .line 533
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {v6, v7}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    .line 557
    :cond_0
    :goto_2
    move v6, v4

    if-eqz v6, :cond_1

    move-object v6, v5

    if-eqz v6, :cond_1

    .line 558
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v5

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 561
    :cond_1
    move-object v6, v5

    move-object v0, v6

    return-object v0

    .line 525
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 528
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 534
    :cond_4
    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne v6, v7, :cond_5

    .line 535
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {v6, v7}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto :goto_2

    .line 536
    :cond_5
    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v6, v7, :cond_6

    .line 537
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$color;->abc_tint_switch_thumb:I

    invoke-static {v6, v7}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto :goto_2

    .line 538
    :cond_6
    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne v6, v7, :cond_7

    .line 539
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto :goto_2

    .line 540
    :cond_7
    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne v6, v7, :cond_8

    .line 541
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto :goto_2

    .line 542
    :cond_8
    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne v6, v7, :cond_9

    .line 543
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto :goto_2

    .line 544
    :cond_9
    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq v6, v7, :cond_a

    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne v6, v7, :cond_b

    .line 546
    :cond_a
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {v6, v7}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto :goto_2

    .line 547
    :cond_b
    sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    move v7, v2

    invoke-static {v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 548
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v6, v7}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto :goto_2

    .line 549
    :cond_c
    sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    move v7, v2

    invoke-static {v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 550
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$color;->abc_tint_default:I

    invoke-static {v6, v7}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto/16 :goto_2

    .line 551
    :cond_d
    sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    move v7, v2

    invoke-static {v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 552
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {v6, v7}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto/16 :goto_2

    .line 553
    :cond_e
    move v6, v2

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne v6, v7, :cond_0

    .line 554
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {v6, v7}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v2, v6

    monitor-enter v5

    .line 210
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/util/LongSparseArray;

    move-object v3, v5

    .line 211
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 213
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 215
    :cond_0
    move-object v5, v2

    monitor-exit v5

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method onDrawableLoadedFromResources(Landroid/content/Context;Landroid/support/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/VectorEnabledTintResources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 428
    move-object v5, v4

    if-nez v5, :cond_0

    .line 429
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 431
    :cond_0
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 432
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    const/4 v8, 0x0

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    .line 434
    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method
