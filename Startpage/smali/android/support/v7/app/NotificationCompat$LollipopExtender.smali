.class Landroid/support/v7/app/NotificationCompat$LollipopExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LollipopExtender"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$1;)V
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/NotificationCompat$LollipopExtender;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-static {v3, v4}, Landroid/support/v7/app/NotificationCompat;->access$500(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V

    .line 170
    move-object v3, v2

    invoke-interface {v3}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
