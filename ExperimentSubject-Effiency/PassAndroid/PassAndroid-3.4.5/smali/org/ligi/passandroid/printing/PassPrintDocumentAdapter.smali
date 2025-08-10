.class public final Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PassPrintDocumentAdapter.kt"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J0\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J3\u0010\u0019\u001a\u00020\u000c2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 H\u0016\u00a2\u0006\u0002\u0010!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;",
        "Landroid/print/PrintDocumentAdapter;",
        "context",
        "Landroid/content/Context;",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "jobName",
        "",
        "(Landroid/content/Context;Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V",
        "mPdfDocument",
        "Landroid/print/pdf/PrintedPdfDocument;",
        "drawPass",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onLayout",
        "oldAttributes",
        "Landroid/print/PrintAttributes;",
        "newAttributes",
        "cancellationSignal",
        "Landroid/os/CancellationSignal;",
        "layoutResultCallback",
        "Landroid/print/PrintDocumentAdapter$LayoutResultCallback;",
        "bundle",
        "Landroid/os/Bundle;",
        "onWrite",
        "pageRanges",
        "",
        "Landroid/print/PageRange;",
        "destination",
        "Landroid/os/ParcelFileDescriptor;",
        "callback",
        "Landroid/print/PrintDocumentAdapter$WriteResultCallback;",
        "([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final jobName:Ljava/lang/String;

.field private mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

.field private final pass:Lorg/ligi/passandroid/model/pass/Pass;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "jobName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    iput-object p3, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->jobName:Ljava/lang/String;

    return-void
.end method

.method private final drawPass(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 70
    .local v8, "centerPaint":Landroid/graphics/Paint;
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/ligi/passandroid/model/pass/Pass;->getDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v19

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v9, v17, v18

    .line 75
    .local v9, "currentBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/ligi/passandroid/model/pass/Pass;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v5

    .line 76
    .local v5, "barCode":Lorg/ligi/passandroid/model/pass/BarCode;
    if-eqz v5, :cond_0

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "context.resources"

    invoke-static/range {v17 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/ligi/passandroid/model/pass/BarCode;->getBitmap(Landroid/content/res/Resources;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    .line 79
    .local v7, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v7, :cond_0

    .line 80
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 81
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "bitmap"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v16, "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    div-float v17, v17, v18

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v14, v17, v18

    .line 84
    .local v14, "ratio":F
    new-instance v10, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    .local v10, "destRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v17

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 88
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v9, v9, v17

    .line 90
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 92
    invoke-virtual {v5}, Lorg/ligi/passandroid/model/pass/BarCode;->getAlternativeText()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 93
    invoke-virtual {v5}, Lorg/ligi/passandroid/model/pass/BarCode;->getAlternativeText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v20

    add-float v19, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    const/16 v17, 0x7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    add-float v9, v9, v17

    .line 99
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "destRect":Landroid/graphics/Rect;
    .end local v14    # "ratio":F
    .end local v16    # "srcRect":Landroid/graphics/Rect;
    :cond_0
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 100
    .local v13, "leftPaint":Landroid/graphics/Paint;
    sget-object v17, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 101
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 103
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 104
    .local v15, "rightPaint":Landroid/graphics/Paint;
    sget-object v17, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/ligi/passandroid/model/pass/Pass;->getFields()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 116
    .local v4, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lorg/ligi/passandroid/model/pass/PassField;

    .line 107
    .local v12, "it":Lorg/ligi/passandroid/model/pass/PassField;
    invoke-virtual {v12}, Lorg/ligi/passandroid/model/pass/PassField;->getHide()Z

    move-result v18

    if-nez v18, :cond_1

    .line 108
    invoke-virtual {v12}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v18

    const-string v19, ": "

    invoke-static/range {v18 .. v19}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v9, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v9, v9, v18

    .line 112
    :cond_1
    nop

    goto :goto_0

    .line 117
    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v12    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_2
    nop

    .line 113
    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "bundle"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const-string v1, "oldAttributes"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newAttributes"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cancellationSignal"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layoutResultCallback"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bundle"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v2, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    iput-object v1, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    .line 39
    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->jobName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 40
    .local v0, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p4, v0, v3}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 8
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "destination"    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string v3, "pageRanges"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "destination"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cancellationSignal"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v3, v7}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 50
    .local v2, "page":Landroid/graphics/pdf/PdfDocument$Page;
    const-string v3, "page"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 52
    .local v0, "canvas":Landroid/graphics/Canvas;
    const-string v3, "canvas"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->drawPass(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v3, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v3, v2}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 55
    nop

    .line 56
    :try_start_0
    iget-object v5, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {v5, v3}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v3, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v3}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    move-object v3, v4

    .line 62
    check-cast v3, Landroid/print/pdf/PrintedPdfDocument;

    iput-object v3, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    .line 63
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/print/PageRange;

    sget-object v4, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v4, v3, v7

    invoke-virtual {p4, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    .line 66
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p4, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    iget-object v3, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v3}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 62
    check-cast v4, Landroid/print/pdf/PrintedPdfDocument;

    iput-object v4, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 61
    iget-object v5, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    if-nez v5, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 62
    check-cast v4, Landroid/print/pdf/PrintedPdfDocument;

    iput-object v4, p0, Lorg/ligi/passandroid/printing/PassPrintDocumentAdapter;->mPdfDocument:Landroid/print/pdf/PrintedPdfDocument;

    throw v3
.end method
