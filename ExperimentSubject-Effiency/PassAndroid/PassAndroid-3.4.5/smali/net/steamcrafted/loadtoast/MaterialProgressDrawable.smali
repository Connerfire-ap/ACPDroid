.class public Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$StartCurveInterpolator;,
        Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$EndCurveInterpolator;,
        Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;,
        Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x535

.field private static final ARROW_HEIGHT:I = 0x5

.field static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 0.0f

.field private static final ARROW_WIDTH:I = 0xa

.field static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field public static final DEFAULT:I = 0x1

.field private static final EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STROKE_WIDTH:F = 2.5f

.field static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimExcutor:Landroid/view/View;

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mShowArrowOnFirstStart:Z

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$EndCurveInterpolator;

    invoke-direct {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$EndCurveInterpolator;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$1;)V

    sput-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$StartCurveInterpolator;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$1;)V

    sput-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animExcutor"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 78
    new-array v0, v3, [I

    const/high16 v1, -0x1000000

    aput v1, v0, v2

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->COLORS:[I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$1;

    invoke-direct {v0, p0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$1;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;)V

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 114
    iput-boolean v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    .line 117
    iput-object p2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 120
    new-instance v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .line 121
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 123
    invoke-virtual {p0, v3}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->updateSizes(I)V

    .line 124
    invoke-direct {p0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setupAnimators()V

    .line 125
    return-void
.end method

.method static synthetic access$200(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;FLnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->applyFinishTranslation(FLnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;

    .prologue
    .line 41
    iget v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$502(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .prologue
    .line 307
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 308
    .local v2, "targetRotation":F
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v4

    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 309
    .local v1, "startTrim":F
    invoke-virtual {p2, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 310
    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    invoke-virtual {p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 311
    .local v0, "rotation":F
    invoke-virtual {p2, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 312
    return-void
.end method

.method private getRotation()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setupAnimators()V
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .line 316
    .local v1, "ring":Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;
    new-instance v0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;

    invoke-direct {v0, p0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$2;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V

    .line 354
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 355
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 356
    sget-object v2, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 357
    new-instance v2, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;

    invoke-direct {v2, p0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$3;-><init>(Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 385
    iput-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 386
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 233
    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 234
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 235
    .local v1, "saveCount":I
    iget v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 236
    iget-object v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 237
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 238
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 247
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 180
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 207
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 251
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 252
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 217
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 218
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 219
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 199
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 200
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 261
    iput p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRotation:F

    .line 262
    invoke-virtual {p0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->invalidateSelf()V

    .line 263
    return-void
.end method

.method public setSizeParameters(DDDDFF)V
    .locals 5
    .param p1, "progressCircleWidth"    # D
    .param p3, "progressCircleHeight"    # D
    .param p5, "centerRadius"    # D
    .param p7, "strokeWidth"    # D
    .param p9, "arrowWidth"    # F
    .param p10, "arrowHeight"    # F

    .prologue
    .line 133
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    .line 134
    .local v0, "ring":Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;
    iput-wide p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mWidth:D

    .line 135
    iput-wide p3, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mHeight:D

    .line 136
    double-to-float v1, p7

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 137
    invoke-virtual {v0, p5, p6}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 139
    invoke-virtual {v0, p9, p10}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 140
    iget-wide v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mWidth:D

    double-to-int v1, v2

    iget-wide v2, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mHeight:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 141
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .prologue
    .line 189
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 190
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 191
    return-void
.end method

.method public showArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 173
    return-void
.end method

.method public showArrowOnFirstStart(Z)V
    .locals 0
    .param p1, "showArrowOnFirstStart"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    .line 390
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 278
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 279
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    iget-boolean v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 282
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mFinishing:Z

    .line 284
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 288
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 289
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x535

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 290
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setRotation(F)V

    .line 298
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 299
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 300
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mRing:Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 301
    return-void
.end method

.method public updateSizes(I)V
    .locals 13
    .param p1, "size"    # I
        .annotation build Lnet/steamcrafted/loadtoast/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x42600000    # 56.0f

    const/high16 v4, 0x42200000    # 40.0f

    .line 148
    iget-object v1, p0, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 149
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    .line 151
    .local v12, "screenDensity":F
    if-nez p1, :cond_0

    .line 152
    mul-float v1, v5, v12

    float-to-double v2, v1

    mul-float v1, v5, v12

    float-to-double v4, v1

    const/high16 v1, 0x41480000    # 12.5f

    mul-float/2addr v1, v12

    float-to-double v6, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v12

    float-to-double v8, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v10, v1, v12

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v11, v1, v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 166
    :goto_0
    return-void

    .line 159
    :cond_0
    mul-float v1, v4, v12

    float-to-double v2, v1

    mul-float v1, v4, v12

    float-to-double v4, v1

    const/high16 v1, 0x410c0000    # 8.75f

    mul-float/2addr v1, v12

    float-to-double v6, v1

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v1, v12

    float-to-double v8, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v10, v1, v12

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v11, v1, v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lnet/steamcrafted/loadtoast/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
