.class final Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt$showColorPickDialog$1;
.super Ljava/lang/Object;
.source "ColorPickDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt;->showColorPickDialog(Landroid/content/Context;Lorg/ligi/passandroid/model/pass/Pass;Lorg/greenrobot/eventbus/EventBus;)V
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
.field final synthetic $bus:Lorg/greenrobot/eventbus/EventBus;

.field final synthetic $inflate:Landroid/view/View;

.field final synthetic $pass:Lorg/ligi/passandroid/model/pass/Pass;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt$showColorPickDialog$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt$showColorPickDialog$1;->$inflate:Landroid/view/View;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt$showColorPickDialog$1;->$bus:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .prologue
    .line 18
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt$showColorPickDialog$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt$showColorPickDialog$1;->$inflate:Landroid/view/View;

    const-string v2, "inflate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/ligi/passandroid/R$id;->colorPicker:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/larswerkman/holocolorpicker/ColorPicker;

    const-string v2, "inflate.colorPicker"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getColor()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/ligi/passandroid/model/pass/Pass;->setAccentColor(I)V

    .line 19
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt$showColorPickDialog$1;->$bus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lorg/ligi/passandroid/events/PassRefreshEvent;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt$showColorPickDialog$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-direct {v1, v2}, Lorg/ligi/passandroid/events/PassRefreshEvent;-><init>(Lorg/ligi/passandroid/model/pass/Pass;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 20
    return-void
.end method
