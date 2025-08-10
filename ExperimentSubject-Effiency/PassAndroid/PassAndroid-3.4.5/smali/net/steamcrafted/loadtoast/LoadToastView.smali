.class public Lnet/steamcrafted/loadtoast/LoadToastView;
.super Landroid/widget/ImageView;
.source "LoadToastView.java"


# instance fields
.field private BASE_TEXT_SIZE:I

.field private IMAGE_WIDTH:I

.field private LINE_WIDTH:I

.field private MARQUE_STEP:I

.field private MAX_TEXT_WIDTH:I

.field private TOAST_HEIGHT:I

.field private WIDTH_SCALE:F

.field private backPaint:Landroid/graphics/Paint;

.field private cmp:Lcom/nineoldandroids/animation/ValueAnimator;

.field private completeicon:Landroid/graphics/drawable/Drawable;

.field private errorPaint:Landroid/graphics/Paint;

.field private failedicon:Landroid/graphics/drawable/Drawable;

.field private iconBackPaint:Landroid/graphics/Paint;

.field private iconBounds:Landroid/graphics/Rect;

.field private loaderPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private outOfBounds:Z

.field private prevUpdate:J

.field private spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

.field private spinnerRect:Landroid/graphics/RectF;

.field private success:Z

.field private successPaint:Landroid/graphics/Paint;

.field private textPaint:Landroid/graphics/Paint;

.field private toastPath:Landroid/graphics/Path;

.field private va:Lcom/nineoldandroids/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBackPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->successPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->errorPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    .line 39
    const/16 v1, 0x64

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    .line 40
    const/16 v1, 0x14

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    .line 41
    const/16 v1, 0x28

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    .line 42
    const/16 v1, 0x30

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    .line 43
    const/4 v1, 0x3

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->LINE_WIDTH:I

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    .line 45
    iput v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MARQUE_STEP:I

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    .line 55
    iput-boolean v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->outOfBounds:Z

    .line 58
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    .line 63
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBackPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->fetchPrimaryColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->successPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/steamcrafted/loadtoast/R$color;->color_success:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/steamcrafted/loadtoast/R$color;->color_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->successPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    invoke-direct {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    .line 84
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    invoke-direct {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    .line 85
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    invoke-direct {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    .line 86
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    invoke-direct {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    .line 87
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->LINE_WIDTH:I

    invoke-direct {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->LINE_WIDTH:I

    .line 88
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MARQUE_STEP:I

    invoke-direct {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MARQUE_STEP:I

    .line 90
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 91
    .local v0, "padding":I
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    iget v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    iget v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    .line 92
    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnet/steamcrafted/loadtoast/R$drawable;->ic_navigation_check:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->completeicon:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->completeicon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 94
    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnet/steamcrafted/loadtoast/R$drawable;->ic_alert_warning:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->failedicon:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->failedicon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 97
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 98
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 99
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v2, Lnet/steamcrafted/loadtoast/LoadToastView$1;

    invoke-direct {v2, p0}, Lnet/steamcrafted/loadtoast/LoadToastView$1;-><init>(Lnet/steamcrafted/loadtoast/LoadToastView;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 106
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    const v2, 0x98967f

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 107
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 110
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->initSpinner()V

    .line 112
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->calculateBounds()V

    .line 113
    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lnet/steamcrafted/loadtoast/LoadToastView;F)F
    .locals 0
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/LoadToastView;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    return p1
.end method

.method private calculateBounds()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    iput-boolean v5, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->outOfBounds:Z

    .line 221
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    .line 223
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 224
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    iget-object v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 225
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    if-le v1, v2, :cond_1

    .line 226
    iget v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->BASE_TEXT_SIZE:I

    .line 227
    .local v0, "textSize":I
    :goto_0
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    if-le v1, v2, :cond_0

    .line 228
    add-int/lit8 v0, v0, -0x1

    .line 229
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 230
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    iget-object v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    if-le v1, v2, :cond_1

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->outOfBounds:Z

    .line 236
    .end local v0    # "textSize":I
    :cond_1
    return-void
.end method

.method private done()V
    .locals 4

    .prologue
    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 184
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 185
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lnet/steamcrafted/loadtoast/LoadToastView$2;

    invoke-direct {v1, p0}, Lnet/steamcrafted/loadtoast/LoadToastView$2;-><init>(Lnet/steamcrafted/loadtoast/LoadToastView;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 194
    return-void

    .line 183
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dpToPx(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 211
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private fetchPrimaryColor()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x9b

    .line 197
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 199
    .local v1, "color":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 200
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 202
    .local v2, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->data:I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x1010435

    aput v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "typedValue":Landroid/util/TypedValue;
    :cond_0
    return v1
.end method

.method private initSpinner()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    .line 126
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->isRunningTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    .line 129
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 130
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v1, v3}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 132
    iget v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    .line 133
    .local v0, "mDiameter":I
    iget v12, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->LINE_WIDTH:I

    .line 134
    .local v12, "mProgressStokeWidth":I
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    int-to-double v2, v0

    int-to-double v4, v0

    mul-int/lit8 v6, v12, 0x2

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x4

    int-to-double v6, v6

    int-to-double v8, v12

    mul-int/lit8 v10, v12, 0x4

    int-to-float v10, v10

    mul-int/lit8 v11, v12, 0x2

    int-to-float v11, v11

    invoke-virtual/range {v1 .. v11}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 141
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v1, v13}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 142
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    new-array v2, v14, [I

    iget-object v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    aput v3, v2, v13

    invoke-virtual {v1, v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 143
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v1, v14, v13}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setVisible(ZZ)Z

    .line 144
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setAlpha(I)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {p0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->start()V

    .line 151
    .end local v0    # "mDiameter":I
    .end local v12    # "mProgressStokeWidth":I
    :cond_0
    return-void
.end method

.method private isRunningTest()Z
    .locals 1

    .prologue
    .line 117
    :try_start_0
    const-string v0, "android.support.test.espresso.Espresso"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureHeight(I)I
    .locals 3
    .param p1, "measureSpec"    # I

    .prologue
    .line 372
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 373
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 375
    .local v1, "specSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 385
    .end local v1    # "specSize":I
    :goto_0
    return v1

    .line 380
    .restart local v1    # "specSize":I
    :cond_0
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 382
    iget v2, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 385
    :cond_1
    iget v1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 347
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 349
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 351
    move v0, v2

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    iget v3, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    iget v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    add-int v0, v3, v4

    .line 356
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 358
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public error()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    .line 179
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->done()V

    .line 180
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 393
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 394
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->va:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 395
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 242
    .local v23, "ws":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v23, 0x0

    .line 244
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v23

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v22, v2, v3

    .line 245
    .local v22, "translateLoad":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v15, v22, v2

    .line 246
    .local v15, "leftMargin":F
    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, v23

    const/high16 v4, 0x41100000    # 9.0f

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 247
    .local v19, "textOpactity":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v22, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x4

    .line 249
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x4

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v22, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x4

    .line 251
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lnet/steamcrafted/loadtoast/LoadToastView;->dpToPx(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 248
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    double-to-int v9, v2

    .line 254
    .local v9, "circleOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    move/from16 v20, v0

    .line 255
    .local v20, "th":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v17, v2, 0x2

    .line 256
    .local v17, "pd":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    double-to-int v13, v2

    .line 257
    .local v13, "iconoffset":I
    move-object/from16 v0, p0

    iget v14, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    .line 259
    .local v14, "iw":I
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v15

    move/from16 v0, v20

    int-to-float v3, v0

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v23

    add-float/2addr v2, v3

    sub-float v21, v2, v22

    .line 261
    .local v21, "totalWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    div-int/lit8 v3, v20, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v15

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v23

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    int-to-float v3, v9

    const/4 v4, 0x0

    div-int/lit8 v5, v20, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v20, 0x2

    sub-int/2addr v6, v9

    int-to-float v6, v6

    div-int/lit8 v7, v20, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v20, 0x2

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    move/from16 v0, v17

    neg-int v3, v0

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    neg-int v4, v13

    int-to-float v4, v4

    neg-int v5, v14

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v13

    int-to-float v5, v5

    neg-int v6, v14

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v14

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    neg-int v8, v14

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    neg-int v3, v13

    int-to-float v3, v3

    const/4 v4, 0x0

    neg-int v5, v14

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v14, 0x2

    sub-int/2addr v6, v13

    int-to-float v6, v6

    neg-int v7, v14

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v14, 0x2

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    int-to-float v4, v13

    div-int/lit8 v5, v14, 0x2

    sub-int/2addr v5, v13

    int-to-float v5, v5

    div-int/lit8 v6, v14, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v14, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v14, 0x2

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    int-to-float v3, v13

    const/4 v4, 0x0

    div-int/lit8 v5, v14, 0x2

    int-to-float v5, v5

    neg-int v6, v14

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v13

    int-to-float v6, v6

    div-int/lit8 v7, v14, 0x2

    int-to-float v7, v7

    neg-int v8, v14

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    move/from16 v0, v17

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    int-to-float v4, v9

    div-int/lit8 v5, v20, 0x2

    sub-int v5, v9, v5

    int-to-float v5, v5

    div-int/lit8 v6, v20, 0x2

    int-to-float v6, v6

    move/from16 v0, v20

    neg-int v7, v0

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v20, 0x2

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->IMAGE_WIDTH:I

    neg-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v23

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    neg-int v3, v9

    int-to-float v3, v3

    const/4 v4, 0x0

    move/from16 v0, v20

    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move/from16 v0, v20

    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    int-to-float v6, v6

    move/from16 v0, v20

    neg-int v7, v0

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move/from16 v0, v20

    neg-int v8, v0

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    neg-int v4, v9

    int-to-float v4, v4

    neg-int v5, v9

    div-int/lit8 v6, v20, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move/from16 v0, v20

    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v20, 0x2

    int-to-float v7, v7

    move/from16 v0, v20

    neg-int v8, v0

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ff33333    # 1.9f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->toastPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 285
    move-object/from16 v0, p0

    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    int-to-float v2, v2

    sub-float v2, v21, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 290
    move-object/from16 v0, p0

    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 291
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->completeicon:Landroid/graphics/drawable/Drawable;

    .line 292
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v10, v2, v3

    .line 293
    .local v10, "circleProg":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43000000    # 128.0f

    mul-float/2addr v3, v10

    const/high16 v4, 0x42fe0000    # 127.0f

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 294
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 295
    .local v16, "paddingicon":I
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v2, v3

    float-to-int v11, v2

    .line 296
    .local v11, "completeoff":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    add-int v3, v3, v16

    add-int/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    sub-int v4, v4, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    sub-int v5, v5, v16

    add-int/2addr v5, v11

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v3, v15, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v10

    move-object/from16 v0, p0

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v2

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v5, v10

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->successPaint:Landroid/graphics/Paint;

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 305
    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v10

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 306
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 309
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    .line 331
    .end local v10    # "circleProg":F
    .end local v11    # "completeoff":I
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "paddingicon":I
    :goto_2
    return-void

    .line 291
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->failedicon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 300
    .restart local v10    # "circleProg":F
    .restart local v11    # "completeoff":I
    .restart local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "paddingicon":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->errorPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 313
    .end local v10    # "circleProg":F
    .end local v11    # "completeoff":I
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "paddingicon":I
    :cond_3
    div-int/lit8 v2, v20, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v24, v0

    .line 315
    .local v24, "yPos":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->outOfBounds:Z

    if-eqz v2, :cond_6

    .line 316
    const/16 v18, 0x0

    .line 317
    .local v18, "shift":F
    move-object/from16 v0, p0

    iget-wide v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    .line 326
    :cond_4
    :goto_3
    div-int/lit8 v2, v20, 0x2

    const/4 v3, 0x0

    div-int/lit8 v4, v20, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->TOAST_HEIGHT:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    div-int/lit8 v3, v20, 0x2

    int-to-float v3, v3

    sub-float v3, v3, v18

    move-object/from16 v0, p0

    iget v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move/from16 v0, v24

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 320
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MARQUE_STEP:I

    int-to-float v3, v3

    mul-float v18, v2, v3

    .line 322
    move-object/from16 v0, p0

    iget v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    int-to-float v2, v2

    sub-float v2, v18, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 323
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->prevUpdate:J

    goto :goto_3

    .line 329
    .end local v18    # "shift":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v2, v20, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->MAX_TEXT_WIDTH:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v6, v2

    move/from16 v0, v24

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lnet/steamcrafted/loadtoast/LoadToastView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lnet/steamcrafted/loadtoast/LoadToastView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/steamcrafted/loadtoast/LoadToastView;->setMeasuredDimension(II)V

    .line 336
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->iconBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    return-void
.end method

.method public setProgressColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->loaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->spinnerDrawable:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 165
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->mText:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->calculateBounds()V

    .line 217
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->WIDTH_SCALE:F

    .line 169
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->cmp:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 170
    :cond_0
    return-void
.end method

.method public success()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/LoadToastView;->success:Z

    .line 174
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/LoadToastView;->done()V

    .line 175
    return-void
.end method
