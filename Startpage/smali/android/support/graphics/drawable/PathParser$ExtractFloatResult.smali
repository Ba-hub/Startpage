.class Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractFloatResult"
.end annotation


# instance fields
.field mEndPosition:I

.field mEndWithNegOrDot:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/PathParser$1;)V
    .locals 3

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/PathParser$ExtractFloatResult;-><init>()V

    return-void
.end method
