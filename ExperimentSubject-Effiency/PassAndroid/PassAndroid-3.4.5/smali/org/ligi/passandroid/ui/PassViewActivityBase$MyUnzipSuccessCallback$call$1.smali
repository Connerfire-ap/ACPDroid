.class final Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;
.super Ljava/lang/Object;
.source "PassViewActivityBase.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->call(Ljava/lang/String;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $uuid:Ljava/lang/String;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 228
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    # getter for: Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->dlg:Landroid/app/Dialog;
    invoke-static {v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->access$getDlg$p(Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 232
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v1

    invoke-interface {v1}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->$uuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v1

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/ligi/passandroid/model/PassStore;->deletePassWithId(Ljava/lang/String;)Z

    .line 235
    :cond_1
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v1

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->$uuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/ligi/passandroid/model/PassStore;->getPassbookForId(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    .line 236
    .local v0, "newPass":Lorg/ligi/passandroid/model/pass/Pass;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/ligi/passandroid/model/PassStore;->setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 237
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 238
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->refresh()V

    .line 240
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback$call$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070088

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    goto/16 :goto_0
.end method
