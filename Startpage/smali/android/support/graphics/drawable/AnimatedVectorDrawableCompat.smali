.class public Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.super Landroid/support/graphics/drawable/VectorDrawableCommon;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;,
        Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
    }
.end annotation


# static fields
.field private static final ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "AnimatedVDCompat"

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field mCachedConstantStateDelegate:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 77
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 635
    move-object v4, v0

    new-instance v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 92
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    .line 93
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 94
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    move-object v4, v0

    new-instance v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;)V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v0, v1

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 122
    new-instance v6, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    move-object v2, v6

    .line 123
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move v8, v1

    move-object v9, v0

    .line 124
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 123
    invoke-static {v7, v8, v9}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    move-object v6, v2

    iget-object v6, v6, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v2

    iget-object v7, v7, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    move-object v6, v2

    new-instance v7, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    iget-object v9, v9, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v7, v6, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCachedConstantStateDelegate:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    .line 128
    move-object v6, v2

    move-object v0, v6

    .line 149
    :goto_0
    return-object v0

    .line 130
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v2, v6

    .line 132
    move-object v6, v2

    move v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v3, v6

    .line 133
    move-object v6, v3

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object v4, v6

    .line 135
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v11, v6

    move v6, v11

    move v7, v11

    move v5, v7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    move v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    move v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 140
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "No start tag found"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 145
    const-string v6, "AnimatedVDCompat"

    const-string v7, "parser error"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 149
    :goto_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 142
    :cond_2
    move-object v6, v0

    move-object v7, v0

    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v8, v3

    move-object v9, v4

    move-object v10, v0

    .line 143
    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 142
    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 146
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 147
    const-string v6, "AnimatedVDCompat"

    const-string v7, "parser error"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_2
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    new-instance v6, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    move-object v5, v6

    .line 162
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 163
    move-object v6, v5

    move-object v0, v6

    return-object v0
.end method

.method private isStarted()Z
    .locals 7

    .prologue
    .line 587
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    move-object v1, v5

    .line 588
    move-object v5, v1

    if-nez v5, :cond_0

    .line 589
    const/4 v5, 0x0

    move v0, v5

    .line 598
    :goto_0
    return v0

    .line 591
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 592
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 593
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    move-object v4, v5

    .line 594
    move-object v5, v4

    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 595
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 592
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 598
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    .line 331
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v0, v4

    .line 333
    :goto_0
    return-object v0

    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 8

    .prologue
    .line 554
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 555
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 556
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 557
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Landroid/animation/Animator;)V

    .line 559
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 560
    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 561
    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    .line 563
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 564
    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 568
    return-void
.end method

.method private setupColorAnimator(Landroid/animation/Animator;)V
    .locals 8

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    instance-of v4, v4, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 534
    move-object v4, v1

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    move-object v2, v4

    .line 535
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 536
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 537
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-direct {v4, v5}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Landroid/animation/Animator;)V

    .line 536
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    .line 542
    move-object v4, v1

    check-cast v4, Landroid/animation/ObjectAnimator;

    move-object v2, v4

    .line 543
    move-object v4, v2

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 544
    const-string v4, "fillColor"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "strokeColor"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 545
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    if-nez v4, :cond_2

    .line 546
    move-object v4, v0

    new-instance v5, Landroid/animation/ArgbEvaluator;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v5, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 548
    :cond_2
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 551
    :cond_3
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 406
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 410
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 415
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 416
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    move v0, v1

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 193
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    .line 197
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 200
    :cond_1
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 230
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    move v0, v1

    .line 232
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getAlpha()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 185
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    .line 187
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getChangingConfigurations()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    or-int/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 5

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    move-object v0, v1

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 319
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    .line 321
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 311
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    .line 313
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getLayoutDirection()I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getLayoutDirection()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 303
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    move v0, v1

    .line 305
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getOpacity()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 401
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 340
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 395
    :goto_0
    return-void

    .line 343
    :cond_0
    move-object v11, v2

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    move v5, v11

    .line 344
    :goto_1
    move v11, v5

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    .line 345
    move v11, v5

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 346
    move-object v11, v2

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 350
    const-string v11, "animated-vector"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 351
    move-object v11, v1

    move-object v12, v4

    move-object v13, v3

    sget-object v14, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawable:[I

    .line 352
    invoke-static {v11, v12, v13, v14}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v7, v11

    .line 355
    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move v8, v11

    .line 360
    move v11, v8

    if-eqz v11, :cond_2

    .line 361
    move-object v11, v1

    move v12, v8

    move-object v13, v4

    invoke-static {v11, v12, v13}, Landroid/support/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-result-object v11

    move-object v9, v11

    .line 363
    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setAllowCaching(Z)V

    .line 364
    move-object v11, v9

    move-object v12, v0

    iget-object v12, v12, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v11, v12}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 365
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-eqz v11, :cond_1

    .line 366
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 368
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    move-object v12, v9

    iput-object v12, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    .line 370
    :cond_2
    move-object v11, v7

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    :cond_3
    :goto_2
    move-object v11, v2

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v5, v11

    goto :goto_1

    .line 371
    :cond_4
    const-string v11, "target"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 372
    move-object v11, v1

    move-object v12, v3

    sget-object v13, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawableTarget:[I

    .line 373
    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v7, v11

    .line 375
    move-object v11, v7

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 378
    move-object v11, v7

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move v9, v11

    .line 380
    move v11, v9

    if-eqz v11, :cond_5

    .line 381
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_6

    .line 382
    move-object v11, v0

    iget-object v11, v11, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    move v12, v9

    invoke-static {v11, v12}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v11

    move-object v10, v11

    .line 383
    move-object v11, v0

    move-object v12, v8

    move-object v13, v10

    invoke-direct {v11, v12, v13}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 389
    :cond_5
    move-object v11, v7

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 385
    :cond_6
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "Context can\'t be null when inflating animators"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 395
    :cond_7
    goto/16 :goto_0
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->isAutoMirrored()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 7

    .prologue
    .line 572
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 573
    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v5

    move v0, v5

    .line 583
    :goto_0
    return v0

    .line 575
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    move-object v1, v5

    .line 576
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 577
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 578
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    move-object v4, v5

    .line 579
    move-object v5, v4

    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 580
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 577
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 583
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 295
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    move v0, v1

    .line 297
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->isStateful()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 104
    move-object v1, v0

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    move-object v1, v0

    move-object v0, v1

    return-object v0

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Mutate() is not supported for older platform"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 205
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 222
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    move v0, v2

    .line 224
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setLevel(I)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 214
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    .line 216
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setState([I)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 238
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setAlpha(I)V

    .line 242
    goto :goto_0
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 256
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTint(I)V

    .line 261
    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 266
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 271
    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 276
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 281
    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 285
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 286
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    .line 289
    :goto_0
    return v0

    .line 288
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v3, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setVisible(ZZ)Z

    move-result v3

    .line 289
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    .line 603
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 604
    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 619
    :goto_0
    return-void

    .line 608
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 609
    goto :goto_0

    .line 612
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    move-object v1, v5

    .line 613
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 614
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 615
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    move-object v4, v5

    .line 616
    move-object v5, v4

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 614
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 618
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 619
    goto :goto_0
.end method

.method public stop()V
    .locals 7

    .prologue
    .line 623
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 624
    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 633
    :goto_0
    return-void

    .line 627
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    move-object v1, v5

    .line 628
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 629
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 630
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    move-object v4, v5

    .line 631
    move-object v5, v4

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 629
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 633
    :cond_1
    goto :goto_0
.end method
