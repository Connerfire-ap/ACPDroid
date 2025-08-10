.class Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutParams"
.end annotation


# instance fields
.field private animationsSetToPlay:Z

.field private mCollapseAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mExpandAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

.field final synthetic this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method public constructor <init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p2, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x2

    .line 441
    iput-object p1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    .line 442
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 436
    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 437
    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 438
    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 444
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$900()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 445
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$1000()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 446
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 447
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 449
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 452
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 455
    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I
    invoke-static {p1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$1200(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 467
    :goto_0
    return-void

    .line 458
    :pswitch_0
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :pswitch_1
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-string v1, "translationX"

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-string v1, "translationX"

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 453
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$700(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .prologue
    .line 433
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .prologue
    .line 433
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object v0
.end method

.method private addLayerTypeListener(Lcom/nineoldandroids/animation/Animator;Landroid/view/View;)V
    .locals 1
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 489
    new-instance v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;

    invoke-direct {v0, p0, p2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;-><init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 500
    return-void
.end method


# virtual methods
.method public setAnimationsTarget(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 470
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 476
    iget-boolean v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->animationsSetToPlay:Z

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->addLayerTypeListener(Lcom/nineoldandroids/animation/Animator;Landroid/view/View;)V

    .line 478
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->addLayerTypeListener(Lcom/nineoldandroids/animation/Animator;Landroid/view/View;)V

    .line 480
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-static {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$600(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 481
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-static {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$600(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 482
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-static {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$500(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 483
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-static {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->access$500(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->animationsSetToPlay:Z

    .line 486
    :cond_0
    return-void
.end method
