.class Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/util/LinkifyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkSpec"
.end annotation


# instance fields
.field end:I

.field frameworkAddedSpan:Landroid/text/style/URLSpan;

.field start:I

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/util/LinkifyCompat$1;)V
    .locals 3

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    return-void
.end method
