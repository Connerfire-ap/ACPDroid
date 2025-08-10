.class final Lorg/ligi/passandroid/ui/edit/BarcodeEditController$2;
.super Ljava/lang/Object;
.source "BarcodeEditController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/BarcodeEditController;-><init>(Landroid/view/View;Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/pass/BarCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/edit/BarcodeEditController;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$2;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 67
    new-instance v0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$2;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->getIntentFragment$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 69
    .local v0, "barCodeIntentIntegrator":Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$2;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->getBarcodeFormat()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v1

    sget-object v2, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->QR_CODE:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->QR_CODE_TYPES:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->initiateScan(Ljava/util/Collection;)Landroid/support/v7/app/AlertDialog;

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$2;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->getBarcodeFormat()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->initiateScan(Ljava/util/Collection;)Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
