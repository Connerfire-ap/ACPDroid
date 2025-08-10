.class Lcom/lb/auto_fit_textview/AutoResizeTextView$1;
.super Ljava/lang/Object;
.source "AutoResizeTextView.java"

# interfaces
.implements Lcom/lb/auto_fit_textview/AutoResizeTextView$SizeTester;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/auto_fit_textview/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final textRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/lb/auto_fit_textview/AutoResizeTextView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/lb/auto_fit_textview/AutoResizeTextView;

    .line 62
    iput-object p1, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public onTestSize(ILandroid/graphics/RectF;)I
    .locals 16
    .param p1, "suggestedSize"    # I
    .param p2, "availableSpace"    # Landroid/graphics/RectF;

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    # getter for: Lcom/lb/auto_fit_textview/AutoResizeTextView;->_paint:Landroid/text/TextPaint;
    invoke-static {v1}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->access$000(Lcom/lb/auto_fit_textview/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v1

    move/from16 v2, p1

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 69
    iget-object v1, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    invoke-virtual {v1}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 71
    .local v1, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v1, :cond_0

    .line 72
    iget-object v3, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    invoke-virtual {v3}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    invoke-interface {v1, v3, v4}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "text":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    iget-object v3, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    invoke-virtual {v3}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .restart local v3    # "text":Ljava/lang/String;
    :goto_0
    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    invoke-virtual {v4}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getMaxLines()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v13, v4

    .line 76
    .local v13, "singleLine":Z
    const/4 v14, -0x1

    if-eqz v13, :cond_2

    .line 77
    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    # getter for: Lcom/lb/auto_fit_textview/AutoResizeTextView;->_paint:Landroid/text/TextPaint;
    invoke-static {v5}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->access$000(Lcom/lb/auto_fit_textview/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v5

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 78
    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    # getter for: Lcom/lb/auto_fit_textview/AutoResizeTextView;->_paint:Landroid/text/TextPaint;
    invoke-static {v5}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->access$000(Lcom/lb/auto_fit_textview/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    .line 80
    :cond_2
    new-instance v15, Landroid/text/StaticLayout;

    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    # getter for: Lcom/lb/auto_fit_textview/AutoResizeTextView;->_paint:Landroid/text/TextPaint;
    invoke-static {v4}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->access$000(Lcom/lb/auto_fit_textview/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v6

    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    # getter for: Lcom/lb/auto_fit_textview/AutoResizeTextView;->_widthLimit:I
    invoke-static {v4}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->access$100(Lcom/lb/auto_fit_textview/AutoResizeTextView;)I

    move-result v7

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    # getter for: Lcom/lb/auto_fit_textview/AutoResizeTextView;->_spacingMult:F
    invoke-static {v4}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->access$200(Lcom/lb/auto_fit_textview/AutoResizeTextView;)F

    move-result v9

    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    # getter for: Lcom/lb/auto_fit_textview/AutoResizeTextView;->_spacingAdd:F
    invoke-static {v4}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->access$300(Lcom/lb/auto_fit_textview/AutoResizeTextView;)F

    move-result v10

    const/4 v11, 0x1

    move-object v4, v15

    move-object v5, v3

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 82
    .local v4, "layout":Landroid/text/StaticLayout;
    iget-object v5, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    invoke-virtual {v5}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getMaxLines()I

    move-result v5

    if-eq v5, v14, :cond_3

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    iget-object v6, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    invoke-virtual {v6}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->getMaxLines()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 83
    return v12

    .line 84
    :cond_3
    iget-object v5, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 85
    const/4 v5, -0x1

    .line 86
    .local v5, "maxWidth":I
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    .line 87
    .local v6, "lineCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_6

    .line 88
    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    .line 89
    .local v8, "end":I
    add-int/lit8 v9, v6, -0x1

    if-ge v7, v9, :cond_4

    if-lez v8, :cond_4

    iget-object v9, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->this$0:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/lb/auto_fit_textview/AutoResizeTextView;->isValidWordWrap(CC)Z

    move-result v9

    if-nez v9, :cond_4

    .line 90
    return v12

    .line 91
    :cond_4
    int-to-float v9, v5

    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v10

    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    .line 92
    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v9, v10

    move v5, v9

    .line 87
    .end local v8    # "end":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 97
    .end local v7    # "i":I
    :cond_6
    iget-object v7, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    int-to-float v8, v5

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 99
    .end local v4    # "layout":Landroid/text/StaticLayout;
    .end local v5    # "maxWidth":I
    .end local v6    # "lineCount":I
    :goto_3
    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 100
    iget-object v4, v0, Lcom/lb/auto_fit_textview/AutoResizeTextView$1;->textRect:Landroid/graphics/RectF;

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 102
    return v14

    .line 104
    :cond_7
    return v12
.end method
