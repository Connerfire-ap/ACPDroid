.class final Lorg/ligi/passandroid/ui/BarcodeUIController$2;
.super Ljava/lang/Object;
.source "BarcodeUIController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/BarcodeUIController;-><init>(Landroid/view/View;Lorg/ligi/passandroid/model/pass/BarCode;Landroid/app/Activity;Lorg/ligi/passandroid/ui/PassViewHelper;)V
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/BarcodeUIController;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/BarcodeUIController;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController$2;->this$0:Lorg/ligi/passandroid/ui/BarcodeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/ligi/passandroid/ui/BarcodeUIController$2;->this$0:Lorg/ligi/passandroid/ui/BarcodeUIController;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/BarcodeUIController$2;->this$0:Lorg/ligi/passandroid/ui/BarcodeUIController;

    # getter for: Lorg/ligi/passandroid/ui/BarcodeUIController;->currentBarcodeWidth:I
    invoke-static {v1}, Lorg/ligi/passandroid/ui/BarcodeUIController;->access$getCurrentBarcodeWidth$p(Lorg/ligi/passandroid/ui/BarcodeUIController;)I

    move-result v1

    iget-object v2, p0, Lorg/ligi/passandroid/ui/BarcodeUIController$2;->this$0:Lorg/ligi/passandroid/ui/BarcodeUIController;

    # getter for: Lorg/ligi/passandroid/ui/BarcodeUIController;->passViewHelper:Lorg/ligi/passandroid/ui/PassViewHelper;
    invoke-static {v2}, Lorg/ligi/passandroid/ui/BarcodeUIController;->access$getPassViewHelper$p(Lorg/ligi/passandroid/ui/BarcodeUIController;)Lorg/ligi/passandroid/ui/PassViewHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassViewHelper;->getFingerSize()I

    move-result v2

    sub-int/2addr v1, v2

    # invokes: Lorg/ligi/passandroid/ui/BarcodeUIController;->setBarCodeSize(I)V
    invoke-static {v0, v1}, Lorg/ligi/passandroid/ui/BarcodeUIController;->access$setBarCodeSize(Lorg/ligi/passandroid/ui/BarcodeUIController;I)V

    .line 26
    return-void
.end method
