.class public Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CalligraphyTypefaceSpan.java"


# instance fields
.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 11
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 12
    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 17
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "typeface is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private apply(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 31
    .local v0, "oldTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 32
    .local v1, "oldStyle":I
    :goto_0
    iget-object v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    .line 34
    .local v2, "fakeStyle":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 35
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 38
    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    .line 39
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 42
    :cond_2
    iget-object v3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "drawState"    # Landroid/text/TextPaint;

    .line 21
    invoke-direct {p0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->apply(Landroid/graphics/Paint;)V

    .line 22
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 26
    invoke-direct {p0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;->apply(Landroid/graphics/Paint;)V

    .line 27
    return-void
.end method
