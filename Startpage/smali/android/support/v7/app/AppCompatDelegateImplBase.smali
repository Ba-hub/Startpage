.class abstract Landroid/support/v7/app/AppCompatDelegateImplBase;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;,
        Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final SHOULD_INSTALL_EXCEPTION_HANDLER:Z

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Landroid/support/v7/app/ActionBar;

.field final mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field final mContext:Landroid/content/Context;

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mIsStarted:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    .line 51
    sget-boolean v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    if-nez v1, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    move-object v0, v1

    .line 55
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplBase$1;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplBase$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    .line 84
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const v4, 0x1010054

    aput v4, v2, v3

    sput-object v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    return-void

    .line 44
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 10

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    .line 112
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 113
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    .line 114
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    .line 116
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 117
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v6, v6, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    if-eqz v6, :cond_0

    .line 118
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "AppCompat has already installed itself into the Window"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 121
    :cond_0
    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplBase;->wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 123
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 125
    move-object v6, v1

    const/4 v7, 0x0

    sget-object v8, Landroid/support/v7/app/AppCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    invoke-static {v6, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v6

    move-object v4, v6

    .line 127
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 128
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 129
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 132
    return-void
.end method


# virtual methods
.method public applyDayNight()Z
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 186
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 187
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 188
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v3

    .line 191
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 192
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    move-object v1, v3

    .line 194
    :cond_1
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/support/v7/app/AppCompatDelegateImplBase$1;)V

    move-object v0, v1

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v1, :cond_0

    .line 156
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 157
    move-object v1, v0

    new-instance v2, Landroid/support/v7/view/SupportMenuInflater;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 158
    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    :goto_0
    invoke-direct {v3, v4}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 160
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    move-object v0, v1

    return-object v0

    .line 158
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 145
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    move-object v0, v1

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 298
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 301
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method abstract initWindowDecorActionBar()V
.end method

.method final isDestroyed()Z
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    move v0, v1

    return v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method final isStarted()Z
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    move v0, v1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    .line 251
    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    .line 241
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsStarted:Z

    .line 246
    return-void
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    move-object v0, v1

    return-object v0
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    .line 285
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method abstract startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    move-object v0, v2

    return-object v0
.end method
