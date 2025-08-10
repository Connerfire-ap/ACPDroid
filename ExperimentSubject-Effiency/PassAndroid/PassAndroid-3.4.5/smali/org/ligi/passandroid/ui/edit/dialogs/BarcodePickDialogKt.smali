.class public final Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt;
.super Ljava/lang/Object;
.source "BarcodePickDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "showBarcodeEditDialog",
        "",
        "context",
        "Landroid/support/v7/app/AppCompatActivity;",
        "bus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "barCode",
        "Lorg/ligi/passandroid/model/pass/BarCode;",
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
.method public static final showBarcodeEditDialog(Landroid/support/v7/app/AppCompatActivity;Lorg/greenrobot/eventbus/EventBus;Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/BarCode;)V
    .locals 6
    .param p0, "context"    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bus"    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "barCode"    # Lorg/ligi/passandroid/model/pass/BarCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bus"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pass"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "barCode"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    .line 14
    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f03001f

    const/4 v4, 0x2

    invoke-static {v2, v3, v5, v4, v5}, Lorg/ligi/kaxt/ActivityExtensionsKt;->inflate$default(Landroid/app/Activity;ILandroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 16
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0, p3}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;-><init>(Landroid/view/View;Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/pass/BarCode;)V

    .line 18
    .local v0, "barcodeEditController":Lorg/ligi/passandroid/ui/edit/BarcodeEditController;
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    check-cast p0, Landroid/content/Context;

    .end local p0    # "context":Landroid/support/v7/app/AppCompatActivity;
    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 19
    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 20
    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 21
    const v4, 0x104000a

    new-instance v2, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;

    invoke-direct {v2, p2, v0, p1}, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;-><init>(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/ui/edit/BarcodeEditController;Lorg/greenrobot/eventbus/EventBus;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 26
    return-void
.end method
