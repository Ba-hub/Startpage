.class public final Landroid/support/v4/app/RemoteInput;
.super Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/RemoteInput$ImplApi20;,
        Landroid/support/v4/app/RemoteInput$ImplJellybean;,
        Landroid/support/v4/app/RemoteInput$ImplBase;,
        Landroid/support/v4/app/RemoteInput$Impl;,
        Landroid/support/v4/app/RemoteInput$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field public static final FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

.field private static final IMPL:Landroid/support/v4/app/RemoteInput$Impl;

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field private static final TAG:Ljava/lang/String; = "RemoteInput"


# instance fields
.field private final mAllowFreeFormInput:Z

.field private final mChoices:[Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 259
    new-instance v0, Landroid/support/v4/app/RemoteInput$ImplApi20;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/RemoteInput$ImplApi20;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->IMPL:Landroid/support/v4/app/RemoteInput$Impl;

    .line 268
    :goto_0
    new-instance v0, Landroid/support/v4/app/RemoteInput$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/RemoteInput$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    return-void

    .line 260
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 261
    new-instance v0, Landroid/support/v4/app/RemoteInput$ImplJellybean;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/RemoteInput$ImplJellybean;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->IMPL:Landroid/support/v4/app/RemoteInput$Impl;

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Landroid/support/v4/app/RemoteInput$ImplBase;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/RemoteInput$ImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->IMPL:Landroid/support/v4/app/RemoteInput$Impl;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;-><init>()V

    .line 45
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v4/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 46
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 47
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 48
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Landroid/support/v4/app/RemoteInput;->mAllowFreeFormInput:Z

    .line 49
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v4/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Landroid/support/v4/app/RemoteInput$1;)V
    .locals 13

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Landroid/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Landroid/support/v4/app/RemoteInput;->IMPL:Landroid/support/v4/app/RemoteInput$Impl;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/app/RemoteInput$Impl;->addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    sget-object v1, Landroid/support/v4/app/RemoteInput;->IMPL:Landroid/support/v4/app/RemoteInput$Impl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/app/RemoteInput$Impl;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/RemoteInput;->mAllowFreeFormInput:Z

    move v0, v1

    return v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/RemoteInput;->mResultKey:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
