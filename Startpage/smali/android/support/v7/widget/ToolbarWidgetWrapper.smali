.class public Landroid/support/v7/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    sget v6, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_material:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 25

    .prologue
    .line 96
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object/from16 v19, v2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 87
    move-object/from16 v19, v2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 97
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 98
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 99
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 100
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 101
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    sget-object v21, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v22, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/16 v23, 0x0

    invoke-static/range {v19 .. v23}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v19

    move-object/from16 v7, v19

    .line 104
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    sget v21, Landroid/support/v7/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    move/from16 v19, v4

    if-eqz v19, :cond_d

    .line 106
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v8, v19

    .line 107
    move-object/from16 v19, v8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 108
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v9, v19

    .line 112
    move-object/from16 v19, v9

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 113
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v10, v19

    .line 117
    move-object/from16 v19, v10

    if-eqz v19, :cond_2

    .line 118
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_2
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v11, v19

    .line 122
    move-object/from16 v19, v11

    if-eqz v19, :cond_3

    .line 123
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 126
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    sget v21, Landroid/support/v7/appcompat/R$styleable;->ActionBar_displayOptions:I

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 130
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v12, v19

    .line 132
    move/from16 v19, v12

    if-eqz v19, :cond_5

    .line 133
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    move/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 135
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move/from16 v20, v0

    const/16 v21, 0x10

    or-int/lit8 v20, v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 138
    :cond_5
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v19

    move/from16 v13, v19

    .line 139
    move/from16 v19, v13

    if-lez v19, :cond_6

    .line 140
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v14, v19

    .line 141
    move-object/from16 v19, v14

    move/from16 v20, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_6
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/16 v21, -0x1

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v19

    move/from16 v14, v19

    .line 147
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    const/16 v21, -0x1

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v19

    move/from16 v15, v19

    .line 149
    move/from16 v19, v14

    if-gez v19, :cond_7

    move/from16 v19, v15

    if-ltz v19, :cond_8

    .line 150
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v19, v0

    move/from16 v20, v14

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v21, v15

    const/16 v22, 0x0

    .line 151
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 150
    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    :cond_8
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v16, v19

    .line 155
    move/from16 v19, v16

    if-eqz v19, :cond_9

    .line 156
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    move/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_9
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v17, v19

    .line 161
    move/from16 v19, v17

    if-eqz v19, :cond_a

    .line 162
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    move/from16 v21, v17

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_a
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$styleable;->ActionBar_popupTheme:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v18, v19

    .line 166
    move/from16 v19, v18

    if-eqz v19, :cond_b

    .line 167
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v19, v0

    move/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 172
    :cond_b
    :goto_1
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 174
    move-object/from16 v19, v2

    move/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 175
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 177
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v19, v0

    new-instance v20, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v22}, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;-><init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;)V

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void

    .line 100
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 170
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v20}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Z
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    move v0, v1

    return v0
.end method

.method private detectDisplayOptions()I
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    const/16 v2, 0xb

    move v1, v2

    .line 203
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    move v2, v1

    const/4 v3, 0x4

    or-int/lit8 v2, v2, 0x4

    move v1, v2

    .line 205
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_0
    move v2, v1

    move v0, v2

    return v0
.end method

.method private ensureSpinner()V
    .locals 9

    .prologue
    .line 498
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_0

    .line 499
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/AppCompatSpinner;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 500
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, -0x2

    const/4 v5, -0x2

    const v6, 0x800013

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(III)V

    move-object v1, v2

    .line 502
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 256
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/16 v3, 0x8

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 257
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 3

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 626
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 3

    .prologue
    .line 606
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 607
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 611
    :goto_1
    return-void

    .line 607
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 609
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolbarLogo()V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 318
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 319
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 320
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v1, v2

    .line 325
    :cond_0
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void

    .line 320
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 322
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 7

    .prologue
    .line 551
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move-object v2, v3

    .line 553
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 554
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 556
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 228
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->dismissPopupMenus()V

    .line 371
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 546
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move v0, v1

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 2

    .prologue
    .line 530
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 2

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 652
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 673
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 2

    .prologue
    .line 453
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    move v0, v1

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v0, v1

    return-object v0
.end method

.method public getVisibility()I
    .locals 2

    .prologue
    .line 662
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 433
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->hideOverflowMenu()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    const-string v1, "ToolbarWidgetWrapper"

    const-string v2, "Progress display unsupported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 282
    return-void
.end method

.method public initProgress()V
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    const-string v1, "ToolbarWidgetWrapper"

    const-string v2, "Progress display unsupported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 277
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 2

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->isTitleTruncated()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 642
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 637
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 647
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 444
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 535
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/16 v3, 0x10

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 536
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 538
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 539
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/16 v3, 0x10

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 540
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 542
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne v2, v3, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 195
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 198
    :cond_1
    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 599
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 600
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 601
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 603
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 6

    .prologue
    .line 380
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    move v2, v4

    .line 381
    move v4, v2

    move v5, v1

    xor-int/2addr v4, v5

    move v3, v4

    .line 382
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 383
    move v4, v3

    if-eqz v4, :cond_4

    .line 384
    move v4, v3

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 385
    move v4, v1

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 386
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 388
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 391
    :cond_1
    move v4, v3

    const/4 v5, 0x3

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_2

    .line 392
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 395
    :cond_2
    move v4, v3

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 396
    move v4, v1

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    .line 397
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 405
    :cond_3
    :goto_0
    move v4, v3

    const/16 v5, 0x10

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 406
    move v4, v1

    const/16 v5, 0x10

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 407
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 413
    :cond_4
    :goto_1
    return-void

    .line 400
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 409
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 5

    .prologue
    .line 509
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 510
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 511
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 512
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 6

    .prologue
    .line 516
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_0

    .line 517
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 521
    return-void
.end method

.method public setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 6

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v3, v4, :cond_0

    .line 418
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 420
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 421
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 422
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 423
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v2, v3

    .line 424
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 425
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 426
    move-object v3, v2

    const v4, 0x800053

    iput v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 427
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 429
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public setIcon(I)V
    .locals 5

    .prologue
    .line 296
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-void

    .line 296
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 302
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 303
    return-void
.end method

.method public setLogo(I)V
    .locals 5

    .prologue
    .line 307
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 308
    return-void

    .line 307
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 313
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 314
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 8

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v3, :cond_0

    .line 361
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 362
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v4, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setId(I)V

    .line 364
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 365
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v4, v1

    check-cast v4, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 366
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 6

    .prologue
    .line 668
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 669
    return-void
.end method

.method public setMenuPrepared()V
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 356
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 5

    .prologue
    .line 621
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 622
    return-void

    .line 621
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 615
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 616
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 617
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 5

    .prologue
    .line 594
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 595
    return-void

    .line 594
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 588
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 589
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 590
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 9

    .prologue
    .line 458
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    move v2, v4

    .line 459
    move v4, v1

    move v5, v2

    if-eq v4, v5, :cond_1

    .line 460
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 473
    :cond_0
    :goto_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 475
    move v4, v1

    packed-switch v4, :pswitch_data_1

    .line 492
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid navigation mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 462
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v4, v5, :cond_0

    .line 463
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 467
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v4, v5, :cond_0

    .line 468
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 495
    :cond_1
    :goto_1
    :pswitch_2
    return-void

    .line 479
    :pswitch_3
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 480
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 481
    goto :goto_1

    .line 483
    :pswitch_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 484
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 485
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v3, v4

    .line 486
    move-object v4, v3

    const/4 v5, -0x2

    iput v5, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 487
    move-object v4, v3

    const/4 v5, -0x2

    iput v5, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 488
    move-object v4, v3

    const v5, 0x800053

    iput v5, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 489
    goto :goto_1

    .line 460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 475
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 269
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    const/16 v3, 0x8

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 270
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 251
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 657
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 658
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 233
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v2, :cond_0

    .line 239
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 10

    .prologue
    .line 561
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move v5, v1

    if-nez v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 562
    :goto_0
    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-wide v5, v2

    .line 563
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;-><init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;I)V

    .line 564
    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 561
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v1

    move v0, v1

    return v0
.end method
