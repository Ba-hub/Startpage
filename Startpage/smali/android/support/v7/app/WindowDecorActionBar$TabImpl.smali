.class public Landroid/support/v7/app/WindowDecorActionBar$TabImpl;
.super Landroid/support/v7/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/support/v7/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
    .locals 4

    .prologue
    .line 1132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/ActionBar$Tab;-><init>()V

    .line 1138
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/support/v7/app/ActionBar$TabListener;
    .locals 2

    .prologue
    .line 1153
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/support/v7/app/ActionBar$TabListener;

    move-object v0, v1

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1250
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1164
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1184
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 1189
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    move v0, v1

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1143
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1198
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public select()V
    .locals 3

    .prologue
    .line 1231
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 1232
    return-void
.end method

.method public setContentDescription(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 1236
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v3}, Landroid/support/v7/app/WindowDecorActionBar;->access$1000(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1242
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v2, :cond_0

    .line 1243
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$1100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ScrollingTabContainerView;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1245
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomView(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 6

    .prologue
    .line 1178
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v4, v1

    const/4 v5, 0x0

    .line 1179
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1178
    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1169
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1170
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v2, :cond_0

    .line 1171
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$1100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ScrollingTabContainerView;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1173
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 1212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v3}, Landroid/support/v7/app/WindowDecorActionBar;->access$1000(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1204
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v2, :cond_0

    .line 1205
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$1100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ScrollingTabContainerView;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1207
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setPosition(I)V
    .locals 4

    .prologue
    .line 1193
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1194
    return-void
.end method

.method public setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1158
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/support/v7/app/ActionBar$TabListener;

    .line 1159
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1148
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1149
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setText(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 1226
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v3}, Landroid/support/v7/app/WindowDecorActionBar;->access$1000(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1217
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1218
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v2, :cond_0

    .line 1219
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$1100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ScrollingTabContainerView;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1221
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
