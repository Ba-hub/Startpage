.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAction(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 43
    return-void
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public static findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 52
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    move-object v0, v3

    return-object v0
.end method

.method public static getActions(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 61
    return-void
.end method

.method public static getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 65
    return-void
.end method

.method public static getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getChildCount(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isCheckable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isClickable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isFocusable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isFocused(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isLongClickable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isSelected(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static performAction(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 217
    return-void
.end method

.method public static setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 145
    return-void
.end method

.method public static setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 149
    return-void
.end method

.method public static setCheckable(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 153
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 157
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public static setClickable(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 165
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method public static setFocusable(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 177
    return-void
.end method

.method public static setFocused(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 181
    return-void
.end method

.method public static setLongClickable(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 185
    return-void
.end method

.method public static setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 197
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 201
    return-void
.end method

.method public static setSelected(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 205
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public static setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method
