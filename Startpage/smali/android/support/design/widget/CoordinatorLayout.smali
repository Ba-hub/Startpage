.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CoordinatorLayout$SavedState;,
        Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroid/support/design/widget/CoordinatorLayout$LayoutParams;,
        Landroid/support/design/widget/CoordinatorLayout$Behavior;,
        Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;,
        Landroid/support/design/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EVENT_NESTED_SCROLL:I = 0x1

.field private static final EVENT_PRE_DRAW:I = 0x0

.field private static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/support/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/DirectedAcyclicGraph",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private mNestedScrollingDirectChild:Landroid/view/View;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRect3:Landroid/graphics/Rect;

.field private final mTempRect4:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 111
    const-class v1, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    move-object v0, v1

    .line 112
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 120
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 126
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 131
    new-instance v1, Ljava/lang/ThreadLocal;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    return-void

    .line 112
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 122
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .prologue
    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 147
    move-object v10, v0

    new-instance v11, Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/support/design/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    .line 149
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 150
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 151
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 152
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 153
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 154
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect4:Landroid/graphics/Rect;

    .line 155
    move-object v10, v0

    const/4 v11, 0x2

    new-array v11, v11, [I

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 178
    move-object v10, v0

    new-instance v11, Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 192
    move-object v10, v1

    invoke-static {v10}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 194
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroid/support/design/R$styleable;->CoordinatorLayout:[I

    move v13, v3

    sget v14, Landroid/support/design/R$style;->Widget_Design_CoordinatorLayout:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v4, v10

    .line 196
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->CoordinatorLayout_keylines:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    move v5, v10

    .line 197
    move v10, v5

    if-eqz v10, :cond_0

    .line 198
    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v6, v10

    .line 199
    move-object v10, v0

    move-object v11, v6

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 200
    move-object v10, v6

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    move v7, v10

    .line 201
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v10, v10

    move v8, v10

    .line 202
    const/4 v10, 0x0

    move v9, v10

    :goto_0
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_0

    .line 203
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    move v11, v9

    move-object v15, v10

    move/from16 v16, v11

    move-object v10, v15

    move/from16 v11, v16

    move-object v12, v15

    move/from16 v13, v16

    aget v12, v12, v13

    int-to-float v12, v12

    move v13, v7

    mul-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v10, v11

    .line 202
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 206
    :cond_0
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 207
    move-object v10, v4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 210
    move-object v10, v0

    new-instance v11, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/CoordinatorLayout$1;)V

    invoke-super {v10, v11}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 211
    return-void
.end method

.method static synthetic access$300(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-object v0, v1

    return-object v0
.end method

.method private constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 15

    .prologue
    .line 1000
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v9

    move v5, v9

    .line 1001
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v9

    move v6, v9

    .line 1004
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v9

    move-object v10, v1

    iget v10, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move v11, v5

    move-object v12, v0

    .line 1006
    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    move v12, v3

    sub-int/2addr v11, v12

    move-object v12, v1

    iget v12, v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    .line 1005
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1004
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v7, v9

    .line 1007
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v9

    move-object v10, v1

    iget v10, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move v11, v6

    move-object v12, v0

    .line 1009
    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    move v12, v4

    sub-int/2addr v11, v12

    move-object v12, v1

    iget v12, v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    .line 1008
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1007
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v8, v9

    .line 1011
    move-object v9, v2

    move v10, v7

    move v11, v8

    move v12, v7

    move v13, v3

    add-int/2addr v12, v13

    move v13, v8

    move v14, v4

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1012
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 11

    .prologue
    .line 794
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 795
    move-object v7, v1

    move-object v0, v7

    .line 815
    :goto_0
    return-object v0

    .line 798
    :cond_0
    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v3, v7

    :goto_1
    move v7, v2

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 799
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 800
    move-object v7, v4

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 801
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v7

    .line 802
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    move-object v6, v7

    .line 804
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 806
    move-object v7, v6

    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v7

    move-object v1, v7

    .line 807
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 815
    :cond_1
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 798
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V
    .locals 23

    .prologue
    .line 926
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 927
    invoke-static/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v17

    move/from16 v18, v3

    .line 926
    invoke-static/range {v17 .. v18}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v17

    move/from16 v9, v17

    .line 928
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    move/from16 v17, v0

    .line 929
    invoke-static/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v17

    move/from16 v18, v3

    .line 928
    invoke-static/range {v17 .. v18}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v17

    move/from16 v10, v17

    .line 932
    move/from16 v17, v9

    const/16 v18, 0x7

    and-int/lit8 v17, v17, 0x7

    move/from16 v11, v17

    .line 933
    move/from16 v17, v9

    const/16 v18, 0x70

    and-int/lit8 v17, v17, 0x70

    move/from16 v12, v17

    .line 934
    move/from16 v17, v10

    const/16 v18, 0x7

    and-int/lit8 v17, v17, 0x7

    move/from16 v13, v17

    .line 935
    move/from16 v17, v10

    const/16 v18, 0x70

    and-int/lit8 v17, v17, 0x70

    move/from16 v14, v17

    .line 943
    move/from16 v17, v13

    sparse-switch v17, :sswitch_data_0

    .line 946
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v15, v17

    .line 956
    :goto_0
    move/from16 v17, v14

    sparse-switch v17, :sswitch_data_1

    .line 959
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v16, v17

    .line 970
    :goto_1
    move/from16 v17, v11

    sparse-switch v17, :sswitch_data_2

    .line 973
    move/from16 v17, v15

    move/from16 v18, v7

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 983
    :goto_2
    move/from16 v17, v12

    sparse-switch v17, :sswitch_data_3

    .line 986
    move/from16 v17, v16

    move/from16 v18, v8

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 996
    :goto_3
    move-object/from16 v17, v5

    move/from16 v18, v15

    move/from16 v19, v16

    move/from16 v20, v15

    move/from16 v21, v7

    add-int v20, v20, v21

    move/from16 v21, v16

    move/from16 v22, v8

    add-int v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 997
    return-void

    .line 949
    :sswitch_0
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v15, v17

    .line 950
    goto :goto_0

    .line 952
    :sswitch_1
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v15, v17

    goto :goto_0

    .line 962
    :sswitch_2
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v16, v17

    .line 963
    goto :goto_1

    .line 965
    :sswitch_3
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v16, v17

    goto :goto_1

    .line 977
    :sswitch_4
    goto :goto_2

    .line 979
    :sswitch_5
    move/from16 v17, v15

    move/from16 v18, v7

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v15, v17

    goto :goto_2

    .line 990
    :sswitch_6
    goto :goto_3

    .line 992
    :sswitch_7
    move/from16 v17, v16

    move/from16 v18, v8

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v16, v17

    goto :goto_3

    .line 943
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 956
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 970
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
    .end sparse-switch

    .line 983
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_6
    .end sparse-switch
.end method

.method private getKeyline(I)I
    .locals 6

    .prologue
    .line 553
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    if-nez v2, :cond_0

    .line 554
    const-string v2, "CoordinatorLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No keylines defined for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - attempted index lookup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 555
    const/4 v2, 0x0

    move v0, v2

    .line 563
    :goto_0
    return v0

    .line 558
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 559
    :cond_1
    const-string v2, "CoordinatorLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keyline index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 560
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 563
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 391
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    move v2, v7

    .line 392
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 393
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_0
    move v7, v4

    if-ltz v7, :cond_1

    .line 394
    move v7, v2

    if-eqz v7, :cond_0

    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v7

    :goto_1
    move v5, v7

    .line 395
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 396
    move-object v7, v1

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 393
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 394
    :cond_0
    move v7, v4

    goto :goto_1

    .line 399
    :cond_1
    sget-object v7, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v7, :cond_2

    .line 400
    move-object v7, v1

    sget-object v8, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 402
    :cond_2
    return-void
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 13

    .prologue
    .line 1125
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v6

    .line 1126
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v4, v6

    .line 1127
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v7

    move-object v8, v3

    iget v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    move-object v8, v0

    .line 1128
    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    move-object v9, v0

    .line 1129
    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    move-object v10, v0

    .line 1130
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v3

    iget v11, v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    .line 1127
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1132
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 1133
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1136
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1137
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1138
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1139
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1142
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v6

    .line 1143
    move-object v6, v3

    iget v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    move-object v8, v1

    .line 1144
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move-object v9, v4

    move-object v10, v5

    move v11, v2

    .line 1143
    invoke-static/range {v6 .. v11}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1145
    move-object v6, v1

    move-object v7, v5

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1146
    move-object v6, v1

    move-object v7, v3

    invoke-static {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$100(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1147
    move-object v6, v1

    move-object v7, v3

    invoke-static {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$200(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1148
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 12

    .prologue
    .line 1040
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v7

    .line 1042
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v5, v7

    .line 1043
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v7

    .line 1044
    move-object v7, v0

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1045
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1047
    move-object v7, v1

    move-object v8, v6

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object v11, v6

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1048
    return-void
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 21

    .prologue
    .line 1062
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v15

    .line 1063
    move-object v15, v5

    iget v15, v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1064
    invoke-static {v15}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v15

    move/from16 v16, v4

    .line 1063
    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v15

    move v6, v15

    .line 1066
    move v15, v6

    const/16 v16, 0x7

    and-int/lit8 v15, v15, 0x7

    move v7, v15

    .line 1067
    move v15, v6

    const/16 v16, 0x70

    and-int/lit8 v15, v15, 0x70

    move v8, v15

    .line 1068
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v15

    move v9, v15

    .line 1069
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v15

    move v10, v15

    .line 1070
    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move v11, v15

    .line 1071
    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move v12, v15

    .line 1073
    move v15, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1074
    move v15, v9

    move/from16 v16, v3

    sub-int v15, v15, v16

    move v3, v15

    .line 1077
    :cond_0
    move-object v15, v1

    move/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v15

    move/from16 v16, v11

    sub-int v15, v15, v16

    move v13, v15

    .line 1078
    const/4 v15, 0x0

    move v14, v15

    .line 1080
    move v15, v7

    sparse-switch v15, :sswitch_data_0

    .line 1093
    :goto_0
    move v15, v8

    sparse-switch v15, :sswitch_data_1

    .line 1107
    :goto_1
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v15

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v16, v13

    move/from16 v17, v9

    move-object/from16 v18, v1

    .line 1109
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v18, v11

    sub-int v17, v17, v18

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 1108
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1107
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v13, v15

    .line 1110
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v15

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v16, v14

    move/from16 v17, v10

    move-object/from16 v18, v1

    .line 1112
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v18, v12

    sub-int v17, v17, v18

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 1111
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1110
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v14, v15

    .line 1114
    move-object v15, v2

    move/from16 v16, v13

    move/from16 v17, v14

    move/from16 v18, v13

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v14

    move/from16 v20, v12

    add-int v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/view/View;->layout(IIII)V

    .line 1115
    return-void

    .line 1086
    :sswitch_0
    move v15, v13

    move/from16 v16, v11

    add-int v15, v15, v16

    move v13, v15

    .line 1087
    goto/16 :goto_0

    .line 1089
    :sswitch_1
    move v15, v13

    move/from16 v16, v11

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    move v13, v15

    goto/16 :goto_0

    .line 1099
    :sswitch_2
    move v15, v14

    move/from16 v16, v12

    add-int v15, v15, v16

    move v14, v15

    .line 1100
    goto/16 :goto_1

    .line 1102
    :sswitch_3
    move v15, v14

    move/from16 v16, v12

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    move v14, v15

    goto/16 :goto_1

    .line 1080
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1093
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 16

    .prologue
    .line 1317
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v11

    .line 1318
    move-object v11, v4

    iget v11, v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    move v12, v3

    invoke-static {v11, v12}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v11

    move v5, v11

    .line 1321
    move-object v11, v4

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v6, v11

    .line 1322
    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    move-object v7, v11

    .line 1323
    move-object v11, v6

    if-eqz v11, :cond_6

    move-object v11, v6

    move-object v12, v0

    move-object v13, v1

    move-object v14, v7

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1325
    move-object v11, v7

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    move-object v15, v1

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v11

    .line 1330
    :goto_0
    const/4 v11, 0x0

    move v8, v11

    .line 1331
    move v11, v5

    const/16 v12, 0x30

    and-int/lit8 v11, v11, 0x30

    const/16 v12, 0x30

    if-ne v11, v12, :cond_0

    .line 1332
    move-object v11, v7

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v4

    iget v12, v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v11, v12

    move-object v12, v4

    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$200(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 1333
    move v11, v9

    move-object v12, v2

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-ge v11, v12, :cond_0

    .line 1334
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v14, v9

    sub-int/2addr v13, v14

    invoke-direct {v11, v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1335
    const/4 v11, 0x1

    move v8, v11

    .line 1338
    :cond_0
    move v11, v5

    const/16 v12, 0x50

    and-int/lit8 v11, v11, 0x50

    const/16 v12, 0x50

    if-ne v11, v12, :cond_1

    .line 1339
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v11

    move-object v12, v7

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    move-object v12, v4

    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$200(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 1340
    move v11, v9

    move-object v12, v2

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-ge v11, v12, :cond_1

    .line 1341
    move-object v11, v0

    move-object v12, v1

    move v13, v9

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    invoke-direct {v11, v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1342
    const/4 v11, 0x1

    move v8, v11

    .line 1345
    :cond_1
    move v11, v8

    if-nez v11, :cond_2

    .line 1346
    move-object v11, v0

    move-object v12, v1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1349
    :cond_2
    const/4 v11, 0x0

    move v9, v11

    .line 1350
    move v11, v5

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 1351
    move-object v11, v7

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move-object v12, v4

    iget v12, v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v11, v12

    move-object v12, v4

    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$100(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v12

    sub-int/2addr v11, v12

    move v10, v11

    .line 1352
    move v11, v10

    move-object v12, v2

    iget v12, v12, Landroid/graphics/Rect;->left:I

    if-ge v11, v12, :cond_3

    .line 1353
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move v14, v10

    sub-int/2addr v13, v14

    invoke-direct {v11, v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1354
    const/4 v11, 0x1

    move v9, v11

    .line 1357
    :cond_3
    move v11, v5

    const/4 v12, 0x5

    and-int/lit8 v11, v11, 0x5

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    .line 1358
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v11

    move-object v12, v7

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    move-object v12, v4

    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$100(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 1359
    move v11, v10

    move-object v12, v2

    iget v12, v12, Landroid/graphics/Rect;->right:I

    if-ge v11, v12, :cond_4

    .line 1360
    move-object v11, v0

    move-object v12, v1

    move v13, v10

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    invoke-direct {v11, v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1361
    const/4 v11, 0x1

    move v9, v11

    .line 1364
    :cond_4
    move v11, v9

    if-nez v11, :cond_5

    .line 1365
    move-object v11, v0

    move-object v12, v1

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1367
    :cond_5
    return-void

    .line 1327
    :cond_6
    move-object v11, v7

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    move-object v15, v1

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 13

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 568
    const/4 v7, 0x0

    move-object v0, v7

    .line 599
    :goto_0
    return-object v0

    .line 572
    :cond_0
    move-object v7, v2

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 574
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 586
    :goto_1
    :try_start_0
    sget-object v7, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object v4, v7

    .line 587
    move-object v7, v4

    if-nez v7, :cond_1

    .line 588
    new-instance v7, Ljava/util/HashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v4, v7

    .line 589
    sget-object v7, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 591
    :cond_1
    move-object v7, v4

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    move-object v5, v7

    .line 592
    move-object v7, v5

    if-nez v7, :cond_2

    .line 593
    move-object v7, v3

    const/4 v8, 0x1

    move-object v9, v0

    .line 594
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 593
    invoke-static {v7, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 595
    move-object v7, v6

    sget-object v8, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v5, v7

    .line 596
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 597
    move-object v7, v4

    move-object v8, v3

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 599
    :cond_2
    move-object v7, v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto/16 :goto_0

    .line 575
    :cond_3
    move-object v7, v2

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    .line 577
    move-object v7, v2

    move-object v3, v7

    goto :goto_1

    .line 580
    :cond_4
    sget-object v7, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v3, v7

    goto/16 :goto_1

    :cond_5
    move-object v7, v2

    goto :goto_2

    .line 600
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 601
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not inflate Behavior subclass "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 25

    .prologue
    .line 405
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    const/16 v17, 0x0

    move/from16 v5, v17

    .line 406
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 408
    const/16 v17, 0x0

    move-object/from16 v7, v17

    .line 410
    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v17

    move/from16 v8, v17

    .line 412
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 413
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 416
    move-object/from16 v17, v9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v10, v17

    .line 417
    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_0
    move/from16 v17, v11

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 418
    move-object/from16 v17, v9

    move/from16 v18, v11

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v12, v17

    .line 419
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v13, v17

    .line 420
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v17

    move-object/from16 v14, v17

    .line 422
    move/from16 v17, v5

    if-nez v17, :cond_0

    move/from16 v17, v6

    if-eqz v17, :cond_3

    :cond_0
    move/from16 v17, v8

    if-eqz v17, :cond_3

    .line 425
    move-object/from16 v17, v14

    if-eqz v17, :cond_2

    .line 426
    move-object/from16 v17, v7

    if-nez v17, :cond_1

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v15, v17

    .line 428
    move-wide/from16 v17, v15

    move-wide/from16 v19, v15

    const/16 v21, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v7, v17

    .line 431
    :cond_1
    move/from16 v17, v4

    packed-switch v17, :pswitch_data_0

    .line 417
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 433
    :pswitch_0
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v7

    invoke-virtual/range {v17 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    .line 434
    goto :goto_1

    .line 436
    :pswitch_1
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v7

    invoke-virtual/range {v17 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1

    .line 443
    :cond_3
    move/from16 v17, v5

    if-nez v17, :cond_4

    move-object/from16 v17, v14

    if-eqz v17, :cond_4

    .line 444
    move/from16 v17, v4

    packed-switch v17, :pswitch_data_1

    .line 452
    :goto_2
    move/from16 v17, v5

    if-eqz v17, :cond_4

    .line 453
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 459
    :cond_4
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v17

    move/from16 v15, v17

    .line 460
    move-object/from16 v17, v13

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v17

    move/from16 v16, v17

    .line 461
    move/from16 v17, v16

    if-eqz v17, :cond_6

    move/from16 v17, v15

    if-nez v17, :cond_6

    const/16 v17, 0x1

    :goto_3
    move/from16 v6, v17

    .line 462
    move/from16 v17, v16

    if-eqz v17, :cond_2

    move/from16 v17, v6

    if-nez v17, :cond_2

    .line 469
    :cond_5
    move-object/from16 v17, v9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 471
    move/from16 v17, v5

    move/from16 v2, v17

    return v2

    .line 446
    :pswitch_2
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v3

    invoke-virtual/range {v17 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    move/from16 v5, v17

    .line 447
    goto :goto_2

    .line 449
    :pswitch_3
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v3

    invoke-virtual/range {v17 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    move/from16 v5, v17

    goto :goto_2

    .line 461
    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 444
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareChildren(Z)V
    .locals 13

    .prologue
    .line 628
    move-object v0, p0

    move v1, p1

    move v9, v1

    if-nez v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v9}, Landroid/support/design/widget/DirectedAcyclicGraph;->size()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    if-ne v9, v10, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    .line 629
    invoke-virtual {v9}, Landroid/support/design/widget/DirectedAcyclicGraph;->size()I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 668
    :goto_0
    return-void

    .line 634
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 635
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v9}, Landroid/support/design/widget/DirectedAcyclicGraph;->clear()V

    .line 637
    const/4 v9, 0x0

    move v2, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v3, v9

    :goto_1
    move v9, v2

    move v10, v3

    if-ge v9, v10, :cond_5

    .line 638
    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v4, v9

    .line 640
    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v9

    move-object v5, v9

    .line 641
    move-object v9, v5

    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .line 643
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/support/design/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 646
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_4

    .line 647
    move v9, v6

    move v10, v2

    if-ne v9, v10, :cond_2

    .line 646
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 650
    :cond_2
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 651
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v9

    move-object v8, v9

    .line 652
    move-object v9, v8

    move-object v10, v0

    move-object v11, v7

    move-object v12, v4

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 653
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/design/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 655
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/design/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 658
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v10, v4

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/support/design/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 637
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 664
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v10}, Landroid/support/design/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 667
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 668
    goto/16 :goto_0
.end method

.method private resetTouchBehaviors()V
    .locals 13

    .prologue
    .line 363
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 364
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    move-object v1, v5

    .line 365
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 367
    move-wide v5, v2

    move-wide v7, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    move-object v4, v5

    .line 369
    move-object v5, v1

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    .line 370
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 372
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 375
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 376
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_2

    .line 377
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 378
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v5

    .line 379
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 382
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 2

    .prologue
    .line 1171
    move v0, p0

    move v1, v0

    if-nez v1, :cond_0

    const/16 v1, 0x11

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static resolveGravity(I)I
    .locals 2

    .prologue
    .line 1155
    move v0, p0

    move v1, v0

    if-nez v1, :cond_0

    const v1, 0x800033

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 2

    .prologue
    .line 1163
    move v0, p0

    move v1, v0

    if-nez v1, :cond_0

    const v1, 0x800035

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 1370
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v5

    .line 1371
    move-object v5, v3

    invoke-static {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$100(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v5

    move v6, v2

    if-eq v5, v6, :cond_0

    .line 1372
    move v5, v2

    move-object v6, v3

    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$100(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 1373
    move-object v5, v1

    move v6, v4

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1374
    move-object v5, v3

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$102(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;I)I

    move-result v5

    .line 1376
    :cond_0
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 1379
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v5

    .line 1380
    move-object v5, v3

    invoke-static {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$200(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v5

    move v6, v2

    if-eq v5, v6, :cond_0

    .line 1381
    move v5, v2

    move-object v6, v3

    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$200(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 1382
    move-object v5, v1

    move v6, v4

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1383
    move-object v5, v3

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->access$202(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;I)I

    move-result v5

    .line 1385
    :cond_0
    return-void
.end method

.method private setupForInsets()V
    .locals 6

    .prologue
    .line 2935
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 2959
    :goto_0
    return-void

    .line 2939
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2940
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    if-nez v1, :cond_1

    .line 2941
    move-object v1, v0

    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v2, v1, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .line 2951
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 2954
    move-object v1, v0

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    .line 2959
    :goto_1
    goto :goto_0

    .line 2957
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto :goto_1
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 7

    .prologue
    .line 1496
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_1

    .line 1498
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v2, :cond_0

    .line 1499
    move-object v2, v0

    new-instance v3, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1501
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 1502
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1507
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1508
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1628
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 11

    .prologue
    .line 1398
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren(Z)V

    .line 1400
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/design/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 1401
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1402
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1403
    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 1404
    move-object v7, v4

    .line 1405
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v7

    .line 1406
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    move-object v6, v7

    .line 1407
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1408
    move-object v7, v6

    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    .line 1402
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1412
    :cond_1
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    .prologue
    .line 1594
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 1595
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v3, v5

    .line 1596
    move-object v5, v0

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v0

    if-eq v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1597
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v4, v5

    .line 1598
    move-object v5, v0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v0

    if-eq v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_1
    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1600
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_2

    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_2

    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_2

    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 1603
    :goto_3
    return v0

    .line 1596
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1598
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1600
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1603
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    .prologue
    .line 1176
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v8

    .line 1177
    move-object v8, v5

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v8, :cond_2

    .line 1178
    move-object v8, v5

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v8

    move v6, v8

    .line 1179
    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1180
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    .line 1181
    move-object v8, v0

    new-instance v9, Landroid/graphics/Paint;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v8, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1183
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v9, v5

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1184
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x437f0000    # 255.0f

    move v10, v6

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v9, v10, v11}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1186
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move v7, v8

    .line 1187
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1190
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    int-to-float v11, v11

    move-object v12, v2

    .line 1191
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1190
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result v8

    .line 1194
    :cond_1
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v0

    .line 1195
    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1194
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1197
    move-object v8, v1

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1200
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-wide v11, v3

    invoke-super {v8, v9, v10, v11, v12}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    move v0, v8

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 7

    .prologue
    .line 288
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 290
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v4

    move-object v1, v4

    .line 291
    const/4 v4, 0x0

    move v2, v4

    .line 293
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v4

    .line 294
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    move v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 298
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 299
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 301
    :cond_1
    return-void
.end method

.method ensurePreDrawListener()V
    .locals 7

    .prologue
    .line 1464
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 1465
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    move v2, v5

    .line 1466
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1467
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1468
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1469
    const/4 v5, 0x1

    move v1, v5

    .line 1474
    :cond_0
    move v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v5, v6, :cond_1

    .line 1475
    move v5, v1

    if-eqz v5, :cond_3

    .line 1476
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 1481
    :cond_1
    :goto_1
    return-void

    .line 1466
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1478
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->removePreDrawListener()V

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1623
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 7

    .prologue
    .line 1608
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1613
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1614
    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    move-object v0, v2

    .line 1618
    :goto_0
    return-object v0

    .line 1615
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 1616
    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 1618
    :cond_1
    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 913
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 914
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 922
    :goto_0
    return-void

    .line 917
    :cond_1
    move v4, v2

    if-eqz v4, :cond_2

    .line 918
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 922
    :goto_1
    goto :goto_0

    .line 920
    :cond_2
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren(Z)V

    .line 1426
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 1427
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1428
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1429
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 1431
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v0, v3

    return-object v0
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1456
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren(Z)V

    .line 1457
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1444
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren(Z)V

    .line 1446
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 1447
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1448
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1449
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 1451
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v0, v3

    return-object v0
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 678
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 679
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16

    .prologue
    .line 1024
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v8

    .line 1025
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    move v6, v8

    .line 1026
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v7, v8

    .line 1027
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1029
    move-object v8, v0

    move-object v9, v5

    move-object v10, v4

    move v11, v6

    move v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1030
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 899
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 900
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 901
    return-void
.end method

.method final getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object v0, v1

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 1806
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 10

    .prologue
    .line 606
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v2, v6

    .line 607
    move-object v6, v2

    iget-boolean v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v6, :cond_2

    .line 608
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 609
    const/4 v6, 0x0

    move-object v4, v6

    .line 610
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    const-class v7, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    .line 611
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v4, v7

    if-nez v6, :cond_0

    .line 612
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 614
    :cond_0
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 616
    move-object v6, v2

    move-object v7, v4

    :try_start_0
    invoke-interface {v7}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :cond_1
    :goto_1
    move-object v6, v2

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 624
    :cond_2
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 617
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 618
    const-string v6, "CoordinatorLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default behavior class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v8}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_1
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 688
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method hasDependencies(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1487
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren(Z)V

    .line 1488
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/design/widget/DirectedAcyclicGraph;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 8

    .prologue
    .line 1580
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v4, v5

    .line 1581
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1582
    move-object v5, v4

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 22

    .prologue
    .line 1533
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v14, v2

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v14

    .line 1534
    move-object v14, v4

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v14, :cond_3

    .line 1535
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v5, v14

    .line 1536
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v14

    .line 1537
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    move-object v7, v14

    .line 1539
    move-object v14, v1

    move-object v15, v4

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1540
    move-object v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1542
    move-object v14, v2

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move v8, v14

    .line 1543
    move-object v14, v2

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move v9, v14

    .line 1544
    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v4

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-direct/range {v14 .. v21}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1546
    move-object v14, v7

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object v15, v6

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-ne v14, v15, :cond_0

    move-object v14, v7

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object v15, v6

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-eq v14, v15, :cond_4

    :cond_0
    const/4 v14, 0x1

    :goto_0
    move v10, v14

    .line 1548
    move-object v14, v1

    move-object v15, v4

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v14 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1550
    move-object v14, v7

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object v15, v6

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    move v11, v14

    .line 1551
    move-object v14, v7

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object v15, v6

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    move v12, v14

    .line 1553
    move v14, v11

    if-eqz v14, :cond_1

    .line 1554
    move-object v14, v2

    move v15, v11

    invoke-static {v14, v15}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1556
    :cond_1
    move v14, v12

    if-eqz v14, :cond_2

    .line 1557
    move-object v14, v2

    move v15, v12

    invoke-static {v14, v15}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1560
    :cond_2
    move v14, v10

    if-eqz v14, :cond_3

    .line 1562
    move-object v14, v4

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    move-object v13, v14

    .line 1563
    move-object v14, v13

    if-eqz v14, :cond_3

    .line 1564
    move-object v14, v13

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v14

    .line 1568
    :cond_3
    return-void

    .line 1546
    :cond_4
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 7

    .prologue
    .line 220
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 221
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 222
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v2, :cond_1

    .line 223
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v2, :cond_0

    .line 224
    move-object v2, v0

    new-instance v3, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 226
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 227
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 229
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-nez v2, :cond_2

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 234
    :cond_2
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 235
    return-void
.end method

.method final onChildViewsChanged(I)V
    .locals 19

    .prologue
    .line 1220
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v15, v1

    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v15

    move v3, v15

    .line 1221
    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move v4, v15

    .line 1222
    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempRect4:Landroid/graphics/Rect;

    move-object v5, v15

    .line 1223
    move-object v15, v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->setEmpty()V

    .line 1224
    const/4 v15, 0x0

    move v6, v15

    :goto_0
    move v15, v6

    move/from16 v16, v4

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    .line 1225
    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move/from16 v16, v6

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    move-object v7, v15

    .line 1226
    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v8, v15

    .line 1229
    const/4 v15, 0x0

    move v9, v15

    :goto_1
    move v15, v9

    move/from16 v16, v6

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 1230
    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    move-object v10, v15

    .line 1232
    move-object v15, v8

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1233
    move-object v15, v1

    move-object/from16 v16, v7

    move/from16 v17, v3

    invoke-virtual/range {v15 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1229
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1238
    :cond_1
    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v9, v15

    .line 1239
    move-object v15, v1

    move-object/from16 v16, v7

    const/16 v17, 0x1

    move-object/from16 v18, v9

    invoke-virtual/range {v15 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1242
    move-object v15, v8

    iget v15, v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v15, :cond_2

    move-object v15, v9

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1243
    move-object v15, v8

    iget v15, v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    move/from16 v16, v3

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v15

    move v10, v15

    .line 1245
    move v15, v10

    const/16 v16, 0x70

    and-int/lit8 v15, v15, 0x70

    sparse-switch v15, :sswitch_data_0

    .line 1253
    :goto_2
    move v15, v10

    const/16 v16, 0x7

    and-int/lit8 v15, v15, 0x7

    packed-switch v15, :pswitch_data_0

    .line 1264
    :cond_2
    :goto_3
    :pswitch_0
    move-object v15, v8

    iget v15, v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v15, :cond_3

    .line 1265
    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v5

    move/from16 v18, v3

    invoke-direct/range {v15 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1268
    :cond_3
    move v15, v2

    if-nez v15, :cond_6

    .line 1270
    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v10, v15

    .line 1271
    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1272
    move-object v15, v10

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1224
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1247
    :sswitch_0
    move-object v15, v5

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 1248
    goto :goto_2

    .line 1250
    :sswitch_1
    move-object v15, v5

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v17

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1255
    :pswitch_1
    move-object v15, v5

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 1256
    goto :goto_3

    .line 1258
    :pswitch_2
    move-object v15, v5

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v17

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 1275
    :cond_5
    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v15 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1279
    :cond_6
    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move v10, v15

    :goto_4
    move v15, v10

    move/from16 v16, v4

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 1280
    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move/from16 v16, v10

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    move-object v11, v15

    .line 1281
    move-object v15, v11

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v12, v15

    .line 1282
    move-object v15, v12

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v15

    move-object v13, v15

    .line 1284
    move-object v15, v13

    if-eqz v15, :cond_7

    move-object v15, v13

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    move-object/from16 v18, v7

    invoke-virtual/range {v15 .. v18}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1285
    move v15, v2

    if-nez v15, :cond_8

    move-object v15, v12

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1288
    move-object v15, v12

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1279
    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1293
    :cond_8
    move v15, v2

    packed-switch v15, :pswitch_data_1

    .line 1302
    move-object v15, v13

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    move-object/from16 v18, v7

    invoke-virtual/range {v15 .. v18}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v15

    move v14, v15

    .line 1306
    :goto_6
    move v15, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1309
    move-object v15, v12

    move/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    goto :goto_5

    .line 1297
    :pswitch_3
    move-object v15, v13

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    move-object/from16 v18, v7

    invoke-virtual/range {v15 .. v18}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1298
    const/4 v15, 0x1

    move v14, v15

    .line 1299
    goto :goto_6

    .line 1314
    :cond_9
    return-void

    .line 1245
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 1253
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1293
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 240
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 241
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v2, :cond_0

    .line 242
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 243
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 246
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 248
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 249
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 860
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 861
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 862
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    :goto_0
    move v2, v3

    .line 863
    move v3, v2

    if-lez v3, :cond_0

    .line 864
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v6

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 865
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 868
    :cond_0
    return-void

    .line 862
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move-object v2, v5

    .line 478
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    move v3, v5

    .line 481
    move v5, v3

    if-nez v5, :cond_0

    .line 482
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 485
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v5

    move v4, v5

    .line 487
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 488
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 491
    :cond_1
    move v5, v3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    move v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 492
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 495
    :cond_3
    move v5, v4

    move v0, v5

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 845
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v0

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    move v6, v12

    .line 846
    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v7, v12

    .line 847
    const/4 v12, 0x0

    move v8, v12

    :goto_0
    move v12, v8

    move v13, v7

    if-ge v12, v13, :cond_2

    .line 848
    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    move-object v9, v12

    .line 849
    move-object v12, v9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v10, v12

    .line 850
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    move-object v11, v12

    .line 852
    move-object v12, v11

    if-eqz v12, :cond_0

    move-object v12, v11

    move-object v13, v0

    move-object v14, v9

    move v15, v6

    invoke-virtual {v12, v13, v14, v15}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 853
    :cond_0
    move-object v12, v0

    move-object v13, v9

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 847
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 856
    :cond_2
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 9

    .prologue
    .line 829
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 830
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 831
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 834
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 835
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    .line 841
    :goto_0
    return-void

    .line 836
    :cond_1
    move-object v4, v3

    iget v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v4, :cond_2

    .line 837
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    iget v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 839
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 37

    .prologue
    .line 712
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v30, v2

    const/16 v31, 0x1

    invoke-direct/range {v30 .. v31}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren(Z)V

    .line 713
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 715
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v30

    move/from16 v5, v30

    .line 716
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v30

    move/from16 v6, v30

    .line 717
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v30

    move/from16 v7, v30

    .line 718
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v30

    move/from16 v8, v30

    .line 719
    move-object/from16 v30, v2

    invoke-static/range {v30 .. v30}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v30

    move/from16 v9, v30

    .line 720
    move/from16 v30, v9

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    const/16 v30, 0x1

    :goto_0
    move/from16 v10, v30

    .line 721
    move/from16 v30, v3

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    move/from16 v11, v30

    .line 722
    move/from16 v30, v3

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v30

    move/from16 v12, v30

    .line 723
    move/from16 v30, v4

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    move/from16 v13, v30

    .line 724
    move/from16 v30, v4

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v30

    move/from16 v14, v30

    .line 726
    move/from16 v30, v5

    move/from16 v31, v7

    add-int v30, v30, v31

    move/from16 v15, v30

    .line 727
    move/from16 v30, v6

    move/from16 v31, v8

    add-int v30, v30, v31

    move/from16 v16, v30

    .line 728
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v30

    move/from16 v17, v30

    .line 729
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v30

    move/from16 v18, v30

    .line 730
    const/16 v30, 0x0

    move/from16 v19, v30

    .line 732
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    move-object/from16 v30, v2

    invoke-static/range {v30 .. v30}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v30, 0x1

    :goto_1
    move/from16 v20, v30

    .line 734
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v21, v30

    .line 735
    const/16 v30, 0x0

    move/from16 v22, v30

    :goto_2
    move/from16 v30, v22

    move/from16 v31, v21

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 736
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v30, v0

    move/from16 v31, v22

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/View;

    move-object/from16 v23, v30

    .line 737
    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v24, v30

    .line 739
    const/16 v30, 0x0

    move/from16 v25, v30

    .line 740
    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move/from16 v30, v0

    if-ltz v30, :cond_2

    move/from16 v30, v11

    if-eqz v30, :cond_2

    .line 741
    move-object/from16 v30, v2

    move-object/from16 v31, v24

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v30

    move/from16 v26, v30

    .line 742
    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    move/from16 v30, v0

    .line 743
    invoke-static/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v30

    move/from16 v31, v9

    .line 742
    invoke-static/range {v30 .. v31}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v30

    const/16 v31, 0x7

    and-int/lit8 v30, v30, 0x7

    move/from16 v27, v30

    .line 745
    move/from16 v30, v27

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    move/from16 v30, v10

    if-eqz v30, :cond_1

    :cond_0
    move/from16 v30, v27

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    move/from16 v30, v10

    if-eqz v30, :cond_8

    .line 747
    :cond_1
    const/16 v30, 0x0

    move/from16 v31, v12

    move/from16 v32, v7

    sub-int v31, v31, v32

    move/from16 v32, v26

    sub-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v25, v30

    .line 754
    :cond_2
    :goto_3
    move/from16 v30, v3

    move/from16 v26, v30

    .line 755
    move/from16 v30, v4

    move/from16 v27, v30

    .line 756
    move/from16 v30, v20

    if-eqz v30, :cond_3

    move-object/from16 v30, v23

    invoke-static/range {v30 .. v30}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 759
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v30

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v31, v0

    .line 760
    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v28, v30

    .line 761
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v30

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v31, v0

    .line 762
    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v29, v30

    .line 764
    move/from16 v30, v12

    move/from16 v31, v28

    sub-int v30, v30, v31

    move/from16 v31, v11

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    move/from16 v26, v30

    .line 766
    move/from16 v30, v14

    move/from16 v31, v29

    sub-int v30, v30, v31

    move/from16 v31, v13

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    move/from16 v27, v30

    .line 770
    :cond_3
    move-object/from16 v30, v24

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v30

    move-object/from16 v28, v30

    .line 771
    move-object/from16 v30, v28

    if-eqz v30, :cond_4

    move-object/from16 v30, v28

    move-object/from16 v31, v2

    move-object/from16 v32, v23

    move/from16 v33, v26

    move/from16 v34, v25

    move/from16 v35, v27

    const/16 v36, 0x0

    invoke-virtual/range {v30 .. v36}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v30

    if-nez v30, :cond_5

    .line 773
    :cond_4
    move-object/from16 v30, v2

    move-object/from16 v31, v23

    move/from16 v32, v26

    move/from16 v33, v25

    move/from16 v34, v27

    const/16 v35, 0x0

    invoke-virtual/range {v30 .. v35}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 777
    :cond_5
    move/from16 v30, v17

    move/from16 v31, v15

    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v17, v30

    .line 780
    move/from16 v30, v18

    move/from16 v31, v16

    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v18, v30

    .line 782
    move/from16 v30, v19

    move-object/from16 v31, v23

    .line 783
    invoke-static/range {v31 .. v31}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v31

    .line 782
    invoke-static/range {v30 .. v31}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v30

    move/from16 v19, v30

    .line 735
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 720
    :cond_6
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 732
    :cond_7
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 748
    :cond_8
    move/from16 v30, v27

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    move/from16 v30, v10

    if-eqz v30, :cond_a

    :cond_9
    move/from16 v30, v27

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    move/from16 v30, v10

    if-eqz v30, :cond_2

    .line 750
    :cond_a
    const/16 v30, 0x0

    move/from16 v31, v26

    move/from16 v32, v5

    sub-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v25, v30

    goto/16 :goto_3

    .line 786
    :cond_b
    move/from16 v30, v17

    move/from16 v31, v3

    move/from16 v32, v19

    const/high16 v33, -0x1000000

    and-int v32, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v30

    move/from16 v22, v30

    .line 788
    move/from16 v30, v18

    move/from16 v31, v4

    move/from16 v32, v19

    const/16 v33, 0x10

    shl-int/lit8 v32, v32, 0x10

    invoke-static/range {v30 .. v32}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v30

    move/from16 v23, v30

    .line 790
    move-object/from16 v30, v2

    move/from16 v31, v22

    move/from16 v32, v23

    invoke-virtual/range {v30 .. v32}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 791
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 706
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 708
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 19

    .prologue
    .line 1762
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v11, 0x0

    move v5, v11

    .line 1764
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    move v6, v11

    .line 1765
    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_2

    .line 1766
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 1767
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v9, v11

    .line 1768
    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1765
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1772
    :cond_1
    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v10, v11

    .line 1773
    move-object v11, v10

    if-eqz v11, :cond_0

    .line 1774
    move v11, v5

    move-object v12, v10

    move-object v13, v0

    move-object v14, v8

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v12

    or-int/2addr v11, v12

    move v5, v11

    goto :goto_1

    .line 1778
    :cond_2
    move v11, v5

    if-eqz v11, :cond_3

    .line 1779
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1781
    :cond_3
    move v11, v5

    move v0, v11

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 17

    .prologue
    .line 1786
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v10, 0x0

    move v4, v10

    .line 1788
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v5, v10

    .line 1789
    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_2

    .line 1790
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1791
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v8, v10

    .line 1792
    move-object v10, v8

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1789
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1796
    :cond_1
    move-object v10, v8

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v9, v10

    .line 1797
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 1798
    move v10, v4

    move-object v11, v9

    move-object v12, v0

    move-object v13, v7

    move-object v14, v1

    move v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v11

    or-int/2addr v10, v11

    move v4, v10

    goto :goto_1

    .line 1801
    :cond_2
    move v10, v4

    move v0, v10

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 24

    .prologue
    .line 1726
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v14, 0x0

    move v6, v14

    .line 1727
    const/4 v14, 0x0

    move v7, v14

    .line 1728
    const/4 v14, 0x0

    move v8, v14

    .line 1730
    move-object v14, v1

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v14

    move v9, v14

    .line 1731
    const/4 v14, 0x0

    move v10, v14

    :goto_0
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_4

    .line 1732
    move-object v14, v1

    move v15, v10

    invoke-virtual {v14, v15}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object v11, v14

    .line 1733
    move-object v14, v11

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v12, v14

    .line 1734
    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1731
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1738
    :cond_1
    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    move-object v13, v14

    .line 1739
    move-object v14, v13

    if-eqz v14, :cond_0

    .line 1740
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v23, v18

    move/from16 v16, v23

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    aput v19, v17, v18

    aput v16, v14, v15

    .line 1741
    move-object v14, v13

    move-object v15, v1

    move-object/from16 v16, v11

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v20, v0

    invoke-virtual/range {v14 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1743
    move v14, v3

    if-lez v14, :cond_2

    move v14, v6

    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1744
    :goto_2
    move v6, v14

    .line 1745
    move v14, v4

    if-lez v14, :cond_3

    move v14, v7

    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1746
    :goto_3
    move v7, v14

    .line 1748
    const/4 v14, 0x1

    move v8, v14

    goto :goto_1

    .line 1743
    :cond_2
    move v14, v6

    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    .line 1744
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_2

    .line 1745
    :cond_3
    move v14, v7

    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    .line 1746
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_3

    .line 1752
    :cond_4
    move-object v14, v5

    const/4 v15, 0x0

    move/from16 v16, v6

    aput v16, v14, v15

    .line 1753
    move-object v14, v5

    const/4 v15, 0x1

    move/from16 v16, v7

    aput v16, v14, v15

    .line 1755
    move v14, v8

    if-eqz v14, :cond_5

    .line 1756
    move-object v14, v1

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1758
    :cond_5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 20

    .prologue
    .line 1701
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v12

    move v6, v12

    .line 1702
    const/4 v12, 0x0

    move v7, v12

    .line 1704
    const/4 v12, 0x0

    move v8, v12

    :goto_0
    move v12, v8

    move v13, v6

    if-ge v12, v13, :cond_2

    .line 1705
    move-object v12, v0

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 1706
    move-object v12, v9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v10, v12

    .line 1707
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1704
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1711
    :cond_1
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    move-object v11, v12

    .line 1712
    move-object v12, v11

    if-eqz v12, :cond_0

    .line 1713
    move-object v12, v11

    move-object v13, v0

    move-object v14, v9

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-virtual/range {v12 .. v19}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1715
    const/4 v12, 0x1

    move v7, v12

    goto :goto_1

    .line 1719
    :cond_2
    move v12, v7

    if-eqz v12, :cond_3

    .line 1720
    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1722
    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 15

    .prologue
    .line 1655
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1656
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1657
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1659
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v4, v9

    .line 1660
    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 1661
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1662
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v9

    .line 1663
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1660
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1667
    :cond_1
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    move-object v8, v9

    .line 1668
    move-object v9, v8

    if-eqz v9, :cond_0

    .line 1669
    move-object v9, v8

    move-object v10, v0

    move-object v11, v6

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    invoke-virtual/range {v9 .. v14}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    .line 1672
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 15

    .prologue
    .line 2873
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    instance-of v11, v11, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    if-nez v11, :cond_0

    .line 2874
    move-object v11, v0

    move-object v12, v1

    invoke-super {v11, v12}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2896
    :goto_0
    return-void

    .line 2878
    :cond_0
    move-object v11, v1

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    move-object v2, v11

    .line 2879
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-super {v11, v12}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2881
    move-object v11, v2

    iget-object v11, v11, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move-object v3, v11

    .line 2883
    const/4 v11, 0x0

    move v4, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    move v5, v11

    :goto_1
    move v11, v4

    move v12, v5

    if-ge v11, v12, :cond_2

    .line 2884
    move-object v11, v0

    move v12, v4

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v6, v11

    .line 2885
    move-object v11, v6

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    move v7, v11

    .line 2886
    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v11

    move-object v8, v11

    .line 2887
    move-object v11, v8

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v9, v11

    .line 2889
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    move-object v11, v9

    if-eqz v11, :cond_1

    .line 2890
    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Parcelable;

    move-object v10, v11

    .line 2891
    move-object v11, v10

    if-eqz v11, :cond_1

    .line 2892
    move-object v11, v9

    move-object v12, v0

    move-object v13, v6

    move-object v14, v10

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2883
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2896
    :cond_2
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 2900
    move-object v0, p0

    new-instance v10, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-super {v12}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v10

    .line 2902
    new-instance v10, Landroid/util/SparseArray;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v10

    .line 2903
    const/4 v10, 0x0

    move v3, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v4, v10

    :goto_0
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_1

    .line 2904
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v5, v10

    .line 2905
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    move v6, v10

    .line 2906
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v10

    .line 2907
    move-object v10, v7

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v8, v10

    .line 2909
    move v10, v6

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    move-object v10, v8

    if-eqz v10, :cond_0

    .line 2911
    move-object v10, v8

    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v10

    move-object v9, v10

    .line 2912
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 2913
    move-object v10, v2

    move v11, v6

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2903
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2917
    :cond_1
    move-object v10, v1

    move-object v11, v2

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2918
    move-object v10, v1

    move-object v0, v10

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 17

    .prologue
    .line 1633
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v11, 0x0

    move v4, v11

    .line 1635
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    move v5, v11

    .line 1636
    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_1

    .line 1637
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v7, v11

    .line 1638
    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v8, v11

    .line 1639
    move-object v11, v8

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v9, v11

    .line 1640
    move-object v11, v9

    if-eqz v11, :cond_0

    .line 1641
    move-object v11, v9

    move-object v12, v0

    move-object v13, v7

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v11

    move v10, v11

    .line 1643
    move v11, v4

    move v12, v10

    or-int/2addr v11, v12

    move v4, v11

    .line 1645
    move-object v11, v8

    move v12, v10

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    .line 1636
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1647
    :cond_0
    move-object v11, v8

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    goto :goto_1

    .line 1650
    :cond_1
    move v11, v4

    move v0, v11

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 11

    .prologue
    .line 1676
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1678
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v2, v7

    .line 1679
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_2

    .line 1680
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 1681
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v7

    .line 1682
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1679
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1686
    :cond_0
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    move-object v6, v7

    .line 1687
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 1688
    move-object v7, v6

    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1690
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll()V

    .line 1691
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_1

    .line 1694
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1695
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1696
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .prologue
    .line 500
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x0

    move v2, v8

    .line 501
    const/4 v8, 0x0

    move v3, v8

    .line 502
    const/4 v8, 0x0

    move-object v4, v8

    .line 504
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v8

    move v5, v8

    .line 506
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v8

    move/from16 v16, v8

    move/from16 v8, v16

    move/from16 v9, v16

    move v3, v9

    if-eqz v8, :cond_1

    .line 509
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v8

    .line 510
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    move-object v7, v8

    .line 511
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 512
    move-object v8, v7

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    move v2, v8

    .line 517
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v8, :cond_7

    .line 518
    move v8, v2

    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 528
    :cond_2
    :goto_0
    move v8, v2

    if-nez v8, :cond_3

    move v8, v5

    if-nez v8, :cond_3

    .line 532
    :cond_3
    move-object v8, v4

    if-eqz v8, :cond_4

    .line 533
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 536
    :cond_4
    move v8, v5

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    move v8, v5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 537
    :cond_5
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 540
    :cond_6
    move v8, v2

    move v0, v8

    return v0

    .line 519
    :cond_7
    move v8, v3

    if-eqz v8, :cond_2

    .line 520
    move-object v8, v4

    if-nez v8, :cond_8

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v6, v8

    .line 522
    move-wide v8, v6

    move-wide v10, v6

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    move-object v4, v8

    .line 525
    :cond_8
    move-object v8, v0

    move-object v9, v4

    invoke-super {v8, v9}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 887
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 888
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 889
    return-void
.end method

.method removePreDrawListener()V
    .locals 4

    .prologue
    .line 1515
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_0

    .line 1516
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v2, :cond_0

    .line 1517
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 1518
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1521
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1522
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 11

    .prologue
    .line 2923
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v6

    .line 2924
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    move-object v5, v6

    .line 2926
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    .line 2927
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2928
    const/4 v6, 0x1

    move v0, v6

    .line 2931
    :goto_0
    return v0

    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-super {v6, v7, v8, v9}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 545
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 546
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v2, :cond_0

    .line 547
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 548
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 550
    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 4

    .prologue
    .line 872
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 873
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 874
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 216
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_3

    .line 259
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 260
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 262
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 263
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 264
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 267
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    .line 268
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 267
    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 269
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 270
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 272
    :cond_2
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 274
    :cond_3
    return-void

    .line 262
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 269
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 336
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 325
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void

    .line 325
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 6

    .prologue
    .line 310
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 313
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 314
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 316
    :cond_0
    return-void

    .line 312
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/design/widget/ViewUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 342
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 343
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 346
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    move-object v1, v2

    .line 347
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    .line 349
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 342
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 343
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
