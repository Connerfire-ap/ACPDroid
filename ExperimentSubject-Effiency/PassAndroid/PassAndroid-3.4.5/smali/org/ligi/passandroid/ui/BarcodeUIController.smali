.class public final Lorg/ligi/passandroid/ui/BarcodeUIController;
.super Ljava/lang/Object;
.source "BarcodeUIController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000cH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/BarcodeUIController;",
        "",
        "rootView",
        "Landroid/view/View;",
        "barCode",
        "Lorg/ligi/passandroid/model/pass/BarCode;",
        "activity",
        "Landroid/app/Activity;",
        "passViewHelper",
        "Lorg/ligi/passandroid/ui/PassViewHelper;",
        "(Landroid/view/View;Lorg/ligi/passandroid/model/pass/BarCode;Landroid/app/Activity;Lorg/ligi/passandroid/ui/PassViewHelper;)V",
        "currentBarcodeWidth",
        "",
        "getRootView",
        "()Landroid/view/View;",
        "getBarcodeView",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "setBarCodeSize",
        "",
        "width",
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
.field private final barCode:Lorg/ligi/passandroid/model/pass/BarCode;

.field private currentBarcodeWidth:I

.field private final passViewHelper:Lorg/ligi/passandroid/ui/PassViewHelper;

.field private final rootView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/ligi/passandroid/model/pass/BarCode;Landroid/app/Activity;Lorg/ligi/passandroid/ui/PassViewHelper;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "barCode"    # Lorg/ligi/passandroid/model/pass/BarCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "passViewHelper"    # Lorg/ligi/passandroid/ui/PassViewHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const-string v2, "rootView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "activity"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "passViewHelper"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->barCode:Lorg/ligi/passandroid/model/pass/BarCode;

    iput-object p4, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->passViewHelper:Lorg/ligi/passandroid/ui/PassViewHelper;

    .line 20
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->zoomIn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatImageView;

    new-instance v3, Lorg/ligi/passandroid/ui/BarcodeUIController$1;

    invoke-direct {v3, p0}, Lorg/ligi/passandroid/ui/BarcodeUIController$1;-><init>(Lorg/ligi/passandroid/ui/BarcodeUIController;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->zoomOut:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatImageView;

    new-instance v3, Lorg/ligi/passandroid/ui/BarcodeUIController$2;

    invoke-direct {v3, p0}, Lorg/ligi/passandroid/ui/BarcodeUIController$2;-><init>(Lorg/ligi/passandroid/ui/BarcodeUIController;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->barCode:Lorg/ligi/passandroid/model/pass/BarCode;

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    const-string v3, "activity.windowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/ligi/kaxt/WindowManagerExtensionsKt;->getSmallestSide(Landroid/view/WindowManager;)I

    move-result v1

    .line 31
    .local v1, "smallestSide":I
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->barCode:Lorg/ligi/passandroid/model/pass/BarCode;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "activity.resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/ligi/passandroid/model/pass/BarCode;->getBitmap(Landroid/content/res/Resources;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 33
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 34
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->barcode_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->barcode_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "rootView.barcode_img"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :goto_0
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->barCode:Lorg/ligi/passandroid/model/pass/BarCode;

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/BarCode;->getAlternativeText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->barcode_alt_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "rootView.barcode_alt_text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->barCode:Lorg/ligi/passandroid/model/pass/BarCode;

    invoke-virtual {v3}, Lorg/ligi/passandroid/model/pass/BarCode;->getAlternativeText()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->barcode_alt_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "rootView.barcode_alt_text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    :goto_1
    div-int/lit8 v2, v1, 0x2

    invoke-direct {p0, v2}, Lorg/ligi/passandroid/ui/BarcodeUIController;->setBarCodeSize(I)V

    .line 52
    .end local v1    # "smallestSide":I
    :goto_2
    return-void

    .line 37
    .restart local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "smallestSide":I
    :cond_0
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->barcode_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "rootView.barcode_img"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 44
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->barcode_alt_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "rootView.barcode_alt_text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 49
    .end local v1    # "smallestSide":I
    :cond_2
    iget-object v3, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->passViewHelper:Lorg/ligi/passandroid/ui/PassViewHelper;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v4, Lorg/ligi/passandroid/R$id;->barcode_img:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v4, "rootView.barcode_img"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/ligi/passandroid/ui/PassViewHelper;->setBitmapSafe(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 50
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->zoomIn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatImageView;

    const-string v3, "rootView.zoomIn"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    .line 51
    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->zoomOut:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatImageView;

    const-string v3, "rootView.zoomOut"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static final synthetic access$getCurrentBarcodeWidth$p(Lorg/ligi/passandroid/ui/BarcodeUIController;)I
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/BarcodeUIController;

    .prologue
    .line 12
    iget v0, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->currentBarcodeWidth:I

    return v0
.end method

.method public static final synthetic access$getPassViewHelper$p(Lorg/ligi/passandroid/ui/BarcodeUIController;)Lorg/ligi/passandroid/ui/PassViewHelper;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/BarcodeUIController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->passViewHelper:Lorg/ligi/passandroid/ui/PassViewHelper;

    return-object v0
.end method

.method public static final synthetic access$setBarCodeSize(Lorg/ligi/passandroid/ui/BarcodeUIController;I)V
    .locals 0
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/BarcodeUIController;
    .param p1, "width"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/ui/BarcodeUIController;->setBarCodeSize(I)V

    return-void
.end method

.method public static final synthetic access$setCurrentBarcodeWidth$p(Lorg/ligi/passandroid/ui/BarcodeUIController;I)V
    .locals 0
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/BarcodeUIController;
    .param p1, "<set-?>"    # I

    .prologue
    .line 12
    iput p1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->currentBarcodeWidth:I

    return-void
.end method

.method private final setBarCodeSize(I)V
    .locals 5
    .param p1, "width"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 58
    iget-object v1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v2, Lorg/ligi/passandroid/R$id;->zoomOut:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    const-string v2, "rootView.zoomOut"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->passViewHelper:Lorg/ligi/passandroid/ui/PassViewHelper;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassViewHelper;->getFingerSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->passViewHelper:Lorg/ligi/passandroid/ui/PassViewHelper;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassViewHelper;->getWindowWidth()I

    move-result v1

    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->passViewHelper:Lorg/ligi/passandroid/ui/PassViewHelper;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassViewHelper;->getFingerSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_3

    .line 61
    iget-object v1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v2, Lorg/ligi/passandroid/R$id;->zoomIn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    const-string v2, "rootView.zoomIn"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    .line 64
    :goto_1
    iput p1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->currentBarcodeWidth:I

    .line 67
    iget-object v1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->barCode:Lorg/ligi/passandroid/model/pass/BarCode;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/BarCode;->getFormat()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->isQuadratic()Z

    move-result v0

    .line 68
    .local v0, "quadratic":Z
    iget-object v1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v2, Lorg/ligi/passandroid/R$id;->barcode_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "rootView.barcode_img"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_4

    move v3, p1

    :goto_2
    invoke-direct {v2, p1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void

    .end local v0    # "quadratic":Z
    :cond_2
    move v2, v4

    .line 58
    goto :goto_0

    .line 63
    :cond_3
    iget-object v1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v2, Lorg/ligi/passandroid/R$id;->zoomIn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatImageView;

    const-string v2, "rootView.zoomIn"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/AppCompatImageView;->setVisibility(I)V

    goto :goto_1

    .line 68
    .restart local v0    # "quadratic":Z
    :cond_4
    const/4 v3, -0x2

    goto :goto_2
.end method


# virtual methods
.method public final getBarcodeView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 14
    iget-object v0, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->barcode_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lorg/ligi/passandroid/ui/BarcodeUIController;->rootView:Landroid/view/View;

    return-object v0
.end method
