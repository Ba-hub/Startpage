.class public Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$ViewCompatImpl;,
        Landroid/support/v4/view/ViewCompat$ScrollIndicators;,
        Landroid/support/v4/view/ViewCompat$FocusRelativeDirection;,
        Landroid/support/v4/view/ViewCompat$FocusRealDirection;,
        Landroid/support/v4/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field private static final FAKE_FRAME_TIME:J = 0xaL

.field static final IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1795
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 1796
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1797
    new-instance v1, Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    .line 1819
    :goto_0
    return-void

    .line 1798
    :cond_0
    move v1, v0

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 1799
    new-instance v1, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1800
    :cond_1
    move v1, v0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 1801
    new-instance v1, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1802
    :cond_2
    move v1, v0

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 1803
    new-instance v1, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1804
    :cond_3
    move v1, v0

    const/16 v2, 0x12

    if-lt v1, v2, :cond_4

    .line 1805
    new-instance v1, Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1806
    :cond_4
    move v1, v0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    .line 1807
    new-instance v1, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1808
    :cond_5
    move v1, v0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_6

    .line 1809
    new-instance v1, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1810
    :cond_6
    move v1, v0

    const/16 v2, 0xf

    if-lt v1, v2, :cond_7

    .line 1811
    new-instance v1, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1812
    :cond_7
    move v1, v0

    const/16 v2, 0xe

    if-lt v1, v2, :cond_8

    .line 1813
    new-instance v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 1814
    :cond_8
    move v1, v0

    const/16 v2, 0xb

    if-lt v1, v2, :cond_9

    .line 1815
    new-instance v1, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto/16 :goto_0

    .line 1817
    :cond_9
    new-instance v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 3535
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 3

    .prologue
    .line 2656
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 1829
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 1840
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static combineMeasuredStates(II)I
    .locals 5

    .prologue
    .line 2475
    move v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->combineMeasuredStates(II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 3029
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2576
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    .line 2577
    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    .line 3301
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    sget-object v4, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .prologue
    .line 3335
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 11

    .prologue
    .line 3278
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-interface/range {v5 .. v10}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 13

    .prologue
    .line 3253
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    sget-object v6, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-interface/range {v6 .. v12}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2569
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 2570
    return-void
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2489
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 3

    .prologue
    .line 2221
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2232
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getAlpha(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    .line 3091
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 3113
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 3445
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2889
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 2966
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2112
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2301
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getLabelFor(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2290
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getLayerType(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2362
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2622
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2452
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2463
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2438
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2644
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2633
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1858
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2545
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2533
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 3

    .prologue
    .line 2394
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2803
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getPivotX(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2830
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getPivotY(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getRotation(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2849
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getRotation(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2853
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getRotationX(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2857
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getRotationY(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2861
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getScaleX(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2865
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getScaleY(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3524
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getScrollIndicators(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2930
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2589
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationX(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2602
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationY(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2905
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2937
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2869
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getX(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 2873
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getY(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 3384
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->getZ(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 2008
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3225
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3461
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3071
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 2020
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3452
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 2176
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3351
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isInLayout(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3359
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3373
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isLayoutDirectionResolved(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3160
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2407
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isOpaque()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 3081
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->isPaddingRelative(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2987
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    .line 2988
    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 3418
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 3419
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 3409
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 3410
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 3012
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .prologue
    .line 1941
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1942
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    .prologue
    .line 1971
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1972
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .prologue
    .line 1913
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1914
    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    .line 2194
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v3, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2044
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2045
    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 11

    .prologue
    .line 2062
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget-object v5, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface/range {v5 .. v10}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 2063
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 2076
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2077
    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 9

    .prologue
    .line 2093
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    sget-object v4, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 2094
    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2945
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->requestApplyInsets(Landroid/view/View;)V

    .line 2946
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 7

    .prologue
    .line 2424
    move v0, p0

    move v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->resolveSizeAndState(III)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 5

    .prologue
    .line 1998
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1999
    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 2521
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 2522
    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 3053
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setActivated(Landroid/view/View;Z)V

    .line 3054
    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 5
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 2702
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setAlpha(Landroid/view/View;F)V

    .line 2703
    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 5

    .prologue
    .line 3102
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 3103
    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    .prologue
    .line 3126
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 3127
    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 5

    .prologue
    .line 2958
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 2959
    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 3433
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3434
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2880
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setElevation(Landroid/view/View;F)V

    .line 2881
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 2976
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 2977
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 2031
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setHasTransientState(Landroid/view/View;Z)V

    .line 2032
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 2136
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2137
    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 2312
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLabelFor(Landroid/view/View;I)V

    .line 2313
    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 5

    .prologue
    .line 2346
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 2347
    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 7

    .prologue
    .line 2268
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v3, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 2269
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 2382
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setLayoutDirection(Landroid/view/View;I)V

    .line 2383
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 3144
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 3145
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 5

    .prologue
    .line 2996
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 2997
    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1877
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1878
    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .locals 11

    .prologue
    .line 2562
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget-object v5, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface/range {v5 .. v10}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 2563
    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2818
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setPivotX(Landroid/view/View;F)V

    .line 2819
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2845
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setPivotY(Landroid/view/View;F)V

    .line 2846
    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3532
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    .line 3533
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2742
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setRotation(Landroid/view/View;F)V

    .line 2743
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2755
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setRotationX(Landroid/view/View;F)V

    .line 2756
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2768
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setRotationY(Landroid/view/View;F)V

    .line 2769
    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 3040
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    .line 3041
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2780
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setScaleX(Landroid/view/View;F)V

    .line 2781
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2792
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setScaleY(Landroid/view/View;F)V

    .line 2793
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3476
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setScrollIndicators(Landroid/view/View;I)V

    .line 3477
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3508
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setScrollIndicators(Landroid/view/View;II)V

    .line 3509
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2916
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 2917
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2670
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationX(Landroid/view/View;F)V

    .line 2671
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2686
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationY(Landroid/view/View;F)V

    .line 2687
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2896
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setTranslationZ(Landroid/view/View;F)V

    .line 2897
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2716
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setX(Landroid/view/View;F)V

    .line 2717
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 2730
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setY(Landroid/view/View;F)V

    .line 2731
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .locals 5

    .prologue
    .line 3400
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->setZ(Landroid/view/View;F)V

    .line 3401
    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 3202
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->startNestedScroll(Landroid/view/View;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3213
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->stopNestedScroll(Landroid/view/View;)V

    .line 3214
    return-void
.end method
