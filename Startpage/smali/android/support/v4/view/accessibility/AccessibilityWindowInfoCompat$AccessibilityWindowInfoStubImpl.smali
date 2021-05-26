.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoStubImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getId(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    const/4 v2, -0x1

    move v0, v2

    return v0
.end method

.method public getLayer(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    const/4 v2, -0x1

    move v0, v2

    return v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getType(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    const/4 v2, -0x1

    move v0, v2

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public isActive(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
