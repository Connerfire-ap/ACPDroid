.class Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;->addLayerTypeListener(Lcom/nineoldandroids/animation/Animator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->this$1:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    iput-object p2, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 492
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 493
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 497
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 498
    return-void
.end method
