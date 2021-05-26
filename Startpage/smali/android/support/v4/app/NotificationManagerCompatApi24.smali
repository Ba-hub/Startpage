.class Landroid/support/v4/app/NotificationManagerCompatApi24;
.super Ljava/lang/Object;
.source "NotificationManagerCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areNotificationsEnabled(Landroid/app/NotificationManager;)Z
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getImportance(Landroid/app/NotificationManager;)I
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getImportance()I

    move-result v1

    move v0, v1

    return v0
.end method
