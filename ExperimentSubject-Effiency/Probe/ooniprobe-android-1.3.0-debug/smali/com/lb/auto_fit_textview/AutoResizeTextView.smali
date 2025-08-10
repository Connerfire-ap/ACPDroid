.class public Lcom/lb/auto_fit_textview/AutoResizeTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;
    }
.end annotation


# static fields
.field private static final NO_LINE_LIMIT:I = -0x1


# instance fields
.field private final _availableSpaceRect:Landroid/graphics/RectF;

.field private _initialized:Z

.field private _maxLines:I

.field private _maxTextSize:F

.field private _minTextSize:F

.field private _paint:Landroid/text/TextPaint;

.field private final _sizeTester:Lcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;

.field private _spacingAdd:F

.field private _spacingMult:F

.field private _widthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    const v1, 0x1010084

    invoke-direct {p0, p1, v0, v1}, Lcom/lb/auto_fit_textview/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_availableSpaceRect:Landroid/graphics/RectF;

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_spacingMult:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_spacingAdd:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_initialized:Z

    .line 55
    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_minTextSize:F

    .line 56
    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxTextSize:F

    .line 57
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_paint:Landroid/text/TextPaint;

    .line 58
    iget v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxLines:I

    if-nez v0, :cond_0

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxLines:I

    .line 62
    :cond_0
    new-instance v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;-><init>(Lcom/lb/auto_fit_textview/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_sizeTester:Lcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_initialized:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/lb/auto_fit_textview/AutoResizeTextView;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/lb/auto_fit_textview/AutoResizeTextView;

    .line 24
    iget-object v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_paint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lb/auto_fit_textview/AutoResizeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lb/auto_fit_textview/AutoResizeTextView;

    .line 24
    iget v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_widthLimit:I

    return v0
.end method

.method static synthetic access$200(Lcom/lb/auto_fit_textview/AutoResizeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lb/auto_fit_textview/AutoResizeTextView;

    .line 24
    iget v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_spacingMult:F

    return v0
.end method

.method static synthetic access$300(Lcom/lb/auto_fit_textview/AutoResizeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lb/auto_fit_textview/AutoResizeTextView;

    .line 24
    iget v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_spacingAdd:F

    return v0
.end method

.method private adjustTextSize()V
    .locals 4

    .line 203
    iget-boolean v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_initialized:Z

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_minTextSize:F

    float-to-int v0, v0

    .line 206
    .local v0, "startSize":I
    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 207
    .local v1, "heightLimit":I
    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_widthLimit:I

    .line 208
    if-gtz v2, :cond_1

    .line 209
    return-void

    .line 210
    :cond_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_paint:Landroid/text/TextPaint;

    .line 211
    iget-object v2, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_availableSpaceRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_widthLimit:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 212
    iget-object v2, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_availableSpaceRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 213
    invoke-direct {p0, v0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->superSetTextSize(I)V

    .line 216
    return-void
.end method

.method private binarySearch(IILcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "sizeTester"    # Lcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;
    .param p4, "availableSpace"    # Landroid/graphics/RectF;

    .line 224
    move v0, p1

    .local v0, "lastBest":I
    move v1, p1

    .local v1, "lo":I
    add-int/lit8 v2, p2, -0x1

    .line 225
    .local v2, "hi":I
    :goto_0
    if-gt v1, v2, :cond_2

    .line 226
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 227
    .local v3, "mid":I
    invoke-interface {p3, v3, p4}, Lcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;->onTestSize(ILandroid/graphics/RectF;)I

    move-result v4

    .line 228
    .local v4, "midValCmp":I
    if-gez v4, :cond_0

    .line 229
    move v0, v1

    .line 230
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 231
    :cond_0
    if-lez v4, :cond_1

    .line 232
    add-int/lit8 v2, v3, -0x1

    .line 233
    move v0, v2

    .line 235
    .end local v4    # "midValCmp":I
    :goto_1
    goto :goto_0

    .line 234
    .restart local v4    # "midValCmp":I
    :cond_1
    return v3

    .line 238
    .end local v3    # "mid":I
    .end local v4    # "midValCmp":I
    :cond_2
    return v0
.end method

.method private superSetTextSize(I)V
    .locals 3
    .param p1, "startSize"    # I

    .line 219
    iget v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxTextSize:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_sizeTester:Lcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;

    iget-object v2, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_availableSpaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->binarySearch(IILcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v0

    .line 220
    .local v0, "textSize":I
    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-super {p0, v2, v1}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    .line 221
    return-void
.end method


# virtual methods
.method public getMaxLines()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxLines:I

    return v0
.end method

.method public isValidWordWrap(CC)Z
    .locals 1
    .param p1, "before"    # C
    .param p2, "after"    # C

    .line 111
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldwidth"    # I
    .param p4, "oldheight"    # I

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onSizeChanged(IIII)V

    .line 250
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 252
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 244
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 245
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "allCaps"    # Z

    .line 116
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setAllCaps(Z)V

    .line 117
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 118
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .line 180
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setLineSpacing(FF)V

    .line 181
    iput p2, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_spacingMult:F

    .line 182
    iput p1, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_spacingAdd:F

    .line 183
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 162
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setLines(I)V

    .line 163
    iput p1, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxLines:I

    .line 164
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 165
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxLines"    # I

    .line 134
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setMaxLines(I)V

    .line 135
    iput p1, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxLines:I

    .line 136
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 137
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .param p1, "minTextSize"    # F

    .line 191
    iput p1, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_minTextSize:F

    .line 192
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 193
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->setSingleLine()V

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxLines:I

    .line 148
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 149
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z

    .line 153
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setSingleLine(Z)V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxLines:I

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxLines:I

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 158
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 128
    iput p1, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxTextSize:F

    .line 129
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 130
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 169
    invoke-virtual {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    goto :goto_0

    .line 173
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 174
    .restart local v1    # "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView;->_maxTextSize:F

    .line 175
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 176
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 122
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    invoke-direct {p0}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->adjustTextSize()V

    .line 124
    return-void
.end method
