.class public Lnet/steamcrafted/loadtoast/LoadToast;
.super Ljava/lang/Object;
.source "LoadToast.java"


# instance fields
.field private mInflated:Z

.field private mParentView:Landroid/view/ViewGroup;

.field private mShowCalled:Z

.field private mToastCanceled:Z

.field private mTranslationY:I

.field private mView:Lnet/steamcrafted/loadtoast/LoadToastView;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    .line 20
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mShowCalled:Z

    .line 21
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    .line 22
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    .line 23
    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mVisible:Z

    .line 27
    new-instance v0, Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-direct {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    .line 28
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    .line 29
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 31
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    new-instance v1, Lnet/steamcrafted/loadtoast/LoadToast$1;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/LoadToast$1;-><init>(Lnet/steamcrafted/loadtoast/LoadToast;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lnet/steamcrafted/loadtoast/LoadToast$2;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/LoadToast$2;-><init>(Lnet/steamcrafted/loadtoast/LoadToast;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lnet/steamcrafted/loadtoast/LoadToast;)Lnet/steamcrafted/loadtoast/LoadToastView;
    .locals 1
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/LoadToast;

    .prologue
    .line 15
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    return-object v0
.end method

.method static synthetic access$100(Lnet/steamcrafted/loadtoast/LoadToast;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/LoadToast;

    .prologue
    .line 15
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lnet/steamcrafted/loadtoast/LoadToast;)I
    .locals 1
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/LoadToast;

    .prologue
    .line 15
    iget v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    return v0
.end method

.method static synthetic access$302(Lnet/steamcrafted/loadtoast/LoadToast;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/LoadToast;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    return p1
.end method

.method static synthetic access$400(Lnet/steamcrafted/loadtoast/LoadToast;)Z
    .locals 1
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/LoadToast;

    .prologue
    .line 15
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    return v0
.end method

.method static synthetic access$500(Lnet/steamcrafted/loadtoast/LoadToast;)Z
    .locals 1
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/LoadToast;

    .prologue
    .line 15
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mShowCalled:Z

    return v0
.end method

.method static synthetic access$600(Lnet/steamcrafted/loadtoast/LoadToast;)V
    .locals 0
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/LoadToast;

    .prologue
    .line 15
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->checkZPosition()V

    return-void
.end method

.method private checkZPosition()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 115
    iget-boolean v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mVisible:Z

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 118
    .local v1, "pos":I
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 119
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v2}, Lnet/steamcrafted/loadtoast/LoadToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 122
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private slideUp()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    .line 128
    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 129
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 130
    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->start()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mVisible:Z

    .line 134
    return-void
.end method


# virtual methods
.method public error()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToastView;->error()V

    .line 110
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->slideUp()V

    goto :goto_0
.end method

.method public setBackgroundColor(I)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setBackgroundColor(I)V

    .line 66
    return-object p0
.end method

.method public setProgressColor(I)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setProgressColor(I)V

    .line 71
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setText(Ljava/lang/String;)V

    .line 56
    return-object p0
.end method

.method public setTextColor(I)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setTextColor(I)V

    .line 61
    return-object p0
.end method

.method public setTranslationY(I)Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 50
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    .line 51
    return-object p0
.end method

.method public show()Lnet/steamcrafted/loadtoast/LoadToast;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 75
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    if-nez v0, :cond_0

    .line 76
    iput-boolean v4, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mShowCalled:Z

    .line 92
    :goto_0
    return-object p0

    .line 79
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToastView;->show()V

    .line 80
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v2}, Lnet/steamcrafted/loadtoast/LoadToastView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 81
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 82
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 85
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mTranslationY:I

    add-int/lit8 v1, v1, 0x19

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 86
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 87
    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->start()V

    .line 89
    iput-boolean v4, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mVisible:Z

    .line 90
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->checkZPosition()V

    goto :goto_0
.end method

.method public success()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mInflated:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mToastCanceled:Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast;->mView:Lnet/steamcrafted/loadtoast/LoadToastView;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/LoadToastView;->success()V

    .line 101
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToast;->slideUp()V

    goto :goto_0
.end method
