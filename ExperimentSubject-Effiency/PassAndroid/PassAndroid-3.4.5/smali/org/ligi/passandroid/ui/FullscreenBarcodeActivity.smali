.class public final Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;
.super Lorg/ligi/passandroid/ui/PassViewActivityBase;
.source "FullscreenBarcodeActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0004H\u0014J\u0008\u0010\t\u001a\u00020\u0004H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;",
        "Lorg/ligi/passandroid/ui/PassViewActivityBase;",
        "()V",
        "onAttachedToWindow",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "setBestFittingOrientationForBarCode",
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
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;-><init>()V

    return-void
.end method

.method private final setBestFittingOrientationForBarCode()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    invoke-interface {v0}, Lorg/ligi/passandroid/model/pass/Pass;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/BarCode;->getFormat()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->isQuadratic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getRequestedOrientation()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/ligi/kaxt/ActivityExtensionsKt;->lockOrientation(Landroid/app/Activity;I)V

    .line 71
    :goto_0
    :sswitch_0
    return-void

    .line 63
    :cond_2
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getRequestedOrientation()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 70
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/ligi/kaxt/ActivityExtensionsKt;->lockOrientation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch

    .line 63
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->setContentView(I)V

    .line 18
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->onResume()V

    .line 23
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    invoke-interface {v0}, Lorg/ligi/passandroid/model/pass/Pass;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    const-string v0, "FullscreenBarcodeActivity in bad state"

    invoke-static {v0}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->finish()V

    .line 37
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->setBestFittingOrientationForBarCode()V

    .line 30
    sget v0, Lorg/ligi/passandroid/R$id;->fullscreen_barcode:I

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v1

    invoke-interface {v1}, Lorg/ligi/passandroid/model/pass/Pass;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/model/pass/BarCode;->getBitmap(Landroid/content/res/Resources;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    invoke-interface {v0}, Lorg/ligi/passandroid/model/pass/Pass;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/BarCode;->getAlternativeText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 33
    sget v0, Lorg/ligi/passandroid/R$id;->alternativeBarcodeText:I

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "alternativeBarcodeText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    sget v0, Lorg/ligi/passandroid/R$id;->alternativeBarcodeText:I

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "alternativeBarcodeText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v1

    invoke-interface {v1}, Lorg/ligi/passandroid/model/pass/Pass;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/BarCode;->getAlternativeText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_5
    sget v0, Lorg/ligi/passandroid/R$id;->alternativeBarcodeText:I

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/FullscreenBarcodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "alternativeBarcodeText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
