.class Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;
.super Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 151
    iput-object p1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    invoke-direct {p0, p2}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 163
    new-instance v3, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    invoke-super {p0}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 164
    .local v3, "rotatingDrawable":Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    iget-object v4, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # setter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    invoke-static {v4, v3}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$402(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    .line 166
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 168
    .local v2, "interpolator":Landroid/view/animation/OvershootInterpolator;
    const-string v4, "rotation"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 169
    .local v0, "collapseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    const-string v4, "rotation"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 171
    .local v1, "expandAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 172
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 174
    iget-object v4, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-static {v4}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$500(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 175
    iget-object v4, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-static {v4}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$600(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 177
    return-object v3

    .line 168
    nop

    :array_0
    .array-data 4
        0x43070000    # 135.0f
        0x0
    .end array-data

    .line 169
    :array_1
    .array-data 4
        0x0
        0x43070000    # 135.0f
    .end array-data
.end method

.method updateBackground()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I
    invoke-static {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$000(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->mPlusColor:I

    .line 155
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I
    invoke-static {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$100(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->mColorNormal:I

    .line 156
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I
    invoke-static {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$200(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->mColorPressed:I

    .line 157
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z
    invoke-static {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$300(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$1;->mStrokeVisible:Z

    .line 158
    invoke-super {p0}, Lnet/i2p/android/ext/floatingactionbutton/AddFloatingActionButton;->updateBackground()V

    .line 159
    return-void
.end method
