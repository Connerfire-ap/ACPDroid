.class public Lorg/ligi/passandroid/ui/MyShyFABBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "MyShyFABBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private getToolbarHeight(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f010046

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v1, v2

    .line 66
    .local v1, "toolbarHeight":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return v1
.end method

.method private updateFabTranslationForSnackbar(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;
    .param p2, "dependency"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 58
    .local v0, "translationY":F
    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 59
    .local v1, "translationYClipped":F
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p2, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ligi/passandroid/ui/MyShyFABBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 26
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-nez v0, :cond_0

    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p2, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ligi/passandroid/ui/MyShyFABBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 31
    instance-of v4, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v4, :cond_0

    .line 32
    invoke-direct {p0, p2, p3}, Lorg/ligi/passandroid/ui/MyShyFABBehavior;->updateFabTranslationForSnackbar(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)V

    .line 34
    :cond_0
    instance-of v4, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {p2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 36
    .local v2, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 38
    .local v1, "fabBottomMargin":I
    invoke-virtual {p2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    invoke-virtual {p2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getHeight()I

    move-result v4

    add-int v0, v4, v1

    .line 43
    .local v0, "distanceToScroll":I
    :goto_0
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/ligi/passandroid/ui/MyShyFABBehavior;->getToolbarHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 45
    .local v3, "ratio":F
    neg-int v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 47
    .end local v0    # "distanceToScroll":I
    .end local v1    # "fabBottomMargin":I
    .end local v2    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "ratio":F
    :cond_1
    const/4 v4, 0x0

    return v4

    .line 41
    .restart local v1    # "fabBottomMargin":I
    .restart local v2    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    invoke-virtual {p2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    .restart local v0    # "distanceToScroll":I
    goto :goto_0
.end method

.method public bridge synthetic onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 14
    check-cast p2, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ligi/passandroid/ui/MyShyFABBehavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)V

    return-void
.end method

.method public onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lorg/ligi/passandroid/ui/MyShyFABBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/View;)Z

    .line 54
    return-void
.end method
