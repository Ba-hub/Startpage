.class public abstract Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
.super Ljava/lang/Object;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PopupCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
.end method
