.class final Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;
.super Ljava/lang/Object;
.source "BarcodePickDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt;->showBarcodeEditDialog(Landroid/support/v7/app/AppCompatActivity;Lorg/greenrobot/eventbus/EventBus;Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/BarCode;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
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
.field final synthetic $barcodeEditController:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

.field final synthetic $bus:Lorg/greenrobot/eventbus/EventBus;

.field final synthetic $pass:Lorg/ligi/passandroid/model/pass/Pass;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/ui/edit/BarcodeEditController;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;->$barcodeEditController:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;->$bus:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;->$barcodeEditController:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ligi/passandroid/model/pass/Pass;->setBarCode(Lorg/ligi/passandroid/model/pass/BarCode;)V

    .line 23
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;->$bus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lorg/ligi/passandroid/events/PassRefreshEvent;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt$showBarcodeEditDialog$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-direct {v1, v2}, Lorg/ligi/passandroid/events/PassRefreshEvent;-><init>(Lorg/ligi/passandroid/model/pass/Pass;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 24
    return-void
.end method
