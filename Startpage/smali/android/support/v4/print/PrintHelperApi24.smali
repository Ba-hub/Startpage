.class Landroid/support/v4/print/PrintHelperApi24;
.super Landroid/support/v4/print/PrintHelperApi23;
.source "PrintHelperApi24.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/print/PrintHelperApi23;-><init>(Landroid/content/Context;)V

    .line 28
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/print/PrintHelperApi24;->mIsMinMarginsHandlingCorrect:Z

    .line 29
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/print/PrintHelperApi24;->mPrintActivityRespectsOrientation:Z

    .line 30
    return-void
.end method
