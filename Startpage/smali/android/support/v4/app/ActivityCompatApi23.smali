.class Landroid/support/v4/app/ActivityCompatApi23;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;,
        Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;,
        Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;,
        Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 65
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    move-object v1, v2

    .line 68
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    instance-of v3, v3, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    if-eqz v3, :cond_0

    .line 42
    move-object v3, v0

    check-cast v3, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    move v4, v2

    .line 43
    invoke-interface {v3, v4}, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 45
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/ActivityCompatApi23;->createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 56
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/ActivityCompatApi23;->createCallback(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 61
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method
