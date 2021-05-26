.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter",
            "<",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field private mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/Rect;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 336
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$1;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Landroid/support/v4/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    .line 348
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$2;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Landroid/support/v4/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 106
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 107
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 108
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 109
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 121
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 124
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 127
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 136
    move-object v3, v1

    if-nez v3, :cond_0

    .line 137
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "View may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 142
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 143
    move-object v3, v0

    move-object v4, v2

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_1

    .line 150
    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 153
    :cond_1
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/ExploreByTouchHelper;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 5

    .prologue
    .line 985
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 986
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 987
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 988
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 990
    const/4 v2, 0x1

    move v0, v2

    .line 992
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .locals 5

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

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

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6

    .prologue
    .line 638
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 642
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 640
    :pswitch_0
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 10

    .prologue
    .line 678
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v2

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    move-object v3, v6

    .line 679
    move-object v6, v3

    invoke-static {v6}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v6

    move-object v4, v6

    .line 680
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v6

    move-object v5, v6

    .line 683
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getText()Ljava/util/List;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 684
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 686
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setPassword(Z)V

    .line 687
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setEnabled(Z)V

    .line 688
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setChecked(Z)V

    .line 691
    move-object v6, v0

    move v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 694
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_0

    .line 695
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 700
    :cond_0
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 701
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    .line 702
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 704
    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5

    .prologue
    .line 654
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v2, v3

    .line 655
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 656
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 793
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    move-object v2, v5

    .line 796
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 797
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 798
    move-object v5, v2

    const-string v6, "android.view.View"

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 799
    move-object v5, v2

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 800
    move-object v5, v2

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 803
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 806
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_0

    .line 807
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 811
    :cond_0
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 812
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 813
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 817
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v5

    move v3, v5

    .line 818
    move v5, v3

    const/16 v6, 0x40

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    .line 819
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 822
    :cond_2
    move v5, v3

    const/16 v6, 0x80

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    .line 823
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 828
    :cond_3
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 829
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 830
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 833
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    move v6, v1

    if-ne v5, v6, :cond_7

    .line 834
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 835
    move-object v5, v2

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 842
    :goto_0
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v6, v1

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 843
    move v5, v4

    if-eqz v5, :cond_9

    .line 844
    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 848
    :cond_4
    :goto_2
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 851
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 852
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 853
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 858
    :cond_5
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 859
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 860
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 861
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 862
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 863
    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 862
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 864
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 867
    :cond_6
    move-object v5, v2

    move-object v0, v5

    return-object v0

    .line 837
    :cond_7
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 838
    move-object v5, v2

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto/16 :goto_0

    .line 842
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 845
    :cond_9
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 846
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto/16 :goto_2
.end method

.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 736
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v6

    move-object v1, v6

    .line 737
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 740
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 741
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 743
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v6

    move v3, v6

    .line 744
    move v6, v3

    if-lez v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 745
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Views cannot have both real and virtual children"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 748
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    :goto_0
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_1

    .line 749
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 748
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 752
    :cond_1
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method

.method private getAllNodes()Landroid/support/v4/util/SparseArrayCompat;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 429
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 431
    new-instance v5, Landroid/support/v4/util/SparseArrayCompat;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    move-object v2, v5

    .line 432
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 433
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    move-object v4, v5

    .line 434
    move-object v5, v2

    move v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    :cond_0
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    move-object v3, v4

    .line 330
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 331
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 451
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move v3, v5

    .line 452
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move v4, v5

    .line 454
    move v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 468
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 456
    :sswitch_0
    move-object v5, v2

    move v6, v3

    const/4 v7, 0x0

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 472
    :goto_0
    move-object v5, v2

    move-object v0, v5

    return-object v0

    .line 459
    :sswitch_1
    move-object v5, v2

    const/4 v6, 0x0

    move v7, v4

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 460
    goto :goto_0

    .line 462
    :sswitch_2
    move-object v5, v2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 463
    goto :goto_0

    .line 465
    :sswitch_3
    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v8, v3

    const/4 v9, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 466
    goto :goto_0

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 6

    .prologue
    .line 908
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 909
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 938
    :goto_0
    return v0

    .line 913
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 914
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 918
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 919
    :goto_1
    move-object v4, v2

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_5

    .line 920
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 921
    move-object v4, v3

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 922
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 924
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 925
    goto :goto_1

    .line 928
    :cond_5
    move-object v4, v2

    if-nez v4, :cond_6

    .line 929
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 933
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 934
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 938
    :cond_7
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private static keyToDirection(I)I
    .locals 2

    .prologue
    .line 310
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 318
    :pswitch_0
    const/16 v1, 0x82

    move v0, v1

    :goto_0
    return v0

    .line 312
    :pswitch_1
    const/16 v1, 0x11

    move v0, v1

    goto :goto_0

    .line 314
    :pswitch_2
    const/16 v1, 0x21

    move v0, v1

    goto :goto_0

    .line 316
    :pswitch_3
    const/16 v1, 0x42

    move v0, v1

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .locals 17
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 373
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAllNodes()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v9

    move-object v3, v9

    .line 375
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v4, v9

    .line 376
    move v9, v4

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    .line 377
    :goto_0
    move-object v5, v9

    .line 380
    move v9, v1

    sparse-switch v9, :sswitch_data_0

    .line 411
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const-string v11, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 376
    :cond_0
    move-object v9, v3

    move v10, v4

    .line 377
    invoke-virtual {v9, v10}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_0

    .line 383
    :sswitch_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 384
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 385
    move-object v9, v3

    sget-object v10, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v11, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    move-object v12, v5

    move v13, v1

    move v14, v7

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v6, v9

    .line 417
    :goto_2
    move-object v9, v6

    if-nez v9, :cond_4

    .line 418
    const/high16 v9, -0x80000000

    move v7, v9

    .line 424
    :goto_3
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v9

    move v0, v9

    return v0

    .line 384
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 393
    :sswitch_1
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v9

    .line 394
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_2

    .line 396
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move-object v11, v8

    invoke-direct {v9, v10, v11}, Landroid/support/v4/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    .line 407
    :goto_4
    move-object v9, v3

    sget-object v10, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v11, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    move-object v12, v5

    move-object v13, v8

    move v14, v1

    invoke-static/range {v9 .. v14}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v6, v9

    .line 409
    goto :goto_2

    .line 397
    :cond_2
    move-object v9, v2

    if-eqz v9, :cond_3

    .line 399
    move-object v9, v8

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 405
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move v10, v1

    move-object v11, v8

    invoke-static {v9, v10, v11}, Landroid/support/v4/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_4

    .line 420
    :cond_4
    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v9

    move v8, v9

    .line 421
    move-object v9, v3

    move v10, v8

    invoke-virtual {v9, v10}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v9

    move v7, v9

    goto :goto_3

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 722
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    .line 725
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 871
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 875
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    :goto_0
    return v0

    .line 873
    :pswitch_0
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 871
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 884
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 894
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    :goto_0
    return v0

    .line 886
    :sswitch_0
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 888
    :sswitch_1
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 890
    :sswitch_2
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 892
    :sswitch_3
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 884
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 880
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 5

    .prologue
    .line 954
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 955
    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 956
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 974
    :goto_0
    return v0

    .line 959
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    move v3, v1

    if-eq v2, v3, :cond_3

    .line 961
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    .line 962
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v2

    .line 966
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 969
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 970
    move-object v2, v0

    move v3, v1

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 972
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 974
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private updateHoveredVirtualView(I)V
    .locals 6

    .prologue
    .line 613
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 625
    :goto_0
    return-void

    .line 617
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    move v2, v3

    .line 618
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 622
    move-object v3, v0

    move v4, v1

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v3

    .line 623
    move-object v3, v0

    move v4, v2

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v3

    .line 625
    goto :goto_0
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 5

    .prologue
    .line 1033
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1035
    const/4 v2, 0x0

    move v0, v2

    .line 1043
    :goto_0
    return v0

    .line 1038
    :cond_0
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1040
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1041
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 1043
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 183
    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 200
    :goto_0
    return v0

    .line 187
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 200
    :pswitch_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 190
    :pswitch_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v3

    move v2, v3

    .line 191
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 192
    move v3, v2

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 194
    :pswitch_2
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_3

    .line 195
    move-object v3, v0

    const/high16 v4, -0x80000000

    invoke-direct {v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 196
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 198
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move v2, v8

    .line 219
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move v3, v8

    .line 220
    move v8, v3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 221
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move v4, v8

    .line 222
    move v8, v4

    sparse-switch v8, :sswitch_data_0

    .line 258
    :cond_0
    :goto_0
    move v8, v2

    move v0, v8

    return v0

    .line 227
    :sswitch_0
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 228
    move v8, v4

    invoke-static {v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v8

    move v5, v8

    .line 229
    const/4 v8, 0x1

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 230
    const/4 v8, 0x0

    move v7, v8

    :goto_1
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 231
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 232
    const/4 v8, 0x1

    move v2, v8

    .line 230
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 237
    :cond_1
    goto :goto_0

    .line 241
    :sswitch_1
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 243
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    move-result v8

    .line 244
    const/4 v8, 0x1

    move v2, v8

    goto :goto_0

    .line 249
    :sswitch_2
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 250
    move-object v8, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    move v2, v8

    goto :goto_0

    .line 251
    :cond_2
    move-object v8, v1

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 252
    move-object v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    move v2, v8

    goto :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    move v0, v1

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 8

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v2, :cond_0

    .line 158
    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;Landroid/support/v4/widget/ExploreByTouchHelper$1;)V

    iput-object v3, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 160
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    move-object v0, v2

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v0, v1

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .locals 4

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 528
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .locals 5

    .prologue
    .line 543
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 545
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 8

    .prologue
    .line 567
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 568
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 569
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 571
    move-object v5, v0

    move v6, v1

    const/16 v7, 0x800

    invoke-direct {v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    move-object v4, v5

    .line 573
    move-object v5, v4

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 574
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 577
    :cond_0
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 276
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 277
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v4

    .line 280
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    .line 281
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    .line 283
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 664
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 665
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 757
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 760
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 761
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1114
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1102
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .prologue
    .line 1192
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 5

    .prologue
    .line 1003
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    const/4 v2, 0x0

    move v0, v2

    .line 1022
    :goto_0
    return v0

    .line 1008
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move v3, v1

    if-ne v2, v3, :cond_1

    .line 1010
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 1013
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    .line 1014
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v2

    .line 1017
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1019
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1020
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 1022
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 8

    .prologue
    .line 506
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 507
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 516
    :goto_0
    return v0

    .line 510
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 511
    move-object v5, v3

    if-nez v5, :cond_2

    .line 512
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 515
    :cond_2
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    move-object v4, v5

    .line 516
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method
