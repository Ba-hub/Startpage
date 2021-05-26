.class Landroid/support/v4/print/PrintHelperApi23;
.super Landroid/support/v4/print/PrintHelperApi20;
.source "PrintHelperApi23.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/print/PrintHelperApi20;-><init>(Landroid/content/Context;)V

    .line 40
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/print/PrintHelperApi23;->mIsMinMarginsHandlingCorrect:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v4/print/PrintHelperApi20;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v3

    move-object v2, v3

    .line 30
    move-object v3, v1

    invoke-virtual {v3}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v3

    .line 34
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
