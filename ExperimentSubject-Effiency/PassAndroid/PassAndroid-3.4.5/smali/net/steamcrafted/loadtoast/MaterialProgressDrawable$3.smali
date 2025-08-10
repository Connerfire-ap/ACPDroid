.class Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

.field final synthetic val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    .prologue
    .line 357
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iput-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 367
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 372
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 373
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 374
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iget-boolean v0, v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iput-boolean v2, v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mFinishing:Z

    .line 378
    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 379
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->val$ring:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    # getter for: Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$500(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    # setter for: Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$502(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 361
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;->this$0:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/4 v1, 0x0

    # setter for: Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->access$502(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;F)F

    .line 362
    return-void
.end method
