.class public final Lorg/ligi/passandroid/functions/BarcodeKt;
.super Ljava/lang/Object;
.source "Barcode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a \u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "generateBarCodeBitmap",
        "Landroid/graphics/Bitmap;",
        "data",
        "",
        "type",
        "Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;",
        "generateBitmapDrawable",
        "Landroid/graphics/drawable/BitmapDrawable;",
        "resources",
        "Landroid/content/res/Resources;",
        "getBitMatrix",
        "Lcom/google/zxing/common/BitMatrix;",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final generateBarCodeBitmap(Ljava/lang/String;Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "data"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, "data"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "type"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p0

    .line 22
    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    move v8, v3

    :goto_0
    if-eqz v8, :cond_2

    move-object v0, v9

    .line 56
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v8, v10

    .line 22
    goto :goto_0

    .line 26
    :cond_2
    nop

    .line 27
    :try_start_0
    invoke-static {p0, p1}, Lorg/ligi/passandroid/functions/BarcodeKt;->getBitMatrix(Ljava/lang/String;Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    .line 28
    .local v4, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    if-ne v8, v3, :cond_3

    .line 31
    .local v3, "is1D":Z
    :goto_2
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    .line 32
    .local v5, "width":I
    if-eqz v3, :cond_4

    div-int/lit8 v2, v5, 0x5

    .line 36
    .local v2, "height":I
    :goto_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, "barcode_image":Landroid/graphics/Bitmap;
    add-int/lit8 v12, v2, -0x1

    if-gt v10, v12, :cond_0

    move v11, v10

    .line 40
    :goto_4
    add-int/lit8 v13, v5, -0x1

    if-gt v10, v13, :cond_7

    move v6, v10

    .line 41
    :goto_5
    if-eqz v3, :cond_5

    move v8, v10

    :goto_6
    invoke-virtual {v4, v6, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v10

    :goto_7
    invoke-virtual {v0, v6, v11, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 40
    if-eq v6, v13, :cond_7

    add-int/lit8 v6, v6, 0x1

    .local v6, "x":I
    goto :goto_5

    .end local v0    # "barcode_image":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "is1D":Z
    .end local v5    # "width":I
    .end local v6    # "x":I
    :cond_3
    move v3, v10

    .line 28
    goto :goto_2

    .line 32
    .restart local v3    # "is1D":Z
    .restart local v5    # "width":I
    :cond_4
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    goto :goto_3

    .restart local v0    # "barcode_image":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    :cond_5
    move v8, v11

    .line 41
    goto :goto_6

    :cond_6
    const v8, 0xffffff

    goto :goto_7

    .line 39
    :cond_7
    if-eq v11, v12, :cond_0

    add-int/lit8 v7, v11, 0x1

    .local v7, "y":I
    move v11, v7

    goto :goto_4

    .line 46
    .end local v0    # "barcode_image":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "is1D":Z
    .end local v4    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v5    # "width":I
    .end local v7    # "y":I
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Lcom/google/zxing/WriterException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not write image "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;)V

    move-object v0, v9

    .line 49
    goto :goto_1

    .line 50
    .end local v1    # "e":Lcom/google/zxing/WriterException;
    :catch_1
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not write image "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;)V

    move-object v0, v9

    .line 52
    goto :goto_1

    .line 53
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not write image "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;)V

    move-object v0, v9

    .line 56
    goto/16 :goto_1
.end method

.method public static final generateBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "data"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v2, "resources"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1, p2}, Lorg/ligi/passandroid/functions/BarcodeKt;->generateBarCodeBitmap(Ljava/lang/String;Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 15
    .local v0, "$receiver":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 17
    nop

    .line 14
    .end local v0    # "$receiver":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getBitMatrix(Ljava/lang/String;Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->zxingBarCodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method
